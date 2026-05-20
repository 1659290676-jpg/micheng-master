#!/usr/bin/python3
# -*- coding: utf-8 -*-

import os
import shutil
import time

from dataclasses import dataclass
from typing import Optional, Tuple


@dataclass(frozen=True)
class ApkResult:
    code: int
    out_dir: str

import run_cmd
import config


# 清空目录
def clear_folder(folder_path):
    """
    清空文件夹里所有内容，但保留文件夹本身
    """
    if not os.path.exists(folder_path):
        os.makedirs(folder_path)
        return
    
    # 遍历删除所有内容
    for filename in os.listdir(folder_path):
        file_path = os.path.join(folder_path, filename)
        try:
            # 删除文件
            if os.path.isfile(file_path) or os.path.islink(file_path):
                os.unlink(file_path)
            # 删除文件夹
            elif os.path.isdir(file_path):
                shutil.rmtree(file_path)
        
        except Exception as e:
            print(f"删除失败 {file_path}: {e}")

# 构建安卓安装包
def do_android_apk(buildParams, packageData) -> ApkResult:
    publish_dir = buildParams.workdir + "/" + config.publish_dir_name
    project_path = os.path.join(publish_dir, config.android_relative_path)
    if not os.path.exists(project_path):
        print("安卓工程路径不存在！！！~~~~~~~~~~~~~~~~~~~")
        return ApkResult(code=1, out_dir="")
    print("======================开始构建 Android APK==========================")
    # 构建安卓安装包
    pf_package = packageData.get("pf_package", "")
    pf_name = packageData.get("pf_name", "")
    pf_appname = packageData.get("pf_appname", "")
    pf_keystore = packageData.get("pf_keystore", "")
    pf_sign_pwd = packageData.get("pf_sign_pwd", "")
    pf_sign_alias = packageData.get("pf_sign_alias", "")
    pf_sign_alias_pwd = packageData.get("pf_sign_alias_pwd", "")
    pf_keystore_ext = packageData.get("pf_keystore_ext", "")
    pf_title = packageData.get("pf_title", "")
    pf_sdk = packageData.get("pf_sdk","")
    pf_targetSdk = packageData.get("pf_targetSdk", "")
    pf_minSdk = packageData.get("pf_minSdk", "")
    pf_compileSdk = packageData.get("pf_compileSdk", "")
    
    project_name = buildParams.project.lower()
    buildid = buildParams.buildid
    appVersion = buildParams.appVersion
    startTime = buildParams.startTime
    isAab = buildParams.isAab

    export_dir_name = "#"+str(buildid) + "_" + project_name + "_" + pf_title + "_" + str(startTime)
    export_app_dir = publish_dir + "/" + config.export_app_dir_name
    clear_folder(export_app_dir)
    export_dir = export_app_dir + "/" + export_dir_name

    # 进入工程目录
    os.chdir(project_path)
    # 使用 gradlew.bat 构建安卓安装包
    cmdList = [
        "gradlew.bat",
        "clean",
        ":app:exportRelease",
        f"-PVERSION_NAME={appVersion}",
        f"-PPACKAGE_NAME={pf_package}",
        f"-PPF_TITLE={pf_title}",
        f"-PPATH_OUT={export_dir}",
        f"-PPROJECT_NAME={project_name}",
        f"-PPF_SDK={pf_sdk}",
        f"-PIS_AAB={isAab}",
        f"-PSTART_TIME={startTime}",
    ]
    if pf_keystore != "":
        cmdList.append(f"-PSIGN_STORE={pf_keystore}")
    if pf_sign_pwd != "":
        cmdList.append(f"-PSIGN_PWD={pf_sign_pwd}")
    if pf_sign_alias != "":
        cmdList.append(f"-PSIGN_ALIAS={pf_sign_alias}")
    if pf_sign_alias_pwd != "":
        cmdList.append(f"-PSIGN_ALIAS_PWD={pf_sign_alias_pwd}")
    if pf_keystore_ext != "":
        cmdList.append(f"-PKEY_STORE_EXT={pf_keystore_ext}")
    if pf_targetSdk != "":
        cmdList.append(f"-PTARGET_SDK_VERSION={pf_targetSdk}")
    if pf_minSdk != "":
        cmdList.append(f"-PMIN_SDK_VERSION={pf_minSdk}")
    if pf_compileSdk != "":
        cmdList.append(f"-PCOMPILE_SDK_VERSION={pf_compileSdk}")
    
    return_code,_ = run_cmd.runCommand(cmdList)
    if return_code != 0:
        print("======================构建 Android APK 失败==========================")
        return ApkResult(code=1, out_dir=export_dir)
    print("======================构建 Android APK 成功==========================")
    return ApkResult(code=0, out_dir=export_dir)