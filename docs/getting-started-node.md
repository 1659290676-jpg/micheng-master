# Node.js 是什么？（咪城大师网页版）

**Node.js** 是在电脑上运行 JavaScript 的环境。我们的网页游戏用 **Vite** 做开发服务器、用 **npm** 安装 Phaser 等依赖，所以需要安装 Node。

## 已为你安装

- **Node.js LTS** v24.15.0（通过 `winget`）
- 项目依赖已在 `src/web` 执行过 `npm install`

若新开终端提示找不到 `npm`，**关闭并重新打开** PowerShell 或 Cursor 终端后再试。

## 日常命令

```powershell
cd E:\CCfirst\src\web
npm run dev
```

浏览器会打开竖版棋盘（720×1280）。改代码保存后页面自动刷新。

## 生产打包

```powershell
npm run build
```

输出在 `src/web/dist/`，可部署到任意静态网页托管。
