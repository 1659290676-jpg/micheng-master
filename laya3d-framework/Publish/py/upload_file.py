#!/usr/bin/python3
# -*- coding: utf-8 -*-

"""
使用 Windows robocopy 将本地目录或指定文件复制到共享目录（UNC）。
robocopy 退出码 < 8 视为成功（含仅拷贝部分文件等情况）。
"""

import os
import shutil
import subprocess
from typing import List, Optional, Tuple


def _norm_win_path(path: str) -> str:
    if not path:
        return path
    path = path.replace("/", "\\").strip()
    return os.path.normpath(path)


def _robocopy_success(code: int) -> bool:
    # Bit 3 (8)：拷贝出错视为失败；>=16 为严重错误
    return code < 8


def uploadfile(
    src: str,
    dst: str,
    *,
    files: Optional[List[str]] = None,
    mirror: bool = False,
    clean_dest: bool = False,
    retries: int = 3,
    wait_sec: int = 5,
    subprocess_kwargs: Optional[dict] = None,
) -> Tuple[bool, int]:
    """
    使用 robocopy 复制到共享目录。

    :param src: 源目录（须存在）
    :param dst: 目标目录（不存在时 robocopy 会创建）
    :param files: 若为空则递归复制整个目录树（/E）；否则仅复制列出的文件名/通配符（相对 src 根）
                 例如 [\"*.apk\", \"*.aab\"] 仅拷贝根目录下匹配的包
    :param mirror: True 时使用 /MIR 镜像（会删除目标中源里没有的文件，慎用）
    :param clean_dest: True 时先删除整个目标目录再复制（与原先 shutil+rmtree+copyDir 行为一致）
    :param retries: /R 失败重试次数
    :param wait_sec: /W 重试间隔秒
    :param subprocess_kwargs: 传给 subprocess.run 的额外参数（如 cwd、encoding）
    :return: (是否成功, robocopy 退出码)
    """
    src_n = _norm_win_path(src)
    dst_n = _norm_win_path(dst)

    if not os.path.isdir(src_n):
        raise ValueError("uploadfile: 源路径不存在或不是目录：{}".format(src_n))

    if clean_dest:
        if os.path.exists(dst_n):
            shutil.rmtree(dst_n)
        os.makedirs(dst_n)

    cmd: List[str] = ["robocopy", src_n, dst_n]
    if files:
        cmd.extend(files)
    else:
        cmd.append("/E")

    if mirror:
        cmd.append("/MIR")

    cmd.extend(
        [
            "/COPY:DAT",
            "/R:{}".format(int(retries)),
            "/W:{}".format(int(wait_sec)),
            "/NP",
            "/NDL",
            "/NJH",
            "/NJS",
        ]
    )

    kw = {"shell": False}
    if subprocess_kwargs:
        kw.update(subprocess_kwargs)

    proc = subprocess.run(cmd, **kw)
    code = proc.returncode if proc.returncode is not None else -1
    ok = _robocopy_success(code)
    return ok, code


def uploadfile_or_raise(src: str, dst: str, **kwargs) -> None:
    """与 uploadfile 相同，失败时抛出 RuntimeError。"""
    ok, code = uploadfile(src, dst, **kwargs)
    if not ok:
        raise RuntimeError("robocopy 失败，退出码={}，src={} dst={}".format(code, src, dst))
