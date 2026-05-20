# 《咪城大师》项目状态

最后更新：2026-05-20  
用途：对话压缩或新开对话后，优先读取本文件恢复上下文。

## 当前项目

- 项目名：咪城大师
- 当前原型：`src/web`，Vite + Phaser 3
- 线上地址：https://1659290676-jpg.github.io/micheng-master/
- GitHub 仓库：https://github.com/1659290676-jpg/micheng-master
- Laya3D 框架：`E:\CCfirst\laya3d-framework\GameProject`

## 当前核心玩法状态

Phaser 网页原型已完成核心闭环：

- 9x16 平顶六边形棋盘
- 玩家绿方 vs 敌方红方 AI
- 主塔、金矿、防御塔、兵营、盲盒、空围墙
- 图纸浮标建造
- 金矿 50 金固定建造，防御塔 50 金固定建造
- 实体建筑相邻建造图标固定生成，不因士兵经过改变
- 金币经济
- 士兵自动出兵、移动、攻击、占地
- 防御塔与主塔攻击
- 主塔被毁失败
- GitHub Pages 线上试玩

## 已确认的关键规则

详见：

- `docs/accepted-rules.md`
- `docs/module-architecture-plan.md` 的“当前已确认玩法规则基线”

## 当前重要文档

- `docs/laya3d-migration-assessment.md`：Laya3D 迁移评估报告
- `docs/module-architecture-plan.md`：模块化设计草案
- `docs/workflow-governance.md`：周报机制与协作守则草案
- `docs/accepted-rules.md`：已确认玩法规则草案
- `docs/layaair-preview-guide.md`：LayaAir 3.4.0-beta.3 打开与预览指南
- `docs/handoff-2026-05-20.md`：新对话交接总结
- `docs/GDD.md`：游戏设计文档
- `docs/core-loop.md`：核心循环
- `docs/deploy-public.md`：公网部署说明

## 当前决策状态

待用户确认：

1. 是否按 `docs/module-architecture-plan.md` 的模块划分执行。
2. 是否按 `docs/workflow-governance.md` 固化每周总结和确认机制。
3. 是否将协作守则写入 `.cursor/rules/project-governance.mdc`。
4. 是否开始 Laya3D 迁移第一步：新增 `Micheng` 模块并搭建空棋盘。
5. 是否将 `docs/accepted-rules.md` 从草案升级为正式冻结规则。

## Laya3D 第一阶段进展

已新增隔离的咪城模块骨架：

- `laya3d-framework/GameProject/src/Game/Module/Micheng/Core/MchTypes.ts`
- `laya3d-framework/GameProject/src/Game/Module/Micheng/Board/MchHexCoords.ts`
- `laya3d-framework/GameProject/src/Game/Module/Micheng/Board/MchBoardModel.ts`
- `laya3d-framework/GameProject/src/Game/Module/Micheng/Config/MchLevelConfig.ts`
- `laya3d-framework/GameProject/src/Game/Module/Micheng/View/MchBoardView.ts`
- `laya3d-framework/GameProject/src/Game/Module/Micheng/View/MchEntityView.ts`
- `laya3d-framework/GameProject/src/Game/Module/Micheng/Ctrl/MchStageSceneCtrl.ts`
- `laya3d-framework/GameProject/src/Game/Module/Micheng/Debug/MchDebugEntry.ts`

当前第一阶段空棋盘已在 LayaAir 中接入成功；第二阶段基础实体占位已在 LayaAir 中验收通过。进入第三阶段后，调试开局已改为只放双方主塔，不再额外摆示例金矿、防御塔、兵营和士兵；本地代码会在玩家实体建筑相邻空格生成固定贴地图纸，显示 `25/50/100/250` 金币额度，点击图纸或对应六边形地板后，建筑从底部翻转落地并刷新新图纸。上一阶段用于验证图纸点击层级的试验小人已移除。

第四阶段已开始最小 HUD/经济接入：`MchHudView` 会显示绿/红金币、倒计时、绿/红占格数和提示；点击建造会按图纸价格扣金币，金币按基础速率增长，金矿会提高产金速率。HUD 当前按 720×1280 有效游戏画面布局，参考原型摆放为左上玩家信息、顶部居中倒计时、右上敌方信息、左下金币、右下功能占位，避免超出竖屏取景框。

第五阶段已开始最小战斗与占地接入：建筑和士兵已有血量；兵营建成后从相邻可走格出兵；士兵按格推进，不能进入实体建筑格，移动后占领所在格；士兵邻接敌方士兵或建筑时攻击，并会把自己脚下和被攻击目标所在格染成己方；主塔和防御塔会攻击范围内士兵但不阻止士兵移动。

当前 LayaAir 预览入口已临时切到咪城调试启动：`Game/Main.ts` 中 `FORCE_MICHENG_DEBUG_BOOT = true`，会直接创建 `MichengDebugRoot` 并挂载 `MchDebugEntry`，避免进入旧恐龙游戏流程。调试相机按 720×1280 竖屏取景框显示，默认对战视角保留用户喜欢的鸟瞰高度和 `orthographicVerticalSize = 11.8`，取景中心已回调到顶部略裁红色、底部多露绿色的中间位置；按 `V` 可切到更高的结算总览视角，接近参考图 2。金币额度左右读反和单个数字镜像问题已修正；第一关仍保留 9×16 棋盘尺寸，双方主堡初始位置从边缘内收一格以避免建筑被裁切。后续做正式入口时再替换该调试开关。

下一步待接入：

1. 图纸建造 LayaAir 运行验收与细化
2. HUD/经济 LayaAir 运行验收与细化
3. 战斗与占地 LayaAir 运行验收与细化
4. 胜负判定
5. AI
6. 贴边墙可破坏逻辑

## 下次开工建议

如果是周一或新对话，用户可直接说：

> 读取 `docs/handoff-2026-05-20.md`，继续《咪城大师》Laya3D 迁移。

如果要推进 Laya3D：

> 继续 Laya3D 第三阶段：接入图纸建造。

如果要整理周报：

> 生成本周周报和下周衔接文档。
