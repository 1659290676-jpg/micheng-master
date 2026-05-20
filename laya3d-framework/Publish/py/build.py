#!/usr/bin/python3
# -*- coding: utf-8 -*-

import sys
import io
from optparse import OptionParser
from optparse import Values
import xml.dom.minidom
import os
import argparse
from typing import List
import math
import time
import shutil

import run_cmd
import build_apk
import config
import base64_utils
import zip_file
import tos_upload
import upload_file

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding="utf-8")

def fomatOperPara(mode):
    modeList = mode.split(",")
    mode = 0
    tmpVal = 0
    for value in modeList:
        tmpVal = 0
        if value!="":
            tmpVal = int(value)
        if tmpVal > 0:
            mode = mode + int(math.pow(2,tmpVal - 1))
    
    return mode

def GetElementVal(rootElement, elementName):
    titelElments = rootElement.getElementsByTagName(elementName)
    ret = ""
    if titelElments.length > 0:
        titelElmentOne = titelElments[0]
        if titelElmentOne.hasAttribute("val"):
            ret = titelElmentOne.getAttribute("val")
        else:
            pass  
    else:
        pass
    return ret

# 获取渠道配置数据
def getPackageData(root, buildtarget, platform):
    pfxmlpath = root + "/" + config.publish_dir_name + "/" + config.platform_xml
    pfDomTree = xml.dom.minidom.parse(pfxmlpath)
    pfCollection = pfDomTree.documentElement
    pfElements = pfCollection.getElementsByTagName("pf")
    

    for pfElement in pfElements:
        if GetElementVal(pfElement, "pf_title") == platform and GetElementVal(pfElement, "pf_os") == buildtarget:
            params = {}
            # 读取该节点所有子节点的val值
            for childElement in pfElement.childNodes:
                if childElement.nodeType != xml.dom.Node.ELEMENT_NODE:
                    continue
                if(childElement.hasAttribute("val")):
                    params[childElement.tagName] = childElement.getAttribute("val")
                else:
                    # 判断是否有子节点，获取获取子节点名称
                    if childElement.hasChildNodes():
                        params[childElement.tagName] = {}
                        childParams = params[childElement.tagName]
                        for childChildElement in childElement.childNodes:
                            if childChildElement.nodeType != xml.dom.Node.ELEMENT_NODE:
                                continue
                            if childChildElement.hasAttribute("val"):
                                childParams[childChildElement.tagName] = childChildElement.getAttribute("val")

            return params
        else:
            pass
    return None

# 将目录下所有文件和文件夹包含子目录复制到目标目录下
def copyDir(srcDir, destDir):
    # 先清空目标目录
    if os.path.exists(destDir):
        shutil.rmtree(destDir)
    # 创建目标目录
    os.makedirs(destDir)
    # 复制源目录下所有文件和文件夹包含子目录到目标目录
    for file in os.listdir(srcDir):
        srcFile = os.path.join(srcDir, file)
        destFile = os.path.join(destDir, file)
        if os.path.isdir(srcFile):
            copyDir(srcFile, destFile)
        else:
            shutil.copy(srcFile, destFile)

# 生成构建参数
def makeBuildParams(buildParams, packageData):
    resVersion = buildParams.resVersion
    pf_sdk = packageData.get("pf_sdk", "")
    pf_sdk_title = packageData.get("pf_sdk_title", "")
    pf_id = packageData.get("pf_id", "")
    pf_language = buildParams.language
    pf_region = buildParams.region
    pf_ext = packageData.get("pf_ext", "")
    pf_server_http = packageData.get("pf_server_http", "")
    pf_package = packageData.get("pf_package", "")
    pf_name = packageData.get("pf_name", {})
    pf_title = packageData.get("pf_title", "")
    pf_bg = packageData.get("pf_bg", "")
    pf_logo = packageData.get("pf_logo", "")
    pf_splash_bg = packageData.get("pf_splash", "")
    pf_channel_id = packageData.get("pf_channel_id", "0")
    pf_debug = buildParams.debug
    root_name = buildParams.name
    params = [
        resVersion,
        pf_sdk,
        pf_sdk_title,
        buildParams.platform,
        pf_name,
        pf_package,
        pf_id,
        pf_region,
        pf_language,
        pf_debug,
        pf_server_http,
        pf_ext,
        pf_bg,
        pf_logo,
        pf_splash_bg,
        root_name,
        pf_channel_id
    ]
    return params

# 生成安卓构建参数
def makeAndroidParams(buildParams, packageData):
    params = makeBuildParams(buildParams, packageData)
    pf_appname = packageData.get("pf_appname", {})
    pf_appname_str = ""
    for key, value in pf_appname.items():
        pf_appname_str += f"{key}:{value}|"
    pf_appname_str = pf_appname_str[:-1]
    params.append(pf_appname_str)
    # 转成字符串
    paramsStr = "~".join(params)
    # paramsStr 转base64
    paramsStr = base64_utils.str_to_base64(paramsStr)
    return paramsStr

# 生成小游戏构建参数
def makeMiniGameParams(buildParams, packageData):
    params = makeBuildParams(buildParams, packageData)
    pf_mini_appid = packageData.get("pf_mini_appid", "")
    pf_cdn_url = packageData.get("pf_cdn", "")
    params.append(pf_mini_appid)
    params.append(pf_cdn_url)
    # 转成字符串
    paramsStr = "~".join(params)
    # paramsStr 转base64
    paramsStr = base64_utils.str_to_base64(paramsStr)
    return paramsStr


# 构建安卓
def buildAndroid(buildParams, packageData):
    resVersion = buildParams.resVersion
    project_name = buildParams.project

    paramsStr = makeAndroidParams(buildParams, packageData)

    mode = buildParams.operation

    # project_name 全转小写
    p_name = project_name.lower()

    if (mode & 1):
        # 发布项目
        print("========================================================")
        print("开始发布项目")
        cmdList = [
            buildParams.laya,
            f"--project={buildParams.workdir}/{buildParams.project}",
            "--script=XYBuild.build",
            f"--script-args={buildParams.buildtarget} 0 1~{resVersion} {paramsStr}"
        ]
        # 执行命令
        returncode, full_output = run_cmd.runCommand(cmdList)
        if returncode != 0:
            print("发布项目失败！！！~~~~~~~~~~~~~~~~~~~")
            # 退出程序
            sys.exit(1)
        else:
            # 查找打印full_output列表中是否存在 Build end, result=Success 则发布成功
            isSuccess = False
            for line in full_output:
                if "Build end, result=Success" in line:
                    isSuccess = True
                    break
            if isSuccess:
                print("发布项目成功！！！~~~~~~~~~~~~~~~~~~~")
            else:
                print("发布项目失败！！！~~~~~~~~~~~~~~~~~~~")
                # 退出程序
                sys.exit(1)
        print("========================================================")
        pass

    if (mode & 2):
        # 导出原生工程
        print("========================================================")
        print("开始导出原生工程")
        cmdList = [
            buildParams.laya,
            f"--project={buildParams.workdir}/{buildParams.project}",
            "--script=XYBuild.exportAndroidProject",
            f"--script-args={paramsStr}"
        ]
        # 执行命令
        returncode, _ = run_cmd.runCommand(cmdList)
        if returncode != 0:
            print("导出原生工程失败！！！~~~~~~~~~~~~~~~~~~~")
            # 退出程序
            sys.exit(1)
        else:
            print("导出原生工程成功！！！~~~~~~~~~~~~~~~~~~~")
        print("========================================================")
        pass

    if (mode & 4):
        # 生成安装包
        apk_result = build_apk.do_android_apk(buildParams, packageData)
        if apk_result == None or apk_result.code != 0:
            print("生成安装包失败！！！~~~~~~~~~~~~~~~~~~~")
            # 退出程序
            sys.exit(1)
        else:
            print("生成安装包成功！！！~~~~~~~~~~~~~~~~~~~")
            # 将打包出的apk同步的共享目录
            share_path = f"{config.share_directory_path}/{buildParams.name}/{p_name}/android"
            if not os.path.exists(share_path):
                os.makedirs(share_path)
            # out_dir 为 Gradle 输出目录，须复制其中的 apk/aab；shutil.copy 仅适用于文件
            out_dir = apk_result.out_dir
            if os.path.isdir(out_dir):
                artifacts = [
                    f
                    for f in os.listdir(out_dir)
                    if os.path.isfile(os.path.join(out_dir, f))
                    and f.lower().endswith((".apk", ".aab"))
                ]
                if not artifacts:
                    print(f"导出目录下未找到 apk/aab：{out_dir}")
                else:
                    ok, rc = upload_file.uploadfile(out_dir, share_path, files=["*.apk", "*.aab"])
                    if not ok:
                        print(f"同步 apk/aab 到共享目录失败：robocopy 退出码={rc}，{share_path}")
                        sys.exit(1)
                for fname in artifacts:
                    print(f"同步apk到共享目录完成：{share_path}/{fname}")
        

    if (mode & 8) or (mode & 16):
        print("========================================================")
        print("同步资源到TOS")
        # 同步
        resouce_path = f"{buildParams.workdir}/{config.publish_dir_name}/{config.android_export_root}/resource/{p_name}/{resVersion}"
        if os.path.exists(resouce_path):
            # 同步资源到本地cdn
            cdn_root_path = f"{config.local_cdn_path}/{buildParams.name}"
            cdn_path = f"{cdn_root_path}/{p_name}/android/{resVersion}"
            if os.path.exists(cdn_path):
                # 删除cdn路径
                shutil.rmtree(cdn_path)
            # 创建cdn路径
            os.makedirs(cdn_path)
            # 同步资源到本地cdn
            copyDir(resouce_path, cdn_path)
            print(f"同步资源到本地cdn完成：{cdn_path}")
            print("开始压缩资源")
            zip_path = f"{config.local_cdn_path}/{buildParams.name}/zip/{p_name}/android/"
            if os.path.exists(zip_path):
                shutil.rmtree(zip_path)
            os.makedirs(zip_path)
            # zip_file文件名 client_yyyymmddhhmm.zip
            # 月 时 分 一位数时前面补0
            year = buildParams.startTime
            if year == "":
                year = time.strftime("%Y%m%d%H%M", time.localtime())
            zip_file_name = f"client_{year}.zip"
            # 将f"{config.local_cdn_path}/{p_name}"目录下所有文件与目录压缩到zip_file
            ret = zip_file.zip_path(cdn_path, zip_path, zip_file_name, f"{p_name}/android/{resVersion}")
            print(f"压缩资源完成：{ret.zip_name}")
            if (mode & 8):
                print(f"开始同步资源到测试TOS桶")
                testResult = tos_upload.upload_batch(
                    ak=buildParams.testTosAccessKeyId,
                    sk=buildParams.testTosSecretAccessKey,
                    endpoint=f"tos-{buildParams.tosRegion}.volces.com",
                    region=buildParams.tosRegion,
                    bucket=buildParams.testTosBucket,
                    src=cdn_path,
                    prefix=f"{buildParams.name}/{p_name}/android/{resVersion}",
                    recursive=True,
                )
                if testResult.failed > 0:
                    print(f"同步资源到测试TOS桶失败：{testResult.failed}")
                    # 退出程序
                    sys.exit(1)
                else:
                    print(f"同步资源到测试TOS桶成功：{testResult.ok}")
            if (mode & 16):
                print(f"开始同步资源到正式TOS桶")
                formalResult = tos_upload.upload_batch(
                    ak=buildParams.formalTosAccessKeyId,
                    sk=buildParams.formalTosSecretAccessKey,
                    endpoint=f"tos-{buildParams.tosRegion}.volces.com",
                    region=buildParams.tosRegion,
                    bucket=buildParams.formalTosBucket,
                    src=zip_path,
                    prefix=f"{buildParams.name}",
                )
                if formalResult.failed > 0:
                    print(f"同步资源到正式TOS桶失败：{formalResult.failed}")
                    # 退出程序
                    sys.exit(1)
                else:
                    print("=============================================")
                    print(f"同步资源到正式TOS桶成功：/{buildParams.name}/{ret.zip_name}")
                    print("=============================================")
            print("同步资源到TOS完成")
        else:
            print(f"资源路径不存在：{resouce_path}")
        print("同步资源到TOS完成")
        print("========================================================")
    pass

def buildIos(buildParams, packageData):
    pass

def buildWeb(buildParams, packageData):
    # 发布项目
    cmdList = [
        buildParams.laya,
        f"--project={buildParams.workdir}/{buildParams.project}",
        "--script=XYBuild.buildWeb",
    ]
    # 执行命令
    returncode,_ = run_cmd.runCommand(cmdList)
    if returncode != 0:
        print("发布项目失败！！！~~~~~~~~~~~~~~~~~~~")
        # 退出程序
        sys.exit(1)
    else:
        print("发布项目成功！！！~~~~~~~~~~~~~~~~~~~")
    pass

# 构建小游戏
def buildMiniGame(buildParams, packageData):
    resVersion = buildParams.resVersion
    pf_title = buildParams.platform
    project_name = buildParams.project
    buildtarget = packageData.get("pf_os","").strip()
    if buildtarget != "":
        buildParams.buildtarget = buildtarget
    paramsStr = makeMiniGameParams(buildParams, packageData)
    mode = buildParams.operation
    # project_name 全转小写
    p_name = project_name.lower()
    if (mode & 1):
        # 发布项目
        print("========================================================")
        print("开始发布项目")
        cmdList = [
            buildParams.laya,
            f"--project={buildParams.workdir}/{buildParams.project}",
            "--script=XYBuild.build",
            f"--script-args={buildParams.buildtarget} 0 1~{resVersion} {paramsStr}"
        ]
        # 执行命令
        returncode, full_output = run_cmd.runCommand(cmdList)
        if returncode != 0:
            print("发布项目失败！！！~~~~~~~~~~~~~~~~~~~")
            # 退出程序
            sys.exit(1)
        else:
            # 查找打印full_output列表中是否存在 Build end, result=Success 则发布成功
            isSuccess = False
            for line in full_output:
                if "Build end, result=Success" in line:
                    isSuccess = True
                    break
            if isSuccess:
                print("发布项目成功！！！~~~~~~~~~~~~~~~~~~~")
            else:
                print("发布项目失败！！！~~~~~~~~~~~~~~~~~~~")
                # 退出程序
                sys.exit(1)
        print("========================================================")
        pass
    if (mode & 2):
        # 导出小游戏工程
        print("========================================================")
        print("开始导出小游戏工程")
        cmdList = [
            buildParams.laya,
            f"--project={buildParams.workdir}/{buildParams.project}",
            "--script=XYBuild.exportMiniGameProject",
            f"--script-args={buildParams.buildtarget} {paramsStr}"
        ]
        # 执行命令
        returncode, _ = run_cmd.runCommand(cmdList)
        if returncode != 0:
            print("导出小游戏工程失败！！！~~~~~~~~~~~~~~~~~~~")
            # 退出程序
            sys.exit(1)
        else:
            print("导出小游戏工程成功！！！~~~~~~~~~~~~~~~~~~~")
            # 将小游戏工程同步到共享目录
            mini_game_path = f"{buildParams.workdir}/{config.publish_dir_name}/{config.minigame_export_root}/project/{buildtarget}/{project_name}/{pf_title}"
            if os.path.exists(mini_game_path):
                # 将小游戏工程同步到共享目录
                share_path = f"{config.share_directory_path}/{buildParams.name}/{p_name}/{buildtarget}/{pf_title}"
                ok, rc = upload_file.uploadfile(mini_game_path, share_path, clean_dest=True)
                if not ok:
                    print(f"同步小游戏工程到共享目录失败：robocopy 退出码={rc}，{share_path}")
                    sys.exit(1)
                print(f"同步小游戏工程到共享目录完成：{share_path}")
            else:
                print(f"小游戏工程路径不存在：{mini_game_path}")
        print("========================================================")
        pass
    if(mode & 8) or (mode & 16):
        print("========================================================")
        print("同步资源到TOS")
        # 判断是否有远程分包
        resouce_path = f"{buildParams.workdir}/{config.publish_dir_name}/{config.minigame_export_root}/resource/{p_name}/{buildtarget}/{pf_title}/{resVersion}"
        if os.path.exists(resouce_path):
            # 同步资源到本地cdn
            cdn_root_path = f"{config.local_cdn_path}/{buildParams.name}"
            cdn_path = f"{cdn_root_path}/{p_name}/{buildtarget}/{pf_title}/{resVersion}"
            if os.path.exists(cdn_path):
                # 删除cdn路径
                shutil.rmtree(cdn_path)
            # 创建cdn路径
            os.makedirs(cdn_path)
            # 同步资源到本地cdn
            copyDir(resouce_path, cdn_path)
            print(f"同步资源到本地cdn完成：{cdn_path}")
            print("开始压缩资源")
            zip_path = f"{config.local_cdn_path}/{buildParams.name}/zip/{p_name}/{buildtarget}/{pf_title}/"
            if os.path.exists(zip_path):
                shutil.rmtree(zip_path)
            os.makedirs(zip_path)
            # zip_file文件名 client_yyyymmddhhmm.zip
            # 月 时 分 一位数时前面补0
            year = buildParams.startTime
            if year == "":
                year = time.strftime("%Y%m%d%H%M", time.localtime())
            zip_file_name = f"client_{year}.zip"
            ret = zip_file.zip_path(cdn_path, zip_path, zip_file_name, f"{p_name}/{buildtarget}/{pf_title}/{resVersion}")
            print(f"压缩资源完成：{ret.zip_name}")
            if (mode & 8):
                print(f"开始同步资源到测试TOS桶")
                testResult = tos_upload.upload_batch(
                    ak=buildParams.testTosAccessKeyId,
                    sk=buildParams.testTosSecretAccessKey,
                    endpoint=f"tos-{buildParams.tosRegion}.volces.com",
                    region=buildParams.tosRegion,
                    bucket=buildParams.testTosBucket,
                    src=cdn_path,
                    prefix=f"{buildParams.name}/{p_name}/{buildtarget}/{pf_title}/{resVersion}",
                    recursive=True,
                )
                if testResult.failed > 0:
                    print(f"同步资源到测试TOS桶失败：{testResult.failed}")
                    # 退出程序
                    sys.exit(1)
                else:
                    print(f"同步资源到测试TOS桶成功：{testResult.ok}")
            if (mode & 16):
                print(f"开始同步资源到正式TOS桶")
                formalResult = tos_upload.upload_batch(
                    ak=buildParams.formalTosAccessKeyId,
                    sk=buildParams.formalTosSecretAccessKey,
                    endpoint=f"tos-{buildParams.tosRegion}.volces.com",
                    region=buildParams.tosRegion,
                    bucket=buildParams.formalTosBucket,
                    src=zip_path,
                    prefix=f"{buildParams.name}",
                )
                if formalResult.failed > 0:
                    print(f"同步资源到正式TOS桶失败：{formalResult.failed}")
                    # 退出程序
                    sys.exit(1)
                else:
                    print(f"同步资源到正式TOS桶成功：/{buildParams.name}/{ret.zip_name}")
            print("同步资源到TOS完成")
        else:
            print(f"资源路径不存在：{resouce_path}")
            print("同步资源到TOS完成")
            print("========================================================")
        pass
    pass

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="构建参数")
    parser.add_argument("-n", "--name", required=True, help="项目名")
    parser.add_argument("-l", "--laya", required=True, help="LayaAir.exe路径")
    parser.add_argument("-w", "--workdir", required=True, help="项目目录")
    parser.add_argument("-j", "--project", required=True, help="项目工程名称")
    parser.add_argument("-o", "--operation", required=True, help="操作类型：1-发布项目 2-导出原生工程 3-生成安装包 4-同步")
    parser.add_argument("-p", "--platform", required=True, help="平台类型")
    parser.add_argument("-i", "--buildid", required=True, help="构建id")
    parser.add_argument("-b", "--buildtarget", required=True, help="构建平台 android ios web")
    parser.add_argument("-s", "--startTime", required=True, help="开始时间")
    parser.add_argument("-a", "--appVersion", required=True, help="应用版本号")
    parser.add_argument("-r", "--resVersion", required=True, help="资源版本号")
    parser.add_argument("-d", "--debug", required=False, help="调试模式 0-否 1-是")
    #语言
    parser.add_argument("-g", "--language", required=False, help="语言 0-中文 1-繁体 2-英文 3-韩语 4-日语 5-俄语 6-越南语 7-泰语")
    #地区
    parser.add_argument("-c", "--region", required=False, help="地区 0-中国 1-欧美")
    #是否aab
    parser.add_argument("-k", "--isAab", required=False, help="是否aab 0-否 1-是")
    #测试TOS桶 Access Key ID
    parser.add_argument("-A", "--testTosAccessKeyId", required=True, help="测试TOS桶 Access Key ID")
    #测试TOS桶 Secret Access Key
    parser.add_argument("-S", "--testTosSecretAccessKey", required=True, help="测试TOS桶 Secret Access Key")
    #正式TOS桶 Access Key ID
    parser.add_argument("-F", "--formalTosAccessKeyId", required=True, help="正式TOS桶 Access Key ID")
    #正式TOS桶 Secret Access Key
    parser.add_argument("-G", "--formalTosSecretAccessKey", required=True, help="正式TOS桶 Secret Access Key")
    #测试TOS桶名
    parser.add_argument("-t", "--testTosBucket", required=True, help="测试TOS桶名")
    #正式TOS桶名
    parser.add_argument("-f", "--formalTosBucket", required=True, help="正式TOS桶名")
    #TOS桶区域
    parser.add_argument("-T", "--tosRegion", required=True, help="TOS桶区域")

    args = parser.parse_args()
    args.operation = fomatOperPara(args.operation)
    debug = args.debug
    if debug == "true" or debug == "1" or debug == True:
        args.debug = "1"
    else:
        args.debug = "0"
    isAab = args.isAab
    if isAab == "true" or isAab == "1" or isAab == True:
        args.isAab = "1"
    else:
        args.isAab = "0"

    args.workdir = args.workdir.replace("\\", "/")
    args.project = args.project.replace("\\", "/")

    print("name: ", args.name)
    print("workdir: ", args.workdir)
    print("operation: ", args.operation)
    print("platform: ", args.platform)
    print("buildid: ", args.buildid)
    print("buildtarget: ", args.buildtarget)
    print("startTime: ", args.startTime)
    print("appVersion: ", args.appVersion)
    print("resVersion: ", args.resVersion)
    print("debug: ", args.debug)
    print("language: ", args.language)
    print("region: ", args.region)
    print("testTosAccessKeyId: ", args.testTosAccessKeyId)
    print("testTosSecretAccessKey: ", args.testTosSecretAccessKey)
    print("formalTosAccessKeyId: ", args.formalTosAccessKeyId)
    print("formalTosSecretAccessKey: ", args.formalTosSecretAccessKey)
    print("testTosBucket: ", args.testTosBucket)
    print("formalTosBucket: ", args.formalTosBucket)
    print("tosRegion: ", args.tosRegion)

    buildtarget = args.buildtarget
    if(buildtarget == "minigame"):
        buildtplatform = args.platform
        # 使用#号分割
        platformList = buildtplatform.split("#")
        args.platform = platformList[0]
        # 长度大于1，构建平台取第二个
        if len(platformList) > 1:
            args.buildtarget = platformList[1]

    packageData = getPackageData(args.workdir, args.buildtarget, args.platform)
    if packageData is None:
        print(f"获取渠道配置数据失败，platform: {args.platform}, buildtarget: {args.buildtarget}")
        # 退出程序
        sys.exit(1)
    else:
        try:
            print("开始执行构建...")
            if buildtarget == "android":
                print("开始构建安卓工程...")
                buildAndroid(args, packageData)
            elif buildtarget == "ios":
                print("开始构建iOS工程...")
                buildIos(args, packageData)
            elif buildtarget == "web":
                print("开始构建Web工程...")
                buildWeb(args, packageData)
            elif buildtarget == "minigame":
                print("开始构建小游戏...")
                buildMiniGame(args, packageData)
            else:
                print("构建平台不支持")
        except Exception as e:
            print(f"构建失败: {str(e)}")
        





