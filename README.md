# 咪城大师（占格竞技）

**在线试玩（手机/电脑浏览器打开即可）：**  
**https://1659290676-jpg.github.io/micheng-master/**

轻竞技 PVP：六边形棋盘占地 + 问号盲盒开格 + 自动战斗出兵 + 局外卡牌养成。当前网页版为 **你 vs 电脑 AI**；把链接发给好友即可各自开局；**真·联网双人对战** 为二期功能。

## 目录结构

```
CCfirst/
├── CLAUDE.md          # Claude Code 项目说明（语言、规范、目标）
├── README.md          # 本文件
├── docs/              # 策划与设计文档
├── data/              # 卡牌、单位、地图等配置（JSON）
├── src/               # 游戏客户端源码（选定引擎后填充）
└── tools/             # 本地工具脚本（校验配置、生成表等）
```

## 开发环境

- 工作目录：`E:\CCfirst`
- 在终端进入本项目：`cd E:\CCfirst`，然后运行 `claude`

## 本地运行（网页版）

### 方式一：单文件预览（无需 Node）

双击打开：

**`E:\CCfirst\release\咪城大师-预览.html`**

内含占位六边形棋盘 + 初始卡组说明，约 1.5MB。

### 方式二：开发模式（改代码实时刷新）

```powershell
cd E:\CCfirst\src\web
npm install
npm run dev
```

### 重新打包单文件 HTML

```powershell
cd E:\CCfirst\src\web
npm run build:html
copy dist-single\index.html ..\..\release\咪城大师-预览.html
```

## 发布成公网（大家都能玩）

完整说明见 **`docs/deploy-public.md`**。

1. 打开 [仓库 Pages 设置](https://github.com/1659290676-jpg/micheng-master/settings/pages)
2. **Source** 选 **GitHub Actions**（只需设置一次）
3. 推送代码后自动部署，分享链接：

**https://1659290676-jpg.github.io/micheng-master/**

## 文档入口

| 用途 | 文件 |
|------|------|
| 核心循环 1:1 | `docs/core-loop.md` |
| 随机/保底规则 | `docs/random-rules.md` |
| 美术何时投喂 | `docs/art-pipeline.md` |
| **当前需要你回复** | `docs/asset-request-now.md` |
