# 局内玩法代码对照（Unity 提示词 → 本项目）

| 模块 | 脚本 | 路径 |
|------|------|------|
| A 格子 GameObject + Tile | `Tile`, `TileFaction` | `src/web/src/battle/tile/` |
| B 金币 + 点击建造金矿 | `GameManager`, `GridSystem` | `src/web/src/game/`, `battle/grid/` |
| C 盲盒兵营概率 | `GachaManager` | `src/web/src/game/GachaManager.ts` |
| D 兵营出兵 + 六边形 A* | `Building`, `Soldier`, `HexAStar` | `entities/`, `pathfinding/` |
| E 战斗 + 涂色占地 | `Soldier`, `GridSystem.captureTile` | 移动/相邻伤害/毁建筑翻 6 格 |
| F 倒计时 + 格子统计 + 胜负 | `GameManager`, `GameHud` | 主城 HP / 3 分钟比格数 |

## 操作说明（预览版）

1. 底部按钮选建造模式（金矿 50、?25、兵营 50/100/250）
2. 点击**己方绿色领地**上的空格建造
3. 兵营每 5 秒在邻格产兵；士兵自动寻路、涂色、战斗
4. 摧毁对方**紫色主城**或倒计时结束格多者胜

## 敌方

当前为 **AI 红方**（自动造矿/抽兵营），后续可换真 PVP 联网。
