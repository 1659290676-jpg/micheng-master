#!/usr/bin/python3
# -*- coding: utf-8 -*-

import base64

def str_to_base64(input_str: str, encoding: str = "utf-8") -> str:
    """
    将字符串转换为 Base64 编码字符串
    :param input_str: 待转换的原始字符串
    :param encoding: 字符编码，默认 utf-8（支持中文）
    :return: Base64 编码后的字符串
    """
    # 1. 字符串 → 字节串（必须先编码）
    str_bytes = input_str.encode(encoding)
    # 2. 字节串 → Base64 字节串
    base64_bytes = base64.b64encode(str_bytes)
    # 3. Base64 字节串 → 字符串（返回结果）
    base64_str = base64_bytes.decode(encoding)
    return base64_str

def base64_to_str(base64_str: str, encoding: str = "utf-8") -> str:
    """
    将 Base64 字符串解码回原始字符串
    :param base64_str: Base64 编码字符串
    :param encoding: 字符编码，默认 utf-8
    :return: 原始字符串
    """
    # 1. Base64 字符串 → 字节串
    base64_bytes = base64_str.encode(encoding)
    # 2. Base64 字节串 → 原始字节串
    str_bytes = base64.b64decode(base64_bytes)
    # 3. 原始字节串 → 字符串
    original_str = str_bytes.decode(encoding)
    return original_str