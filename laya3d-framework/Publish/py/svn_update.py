# -*- coding: utf-8 -*-
import sys
import io
sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding="utf-8")

import subprocess
import os
import argparse
from typing import List

def check_svn_conflict(svn_dir: str) -> List[str]:
    """
    仅通过 svn st 检测【冲突文件（C）】，返回冲突文件列表
    :return: 冲突文件列表（空=无冲突）
    """
    st_cmd = ["svn", "st", svn_dir]
    try:
        result = subprocess.run(
            st_cmd,
            capture_output=True,
            text=True,
            encoding="utf-8"
        )
        conflict_files = []
        # 只提取状态为 C（冲突）的文件
        for line in (result.stdout + result.stderr).splitlines():
            line = line.strip()
            if line.startswith("C "):
                conflict_files.append(line[2:].strip())
        return conflict_files

    except FileNotFoundError:
        print("错误：未找到SVN命令，请安装并配置环境变量！")
        sys.exit(4)
    except Exception as e:
        print(f"冲突检测失败：{str(e)}")
        sys.exit(2)

def resolve_conflict(conflict_files: List[str]):
    """
    执行 svn revert 解决冲突
    失败直接退出（不更新），成功继续流程
    """
    print(f"发现 {len(conflict_files)} 个冲突文件，正在解决...")
    revert_cmd = ["svn", "revert"] + conflict_files
    try:
        result = subprocess.run(revert_cmd, capture_output=True, text=True, encoding="utf-8")
        if result.returncode == 0:
            print("冲突解决成功！")
        else:
            print(f"冲突解决失败，终止更新！错误：{result.stderr}")
            sys.exit(3)
    except Exception as e:
        print(f"冲突解决异常，终止更新！错误：{str(e)}")
        sys.exit(3)

def svn_update(svn_dir: str):
    """执行更新，成功退出0，失败退出5"""
    print(f"开始更新目录：{svn_dir}")
    update_cmd = ["svn", "update", svn_dir]
    result = subprocess.run(update_cmd, capture_output=True, text=True, encoding="utf-8")
    
    print("=== SVN 更新日志 ===")
    print(result.stdout + result.stderr)
    print("="*20)

    if result.returncode == 0:
        print("更新完成！")
        sys.exit(0)
    else:
        print("更新失败！")
        sys.exit(5)

if __name__ == "__main__":
    # 定义路径标识参数：-d/--dir 必须传入SVN路径
    parser = argparse.ArgumentParser(description="SVN自动解决冲突并更新（解决失败不更新）")
    parser.add_argument("-d", "--dir", required=True, help="要更新的SVN工作副本目录（必填）")
    args = parser.parse_args()

    # 获取标识传入的路径
    target_dir = args.dir

    # 目录校验
    if not os.path.isdir(target_dir):
        print(f"错误：目录【{target_dir}】不存在！")
        sys.exit(1)

    # 核心：先检测冲突
    conflict_list = check_svn_conflict(target_dir)

    # 有冲突 → 解决，解决失败不更新
    if conflict_list:
        resolve_conflict(conflict_list)

    # 无冲突 / 冲突解决成功 → 才执行更新
    svn_update(target_dir)