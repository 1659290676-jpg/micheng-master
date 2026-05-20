#!/usr/bin/python3
# -*- coding: utf-8 -*-

import argparse
import os
import time
import zipfile
from dataclasses import dataclass
from typing import Optional, Tuple
import hashlib


@dataclass(frozen=True)
class ZipResult:
    zip_path: str
    zip_dir: str
    zip_name: str


def _default_zip_name(target_path: str) -> str:
    base = os.path.basename(os.path.abspath(target_path).rstrip("\\/")) or "archive"
    ts = time.strftime("%Y%m%d_%H%M%S")
    return f"{base}_{ts}.zip"

# 生成zip文件的md5 文件名:文件名.md5
def _default_zip_md5(target_path: str) -> str:
    md5 = hashlib.md5()
    with open(target_path, "rb") as f:
        while True:
            data = f.read(8192)
            if not data:
                break
            md5.update(data)
    md5_value = md5.hexdigest()
    # 保存md5_value到文件
    # 文件名:target_path去掉扩展名,加上.md5
    target_path_no_ext = os.path.splitext(target_path)[0]
    md5_file_name = f"{target_path_no_ext}.md5"
    with open(md5_file_name, "w", encoding="utf-8") as f:
        f.write(md5_value)



def zip_path(
    target_path: str,
    out_dir: Optional[str] = None,
    zip_name: Optional[str] = None,
    arc_root: Optional[str] = None,
    *,
    overwrite: bool = True,
) -> ZipResult:
    """
    将 target_path 下所有文件递归压缩到 zip。

    - target_path: 目标目录（或单个文件）
    - out_dir: zip 输出目录；不传则输出到 target_path 的父目录
    - zip_name: zip 文件名；不传则自动生成：<目标名>_YYYYmmdd_HHMMSS.zip
    - arc_root: 压缩包内的目录头路径（例如 "pixel/" 或 "cdn/pixel"）
      - 不传则不添加目录头（zip 内部直接使用相对路径）
      - 会自动将 "\\" 转成 "/"，并去掉前导 "/"，去掉末尾多余 "/"
    - overwrite: True 时若已存在同名 zip 则覆盖

    返回 ZipResult(zip_path, zip_dir, zip_name)
    """
    if not target_path:
        raise ValueError("target_path 不能为空")

    target_path = os.path.abspath(target_path)
    if not os.path.exists(target_path):
        raise FileNotFoundError(target_path)

    if out_dir is None or out_dir == "":
        out_dir = os.path.dirname(target_path)
    out_dir = os.path.abspath(out_dir)
    os.makedirs(out_dir, exist_ok=True)

    if zip_name is None or zip_name == "":
        zip_name = _default_zip_name(target_path)
    if not zip_name.lower().endswith(".zip"):
        zip_name += ".zip"

    zip_path_full = os.path.join(out_dir, zip_name)
    if os.path.exists(zip_path_full):
        if overwrite:
            os.remove(zip_path_full)
        else:
            raise FileExistsError(zip_path_full)

    def _norm_arc_root(v: str) -> str:
        v = (v or "").replace("\\", "/").strip()
        v = v.lstrip("/")
        v = v.rstrip("/")
        return v

    arc_root_norm = _norm_arc_root(arc_root or "")
    # 注意：zip 内部路径统一用 "/"，并且以 target_path 为根生成相对路径
    with zipfile.ZipFile(zip_path_full, "w", compression=zipfile.ZIP_DEFLATED) as zf:
        base_dir_name = arc_root_norm
        if os.path.isfile(target_path):
            arcname = os.path.basename(target_path)
            if base_dir_name:
                arcname = (base_dir_name + "/" + arcname).replace("\\", "/")
            zf.write(target_path, arcname=arcname)
        else:
            root_dir = target_path
            for root, _, files in os.walk(root_dir):
                for name in files:
                    abs_file = os.path.join(root, name)
                    rel_file = os.path.relpath(abs_file, root_dir)
                    rel_file = rel_file.replace("\\", "/")
                    arcname = rel_file if not base_dir_name else f"{base_dir_name}/{rel_file}"
                    zf.write(abs_file, arcname=arcname)

    # 生成zip文件的md5
    _default_zip_md5(zip_path_full)

    return ZipResult(zip_path=zip_path_full, zip_dir=out_dir, zip_name=zip_name)


def main(argv: Optional[list] = None) -> int:
    parser = argparse.ArgumentParser(description="递归压缩目录/文件为 zip")
    parser.add_argument("-t", "--target", required=True, help="目标目录或文件路径")
    parser.add_argument("-o", "--out-dir", default="", help="zip 输出目录（默认 target 的父目录）")
    parser.add_argument("-n", "--name", default="", help="zip 文件名（默认自动生成）")
    parser.add_argument("-a","--arc-root", default="", help="压缩包内的目录头路径（默认不添加）")
    parser.add_argument("-O","--no-overwrite", action="store_true", help="若 zip 已存在则报错，不覆盖")
    args = parser.parse_args(argv)

    res = zip_path(
        target_path=args.target,
        out_dir=(args.out_dir or None),
        zip_name=(args.name or None),
        arc_root=(args.arc_root or None),
        overwrite=(not args.no_overwrite),
    )

    print("zip_dir:", res.zip_dir)
    print("zip_name:", res.zip_name)
    print("zip_path:", res.zip_path)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())