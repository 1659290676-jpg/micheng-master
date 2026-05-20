#!/usr/bin/python3
# -*- coding: utf-8 -*-

import sys
import subprocess
import os

# 封装运行命令，执行完成返回结果，打印输出，等待执行完成才下一步
def runCommand(command):
    print("--------------------------------")
    print(f"开始执行命令：{' '.join(command)}")
    # 存储所有输出日志
    full_output = []
    process = subprocess.Popen(
        command,
        shell=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,  # 错误也一起输出
        encoding="utf-8",
        bufsize=1,                # 行缓冲，实时输出
        universal_newlines=True
    )
    # 逐行实时打印
    for line in iter(process.stdout.readline, ""):
        if line:
            sys.stdout.write(line)
            sys.stdout.flush()  # 强制刷新，不延迟
            full_output.append(line)

    process.stdout.close()
    return_code = process.wait()
    print(f"命令执行完成，返回码：{return_code}")
    print("--------------------------------")
    return return_code, full_output

# 使用call命令运行命令，执行完成返回结果，打印输出，等待执行完成才下一步
def runCommandWithCall(command):
    print("--------------------------------")
    print(f"开始执行命令：{command}")
    return_code = subprocess.call(command, shell=True)
    print(f"命令执行完成，返回码：{return_code}")
    print("--------------------------------")
    return return_code