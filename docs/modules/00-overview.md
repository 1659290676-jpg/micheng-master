# 模块总览（网页版 MVP）

| 模块 | 目录 | 里程碑 | 依赖 |
|------|------|--------|------|
| M1 棋盘与占格 | `src/web/src/battle/hex` | 能看见六边形、切换归属 | 格图占位 |
| M2 经济与开格 | `src/web/src/battle/economy` | 金币、开固定格、问号盲盒 | M1 + 建筑占位 |
| M3 战斗与出兵 | `src/web/src/battle/combat` | 兵营 CD、单位移动攻击占格 | M2 |
| M4 对局流程 | `src/web/src/battle/match` | 3 分钟、胜负、本地双人/AI | M3 |
| M5 局外养成 | `src/web/src/meta` | 宝箱、开箱、升级、战力 | M4 |
| M6 联网 PVP | `src/server`（二期） | 匹配、同步 | M4 |

当前代码入口：`src/web`（Vite + TypeScript + Phaser 3）。
