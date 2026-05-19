# 占格竞技（工作标题）

轻竞技 PVP：六边形棋盘占地 + 问号盲盒开格 + 自动战斗出兵 + 局外卡牌养成。

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

## 文档入口

| 用途 | 文件 |
|------|------|
| 核心循环 1:1 | `docs/core-loop.md` |
| 随机/保底规则 | `docs/random-rules.md` |
| 美术何时投喂 | `docs/art-pipeline.md` |
| **当前需要你回复** | `docs/asset-request-now.md` |
