# 首次使用前在终端执行一次：gh auth login
# 然后运行本脚本：powershell -ExecutionPolicy Bypass -File scripts\push-to-github.ps1

$ErrorActionPreference = "Stop"
$repoName = "micheng-master"
$root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
Set-Location $root

$gh = Get-Command gh -ErrorAction SilentlyContinue
if (-not $gh) {
    Write-Host "未找到 gh，请先安装 GitHub CLI: winget install GitHub.cli"
    exit 1
}

gh auth status 2>&1 | Out-Null
if ($LASTEXITCODE -ne 0) {
    Write-Host "请先登录 GitHub："
    Write-Host "  gh auth login"
    exit 1
}

$remote = git remote get-url origin 2>$null
if (-not $remote) {
    Write-Host "正在创建远程仓库并推送: $repoName"
    gh repo create $repoName --public --source=. --remote=origin --push --description "咪城大师 - 猫咪IP占格PVP网页小游戏"
} else {
    Write-Host "推送到已有远程: $remote"
    git push -u origin main
}

Write-Host "完成。在浏览器打开: gh repo view --web"
