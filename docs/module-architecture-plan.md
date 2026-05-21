# 《咪城大师》模块化设计草案

**在线阅读**：<https://github.com/1659290676-jpg/micheng-master/blob/main/docs/module-architecture-plan.md>

状态：待确认  
目的：把当前核心玩法拆成稳定模块，避免“改一个地方，全局出 bug”。确认后再按此结构重构或迁移到 Laya3D。

相关文档：[已确认规则](https://github.com/1659290676-jpg/micheng-master/blob/main/docs/accepted-rules.md) · [Laya3D 迁移评估](https://github.com/1659290676-jpg/micheng-master/blob/main/docs/laya3d-migration-assessment.md) · [协作守则](https://github.com/1659290676-jpg/micheng-master/blob/main/docs/workflow-governance.md) · [文档索引](https://github.com/1659290676-jpg/micheng-master/blob/main/docs/README.md)

## 总体原则

1. **玩法规则和表现层分离**
   - 规则模块只关心数据：格子、阵营、建筑、士兵、金币、胜负。
   - 表现层负责画面：Phaser 或 Laya3D 的模型、动画、点击、音效。

2. **数值全部配置化**
   - 建筑血量、攻击、CD、产金、抽卡概率、士兵属性不能散落在代码里。
   - 当前已有 `data/combat_balance.json` 和 `src/web/src/game/CombatBalance.ts`，后续应统一来源。

3. **已验收规则默认冻结**
   - 已确认的规则不能在后续修 bug 时顺手改掉。
   - 如果必须改，需要先提出变更原因、影响范围、验收点，由你确认。

4. **每个模块有单一责任**
   - 建造系统不直接控制士兵移动。
   - 战斗系统不直接改 UI。
   - UI 不直接改核心数据。

5. **迁移只复用框架，不复用旧玩法**
   - Laya3D 迁移只复用启动、资源、UI、场景、配置、发布等框架能力。
   - 旧恐龙、城市空间、旧关卡 UI、旧角色控制器不得接入咪城入口。
   - 咪城使用独立入口、独立场景控制器、独立棋盘和独立 UI。

## 当前阶段模块划分

| 模块 | 负责内容 | 当前 Phaser 对应 | Laya3D 迁移建议 |
|---|---|---|---|
| `core-rules` | 游戏规则入口、状态流转、胜负条件 | `GameManager` | 抽成引擎无关 TS |
| `board-system` | 关卡化六边形棋盘、邻接、距离、格子阵营 | `GridSystem`、`HexCoords` | 优先迁移，第一关为 9x16 |
| `frontier-system` | 可建造边界、图纸刷新 | `FrontierManager`、`BlueprintNodeUI` | 逻辑和表现拆开 |
| `build-system` | 建造、盲盒、空围墙、建筑落地 | `BuildSystem`、`Building` | 保留规则，重写表现 |
| `economy-system` | 初始金币、主塔产金、金矿产金、扣费 | `GameManager`、`Building` | 独立为经济模块 |
| `combat-system` | 士兵出兵、移动、攻击、塔攻击、死亡 | `Soldier`、`Building` | 独立为战斗模块 |
| `pathfinding-system` | 六边形路径、绕开建筑 | `HexAStar` | 可直接迁移规则 |
| `ai-system` | 敌方建造与推进策略 | `EnemyAI` | 迁移后继续迭代 |
| `balance-config` | 初始数值、升级成长、抽卡概率 | `data/*.json`、`CombatBalance.ts` | 统一配置来源 |
| `view-renderer` | 棋盘、建筑、士兵、动画、特效 | Phaser Scene/BootScene | Laya3D 重写 |
| `input-system` | 点击格子、点击图纸、触屏、点击优先级 | Phaser pointer events | Laya3D 射线/碰撞点击 |
| `ui-system` | 金币、倒计时、toast、胜负面板、建造图标层级 | `GameHud` | 接 Laya `UIBase` |
| `asset-system` | 猫咪、建筑、特效、音效资源 | `assets/cats/` | 转 Laya 资源规范 |
| `level-system` | 关卡地图、棋盘形状、初始建筑、AI 参数 | 暂少 | 新增 |
| `wall-system` | 格内贴边墙、单边墙血量、墙破坏 | `HexEdgeWall*` | 独立成系统 |
| `upgrade-system` | 宝盒、英雄卡、建筑/士兵升级成长 | 暂无 | 二期前置设计 |
| `qa-tools` | 测试、调试面板、验收脚本 | 暂少 | 必须补 |

## Laya3D 目标目录草案

建议在 `laya3d-framework/GameProject/src/Game/Module/Micheng/` 下新增：

```text
Micheng/
  Core/
    MchTypes.ts
    MchGameState.ts
    MchMatchRules.ts
  Board/
    MchHexCoords.ts
    MchBoardModel.ts
    MchPathfinding.ts
  Build/
    MchBuildRules.ts
    MchBlueprintRules.ts
    MchGachaRules.ts
  Combat/
    MchSoldierRules.ts
    MchTowerRules.ts
    MchCombatSystem.ts
    MchWallCombatRules.ts
  Economy/
    MchEconomySystem.ts
  AI/
    MchEnemyAI.ts
  Config/
    MchBalance.ts
    MchLevelConfig.ts
    MchUpgradeConfig.ts
  View/
    MchBoardView.ts
    MchTileView.ts
    MchBuildingView.ts
    MchSoldierView.ts
  UI/
    Vw_MichengHud.ts
    Vw_MichengResult.ts
  Ctrl/
    MchStageSceneCtrl.ts
```

## 当前已确认玩法规则基线

以下规则应进入“已验收冻结区”，后续不能静默改动：

1. 第一阶段迁移采用“新增咪城模块 + 逐步替换玩法”，先做离线 AI 对战完整 3D 版本，暂不接联网。
2. 绿方为玩家，红方为敌方 AI。
3. 点击相邻己方实体建筑的空格可建造。
4. 红色空地如果与己方实体建筑相邻，也可出现建造图标。
5. 盲盒一次点击扣 25 金、翻转、当场开奖。
6. 盲盒空结果生成格内六边空围墙，不占邻格。
7. 花费 50 金币可建造一座金矿。
8. 花费 50 金币可建造一座防御塔。
9. 实体建筑相邻需出现可被点击建造图标，图标包括：金矿、50 金币兵营、100 金币兵营、250 金币兵营、防御塔、盲盒。
10. 建造图标一旦生成即固定，不会因为士兵经过、占地变化或刷新而改变为其他图标。
11. 士兵临时占格不应清除、遮挡或改变已生成建造图标；图标层级和点击优先级应高于士兵。
12. 主塔被毁即失败。
13. 如果 3 分钟倒计时结束双方主塔均未被毁，则按双方占领格数量判定胜负，占格多者获胜。
14. 占地只能由士兵走到对应地块触发。
15. 士兵必须从各自兵营中出发。
16. 士兵不能跨越或进入已有实体建筑所在六边形。
17. 防御塔/主塔攻击只扣血，不阻止士兵继续移动。
18. 开局主堡 6 条朝外边都有格内贴边墙，墙体不占用相邻六边形格子。
19. 主堡、金矿、箭塔、兵营被建造后，都有 6 条朝外格内贴边墙。
20. 相邻己方实体建筑之间的内部连接边合并：双方朝向彼此的墙消失，整体外轮廓继续显示贴边墙。
21. 贴边墙必须沿平顶六边形棋盘边线方向生成。
22. 墙体单边血量为 80；士兵攻击建筑前，必须先击毁对应方向的一侧墙体，墙破后才可攻击建筑本体血量。
23. 棋盘不是永久固定 9x16；第一关初始棋盘为平顶 9x16，后续关卡可通过关卡配置改变地图形状、尺寸、障碍与初始布局。

## 当前抽卡规则

| 类型 | 花费 | 概率 |
|---|---:|---|
| 金矿 | 50 | 固定建造 |
| 防御塔 | 50 | 固定建造 |
| 盲盒 | 25 | 70% 空、10% 普通、15% 史诗、5% 传奇，无稀有 |
| 低级兵营 | 50 | 74% 普通、20% 稀有、5% 史诗、1% 传奇，无空 |
| 中级兵营 | 100 | 50% 普通、40% 稀有、8% 史诗、2% 传奇，无空 |
| 高级兵营 | 250 | 90% 史诗、10% 传奇，无空、无普通、无稀有 |

## 初始数值与成长系统

以下数值只是初始阶段配置，不属于不可变规则基线。后续宝盒、英雄卡牌、卡牌升级会影响金矿、防御塔、士兵、主塔等属性。

| 对象 | 初始数值 |
|---|---|
| 金矿 | 建筑血量 140；生产时间 5.995 秒；收入 10 金币 |
| 防御塔 | 建筑血量 400；攻击力 120；攻击 CD 2.995 秒；主动攻击敌方士兵 |
| 普通兵营/士兵 | 兵营血量 300；士兵攻击 13；士兵血量 100；出兵时间 7 秒；移动速度 2.4 秒；攻击范围 1.2 格 |
| 稀有兵营/士兵 | 兵营血量 400；士兵攻击 20；士兵血量 150；出兵时间 15 秒；移动速度 1 秒；攻击范围 5 格 |
| 史诗兵营/士兵 | 兵营血量 800；士兵攻击 50；士兵血量 250；出兵时间 18 秒；移动速度 3 秒；攻击范围 3 格 |
| 传奇兵营/士兵 | 兵营血量 4000；士兵攻击 100；士兵血量 1400；出兵时间 40 秒；移动速度 2 秒；攻击范围 1 格 |
| 主塔 | 建筑血量 1000；产金时间 5 秒；收入 10 金币；攻击力 150；攻击 CD 1 秒；主动攻击敌方士兵 |
| 单边贴边墙 | 每条边血量 80；被击毁后才允许攻击该方向后的建筑本体 |

## 未来模块

| 阶段 | 模块 | 说明 |
|---|---|---|
| 二期 | `meta-system` | 局外卡牌、升级、宝箱、成长 |
| 二期 | `upgrade-system` | 宝盒开英雄卡，卡牌影响建筑/士兵成长 |
| 二期 | `matchmaking-system` | 房间、匹配、断线重连 |
| 二期 | `network-pvp` | 真联网 PVP 同步 |
| 二期 | `analytics-system` | 数据埋点、关卡胜率、付费点分析 |
| 二期 | `tutorial-system` | 新手引导 |
| 三期 | `liveops-system` | 活动、签到、赛季、排行榜 |

## 执行建议

确认本草案后，下一步按顺序执行：

1. 第一阶段：Laya3D 空棋盘和点击验证。状态：已接入第一关 9x16 空棋盘。
2. 第二阶段：接入主塔、基础建筑、士兵出生与占位表现。
3. 第三阶段：接入图纸建造、图标固定、点击优先级。
4. 第四阶段：接入经济、倒计时、胜负判定和 HUD UI。
5. 第五阶段：接入士兵移动、攻击、防御塔/主塔攻击。
6. 第六阶段：接入敌方 AI。
7. 第七阶段：接入格内贴边墙可破坏逻辑，单边墙 80 血，先破墙再打建筑。
8. 每一步都和 Phaser 线上版本对照验收。
