# 推送到 GitHub

本地已完成 **首次 Git 提交**（分支 `main`），预览包在 `release/咪城大师-预览.html`。

## 一次性登录（约 1 分钟）

在 PowerShell 中执行：

```powershell
gh auth login
```

按提示选择：GitHub.com → HTTPS → 用浏览器登录。

## 创建仓库并推送

```powershell
cd E:\CCfirst
powershell -ExecutionPolicy Bypass -File scripts\push-to-github.ps1
```

默认仓库名：`micheng-master`（公开）。若要改名，编辑 `scripts/push-to-github.ps1` 里的 `$repoName`。

## 已有空仓库时

```powershell
cd E:\CCfirst
git remote add origin https://github.com/你的用户名/你的仓库名.git
git push -u origin main
```

## GitHub Pages 试玩（可选）

仓库推送后，在 GitHub 网页：**Settings → Pages → Build from branch → main / docs**  
或将 `release/咪城大师-预览.html` 放到 `docs/index.html` 后开 Pages。
