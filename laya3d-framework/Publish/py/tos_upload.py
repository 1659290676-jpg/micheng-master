#!/usr/bin/python3
# -*- coding: utf-8 -*-

"""
TOS 批量上传脚本（Python 3.7）。

设计约定：
- 远端对象 key 统一使用 "/" 分隔（即使在 Windows 本地路径是 "\\"）。
- 上传目录时，默认会保留相对路径结构：object_key = prefix + 相对路径
- 默认行为：同名 object_key 会直接覆盖（TOS put_object/put_object_from_file 语义）。
- include/exclude 使用 `fnmatch` 规则匹配“相对路径”（已转换为 "/"），例如：
  - **/*.png
  - **/.svn/**
"""

import argparse
import fnmatch
import os
import sys
import threading
import time
from concurrent.futures import ThreadPoolExecutor, as_completed
from dataclasses import dataclass
from typing import Any, Callable, Iterable, List, Optional, Tuple


def _import_tos() -> Tuple[Any, Any, Any]:
    """
    延迟导入 tos 依赖，避免在仅 import 本模块时就触发三方库兼容性报错。
    """
    import tos  # type: ignore
    from tos.exceptions import TosClientError, TosServerError  # type: ignore

    return tos, TosClientError, TosServerError


@dataclass(frozen=True)
class UploadItem:
    local_path: str
    object_key: str
    size: int


@dataclass(frozen=True)
class UploadResult:
    ok: int
    skipped: int
    failed: int
    total: int


def _norm_prefix(prefix: str) -> str:
    # TOS 对象 key 的“目录前缀”建议以 "/" 结尾；这里做一次统一化，避免拼接出错。
    if not prefix:
        return ""
    prefix = prefix.replace("\\", "/")
    prefix = prefix.lstrip("/")
    if prefix and not prefix.endswith("/"):
        prefix += "/"
    return prefix


def _to_object_key(prefix: str, rel_path: str) -> str:
    # 关键点：rel_path 来自本地相对路径，需转成 "/"，并去掉前导 "/"，避免产生绝对 key。
    rel_path = rel_path.replace("\\", "/").lstrip("/")
    return f"{_norm_prefix(prefix)}{rel_path}"


def _should_include(rel_path: str, includes: List[str], excludes: List[str]) -> bool:
    rel_path = rel_path.replace("\\", "/")
    if excludes:
        for p in excludes:
            if fnmatch.fnmatch(rel_path, p):
                return False
    if not includes:
        return True
    for p in includes:
        if fnmatch.fnmatch(rel_path, p):
            return True
    return False


def _iter_files(src: str, recursive: bool) -> Iterable[Tuple[str, str]]:
    """
    返回 (abs_path, rel_path)。

    - src 是文件：rel_path 取文件名（basename）
    - src 是目录：
      - recursive=True：遍历所有子目录
      - recursive=False：只取第一层文件（忽略子目录）
    """
    src = os.path.abspath(src)
    if os.path.isfile(src):
        yield src, os.path.basename(src)
        return

    if recursive:
        for root, _, files in os.walk(src):
            for name in files:
                abs_path = os.path.join(root, name)
                rel_path = os.path.relpath(abs_path, src)
                yield abs_path, rel_path
    else:
        for name in os.listdir(src):
            abs_path = os.path.join(src, name)
            if os.path.isfile(abs_path):
                yield abs_path, name


def _build_upload_list(
    src: str,
    prefix: str,
    recursive: bool,
    includes: List[str],
    excludes: List[str],
) -> List[UploadItem]:
    items: List[UploadItem] = []
    for abs_path, rel_path in _iter_files(src, recursive=recursive):
        if not _should_include(rel_path, includes=includes, excludes=excludes):
            continue
        try:
            size = os.path.getsize(abs_path)
        except OSError:
            continue
        key = _to_object_key(prefix, rel_path)
        items.append(UploadItem(local_path=abs_path, object_key=key, size=size))
    return items


def _exists_object(client: Any, bucket: str, key: str) -> bool:
    # skip-existing 的实现选择用 HEAD：实现简单、单对象判断成本可控。
    # 注意：对大量小文件会增加额外请求次数（每个文件一次 HEAD）。
    try:
        client.head_object(bucket, key)
        return True
    except Exception as e:
        # TosServerError 是运行时导入；这里用属性判断保持兼容
        if getattr(e, "status_code", None) == 404:
            return False
        raise


def _upload_one(
    client: Any,
    bucket: str,
    item: UploadItem,
    skip_existing: bool,
    retry: int,
    retry_sleep: float,
) -> None:
    # 重试策略：线性退避（retry_sleep * attempt），兼顾简单性与一定的抖动空间。
    last_err: Optional[BaseException] = None
    for attempt in range(1, retry + 2):
        try:
            if skip_existing and _exists_object(client, bucket, item.object_key):
                return
            client.put_object_from_file(bucket, item.object_key, item.local_path)
            return
        except Exception as e:
            # 这里捕获 tos 的异常与本地 IO 异常；具体类型在运行时由 SDK 抛出
            last_err = e
            if attempt >= retry + 1:
                break
            time.sleep(retry_sleep * attempt)
    assert last_err is not None
    raise last_err


def upload_batch(
    *,
    ak: str,
    sk: str,
    endpoint: str,
    region: str,
    bucket: str,
    src: str,
    prefix: str = "",
    recursive: bool = False,
    workers: int = 8,
    overwrite: bool = True,
    retry: int = 2,
    retry_sleep: float = 0.5,
    includes: Optional[List[str]] = None,
    excludes: Optional[List[str]] = None,
    dry_run: bool = False,
    logger: Optional[Callable[[str], None]] = print,
    client: Optional[Any] = None,
) -> UploadResult:
    """
    提供给外部脚本直接调用的上传入口（不依赖命令行参数）。

    参数说明：
    - ak/sk: 火山引擎 AK/SK
    - endpoint: TOS endpoint，例如 "tos-cn-hongkong.volces.com"
    - region: TOS region，例如 "cn-hongkong"
    - bucket: 桶名
    - src: 本地文件或目录路径
    - prefix: 上传到桶内的 key 前缀（相当于“目录”）；会自动规范化为不以 "/" 开头、以 "/" 结尾
    - recursive: True=递归遍历 src 目录；False=只上传第一层文件
    - workers: 并发线程数（ThreadPoolExecutor）
    - overwrite:
      - True（默认）：同名 object_key 直接覆盖（put_object_from_file 语义）
      - False：已存在则跳过（会对每个对象额外发起一次 HEAD 请求）
    - retry: 上传失败后的重试次数（不包含首次尝试）
    - retry_sleep: 重试基础等待秒数；实际等待为 retry_sleep * attempt（线性退避）
    - includes/excludes:
      - 作用于“相对路径”（已统一成 "/" 分隔），匹配规则为 fnmatch（如 "**/*.png"）
      - excludes 优先生效；includes 为空表示全部包含
    - dry_run: True=只打印将上传的文件与目标 key，不实际上传
    - logger: 日志输出函数；传 None 可静默
    - client:
      - 可选：外部传入已创建的 tos.TosClientV2 以便复用连接
      - 不传：函数内部创建 client，并在结束时自动 close
    """
    includes = list(includes or [])
    excludes = list(excludes or [])

    if not ak or not sk or not endpoint or not region or not bucket:
        raise ValueError("缺少必要参数：ak/sk/endpoint/region/bucket")

    items = _build_upload_list(
        src=src,
        prefix=prefix,
        recursive=bool(recursive),
        includes=includes,
        excludes=excludes,
    )

    if not items:
        if logger:
            logger("没有找到可上传的文件。")
        return UploadResult(ok=0, skipped=0, failed=0, total=0)

    if dry_run:
        if logger:
            for it in items:
                logger(f"[DRY] {it.local_path} -> {bucket}/{it.object_key}")
            logger(f"[DRY] 总计 {len(items)} 个文件")
        return UploadResult(ok=0, skipped=0, failed=0, total=len(items))

    tos, _, _ = _import_tos()

    owned_client = False
    if client is None:
        client = tos.TosClientV2(ak=ak, sk=sk, endpoint=endpoint, region=region)
        owned_client = True

    ok = 0
    skipped = 0
    failed = 0
    lock = threading.Lock()

    def _log(msg: str) -> None:
        if logger:
            logger(msg)

    def task(it: UploadItem) -> Tuple[str, UploadItem, Optional[str]]:
        try:
            if (not overwrite) and _exists_object(client, bucket, it.object_key):
                return "skipped", it, None
            _upload_one(
                client=client,
                bucket=bucket,
                item=it,
                skip_existing=False,
                retry=int(retry),
                retry_sleep=float(retry_sleep),
            )
            return "ok", it, None
        except Exception as e:
            return "failed", it, str(e)

    try:
        with ThreadPoolExecutor(max_workers=max(1, int(workers))) as ex:
            futures = [ex.submit(task, it) for it in items]
            for f in as_completed(futures):
                status, it, err = f.result()
                with lock:
                    if status == "ok":
                        ok += 1
                        _log(f"[OK] {it.local_path} -> {bucket}/{it.object_key}")
                    elif status == "skipped":
                        skipped += 1
                        _log(f"[SKIP] {it.local_path} -> {bucket}/{it.object_key}")
                    else:
                        failed += 1
                        _log(f"[FAIL] {it.local_path} -> {bucket}/{it.object_key}\n  {err}")
    finally:
        if owned_client:
            try:
                client.close()
            except Exception:
                pass

    if logger:
        logger(f"完成：OK={ok}, SKIP={skipped}, FAIL={failed}, TOTAL={len(items)}")
    return UploadResult(ok=ok, skipped=skipped, failed=failed, total=len(items))


def main(argv: List[str]) -> int:
    parser = argparse.ArgumentParser(description="批量上传文件到火山引擎 TOS 存储桶（Python 3.7）")
    parser.add_argument("-a","--ak", default=os.getenv("TOS_AK", ""), help="AccessKey（也可用环境变量 TOS_AK）")
    parser.add_argument("-s","--sk", default=os.getenv("TOS_SK", ""), help="SecretKey（也可用环境变量 TOS_SK）")
    parser.add_argument("-e","--endpoint", default=os.getenv("TOS_ENDPOINT", ""), help="Endpoint，例如 tos-cn-beijing.volces.com")
    parser.add_argument("-r","--region", default=os.getenv("TOS_REGION", ""), help="Region，例如 cn-beijing")
    parser.add_argument("-b","--bucket", default=os.getenv("TOS_BUCKET", ""), help="Bucket 名称（也可用环境变量 TOS_BUCKET）")

    parser.add_argument("-i","--src", required=True, help="本地文件或目录路径")
    parser.add_argument("-p","--prefix", default="", help="上传到桶里的 key 前缀（相当于目录）")
    parser.add_argument("-R","--recursive", action="store_true", help="递归上传目录（默认仅上传第一层文件）")

    parser.add_argument("-w","--workers", type=int, default=8, help="并发线程数（默认 8）")
    overwrite_group = parser.add_mutually_exclusive_group()
    overwrite_group.add_argument(
        "-o","--overwrite",
        dest="overwrite",
        action="store_true",
        help="覆盖同名对象（默认行为）",
    )
    overwrite_group.add_argument(
        "--no-overwrite",
        "--skip-existing",
        dest="overwrite",
        action="store_false",
        help="对象已存在则跳过（不覆盖；每个文件会额外发起一次 HEAD 请求）",
    )
    parser.set_defaults(overwrite=True)
    parser.add_argument("-t","--retry", type=int, default=2, help="失败重试次数（默认 2）")
    parser.add_argument("-l","--retry-sleep", type=float, default=0.5, help="重试基础等待秒数（默认 0.5）")

    parser.add_argument(
        "--include",
        action="append",
        default=[],
        help="包含匹配（可重复），例如 --include \"**/*.png\"；为空表示全包含",
    )
    parser.add_argument(
        "--exclude",
        action="append",
        default=[],
        help="排除匹配（可重复），例如 --exclude \"**/.svn/**\"",
    )
    parser.add_argument("-d","--dry-run", action="store_true", help="仅打印将上传的文件，不实际上传")

    args = parser.parse_args(argv)

    if not args.ak or not args.sk or not args.endpoint or not args.region or not args.bucket:
        print("缺少必要参数：--ak/--sk/--endpoint/--region/--bucket（或对应环境变量）")
        return 2

    res = upload_batch(
        ak=args.ak,
        sk=args.sk,
        endpoint=args.endpoint,
        region=args.region,
        bucket=args.bucket,
        src=args.src,
        prefix=args.prefix,
        recursive=bool(args.recursive),
        workers=int(args.workers),
        overwrite=bool(args.overwrite),
        retry=int(args.retry),
        retry_sleep=float(args.retry_sleep),
        includes=list(args.include or []),
        excludes=list(args.exclude or []),
        dry_run=bool(args.dry_run),
        logger=print,
    )
    return 0 if res.failed == 0 else 1


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
