# 游戏设计文档

> **喵城大师**（工作标题）· 猫咪 IP · 玩法与《占城大师》**1:1**  
> 平台：**网页版小游戏**（`src/web`）

## 1. 核心循环

详见 `docs/core-loop.md`。

- **局内**：等金 → 问号盲盒 / 建塔兵营矿 → 爆兵 → 占格 → 胜  
- **局外**：宝箱 → CD 开箱 → 卡/木/金 → 升级卡与主城 → 战力 → 匹配  

## 2. 随机规则

详见 `docs/random-rules.md`，配置：`data/mystery_pool.json`。

## 3. 美术投喂

详见 `docs/art-pipeline.md`，资产目录：`assets/cats/`。

## 4. 模块与里程碑

| 模块 | 文档 | 状态 |
|------|------|------|
| M1 棋盘占格 | `docs/modules/M1-board.md` | 进行中 |
| M2 经济开格 | `docs/modules/M2-economy.md` | 待启动 |
| M3 战斗出兵 | `docs/modules/M3-combat.md` | 待启动 |
| M4 局外养成 | `docs/modules/M4-meta.md` | 待启动 |

## 5. 技术栈

- Vite + TypeScript + Phaser 3  
- 配置：`data/*.json`  
- 运行：`cd src/web && npm install && npm run dev`
