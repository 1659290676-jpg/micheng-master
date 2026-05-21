# Laya3D 迁移评估报告

**在线阅读**：<https://github.com/1659290676-jpg/micheng-master/blob/main/docs/laya3d-migration-assessment.md>

日期：2026-05-20  
目标：评估 `E:\CCfirst\laya3d-framework` 是否适合作为《咪城大师》Laya3D 版本框架，并明确可复用与需改造范围。

相关文档：[模块化设计](https://github.com/1659290676-jpg/micheng-master/blob/main/docs/module-architecture-plan.md) · [已确认规则](https://github.com/1659290676-jpg/micheng-master/blob/main/docs/accepted-rules.md) · [LayaAir 预览指南](https://github.com/1659290676-jpg/micheng-master/blob/main/docs/layaair-preview-guide.md) · [文档索引](https://github.com/1659290676-jpg/micheng-master/blob/main/docs/README.md)

## 结论

`laya3d-framework/GameProject` 是可用的 LayaAir/Laya3D TypeScript 工程，不是空模板。它包含启动入口、场景管理、UI 管理、配置表系统、关卡系统、3D 场景组件、Socket/平台 SDK/发布配置等。

建议采用“保留框架，替换核心玩法”的迁移方式：

- 当前 Phaser 版本继续作为玩法原型和验收基准。
- Laya3D 版本新建《咪城大师》玩法模块，接入已有框架的启动、UI、资源、场景、发布能力。
- 不建议把 Phaser 代码逐行复制到 Laya3D；应先抽出引擎无关规则，再用 Laya3D 做表现层。
- 只复用框架能力，不复用旧恐龙/城市空间玩法；旧玩法代码保留但不接入咪城入口，待咪城模块稳定后分阶段清理。

## 已识别的关键结构

| 路径 | 作用 | 迁移价值 |
|---|---|---|
| `GameProject/src/Game/Main.ts` | Laya 启动脚本，挂载 `XYFrame` 和 `Game` | 可直接用 |
| `GameProject/src/Game/Game.ts` | 初始化全局管理器、UI、登录流程 | 可复用，但需简化登录/线上模式 |
| `GameProject/src/Game/Scene/SceneManager.ts` | 3D 场景加载、退出、相机、工厂、粒子 | 可直接作为场景承载层 |
| `GameProject/src/Game/Scene/Ctrl/StageSceneCtrl.ts` | 当前关卡战斗控制器 | 不建议直接改造，建议新建 `MchStageSceneCtrl` |
| `GameProject/src/Game/Module/Stage/*` | 关卡 UI、胜负、关卡入口 | 可复用 UI 流程，需替换内容 |
| `GameProject/src/DataStock/ConfigData/*` | 自动生成配置表读取系统 | 可复用，需新增咪城配置表 |
| `GameProject/src/XYFrame/*` | UI、消息、资源、网络、Tween、工具 | 可直接用 |
| `GameProject/assets/editor/levelScene/*.ls` | 大量 Laya 3D 场景资源 | 可参考，但多数不适配当前 9x16 棋盘 |
| `GameProject/settings/*.json` | Laya 工程配置、分包、分辨率 | 可复用，需改项目名和资源包 |
| `Publish/` | 多平台发布产物和模板 | 不作为源码迁移入口 |

## 可以直接使用的能力

1. **启动与生命周期**
   - `Main.ts` 和 `Game.ts` 的脚本挂载方式可以继续使用。
   - `Game` 内已有管理器初始化流程，适合接入新的《咪城大师》模块。

2. **3D 场景加载**
   - `SceneManager.onEnter(res)` 已支持按关卡资源加载 prefab。
   - Laya 版本可建立一个专用 3D 棋盘场景，例如 `micheng_board.lh` 或 `micheng_stage.ls`。

3. **UI 框架**
   - `GameUI.register()`、`UIBase`、`XYFrame.UIMgr` 可复用。
   - 可新增 `Vw_MichengHud`、`Vw_MichengResult`、`Vw_MichengBuildTip`。

4. **消息总线**
   - `XYFrame.Msg` 和 `EnumMsg` 可继续承担金币、倒计时、建筑变化、胜负等事件。

5. **配置系统**
   - `DataStock/ConfigData` 已有配置读取模式，可把当前 `data/combat_balance.json`、`blueprint_weights.json` 迁成 Laya 配置表。

6. **资源、Tween、粒子、对象工厂**
   - 建筑落地、翻转、产兵、攻击飘字可以用现有 Tween/粒子/工厂能力实现。

7. **Socket/平台 SDK**
   - 当前核心玩法暂不需要联网，但二期实时 PVP 可评估复用 `SocketClient`。

## 需要改造或新建的部分

1. **核心玩法控制器**
   - 当前 `StageSceneCtrl` 是恐龙/城市破坏类玩法，逻辑体量大。
   - 建议新建 `Game/Module/Micheng/` 和 `Game/Scene/Micheng/`，不要直接在旧 `StageSceneCtrl` 里硬改。

2. **六边形棋盘**
   - 当前框架没有关卡化六边形棋盘系统。
   - 第一关为平顶 9x16，后续关卡地图尺寸、形状、障碍与初始布局需要配置化。
   - 需新建坐标、格子、邻居、点击拾取、占地、寻路模块。

3. **建造系统**
   - 主塔、金矿、防御塔、兵营、盲盒、空围墙均需新建 Laya3D 表现。
   - 逻辑可参考 Phaser 当前实现，但表现层重写。
   - 金矿和防御塔均为 50 金固定建造。
   - 实体建筑相邻建造图标一旦生成即固定，不应被士兵经过、占地变化或刷新改变。
   - Laya3D 点击层需保证建造图标点击优先级高于士兵。

4. **格内贴边墙系统**
   - 主塔、金矿、箭塔、兵营均需要沿平顶六边形边线生成格内贴边墙。
   - 相邻己方实体建筑之间的内部连接边需要合并隐藏。
   - 单边墙体血量为 80，士兵必须先击毁对应方向墙体，才能攻击建筑本体。

5. **士兵与战斗**
   - 当前 `PlayerController` 是 3D 角色移动/碰撞/攻击逻辑，不完全适合格子战斗。
   - 建议新建格子单位 `MchSoldier`，按格移动，不用自由移动碰撞作为主规则。

6. **美术资源适配**
   - 当前资源偏城市/恐龙框架，不是猫咪 IP。
   - 可以临时用占位 3D 几何体，后续替换 `assets/cats/` 与 Laya 资源。

7. **关卡配置**
   - 当前关卡表 `stage_001` 等可复用结构，但需要新增《咪城大师》关卡字段：
     - 棋盘尺寸
     - 棋盘形状
     - 障碍格
     - 初始阵营
     - 初始建筑
     - 抽卡池
     - 贴边墙规则
     - AI 参数
     - 胜负条件

8. **发布配置**
   - `BuildSettings.json` 内仍有旧项目名、远程 CDN、平台配置。
   - 迁移前需确认目标平台：网页、微信小游戏、抖音小游戏、安卓包。

## 推荐迁移路线

### 第 1 步：建立 Laya3D 分支工程

- 保留 `src/web` 作为 Phaser 原型。
- 在 `laya3d-framework/GameProject/src/Game/Module/Micheng/` 新增咪城模块。
- 不删除旧模块，先做到可以从调试入口进入咪城棋盘。
- 新增咪城专属入口，不从旧 `Vw_Stage`、旧 `StageSceneCtrl`、旧 `PlayerController` 进入游戏。

### 第 2 步：抽核心规则

先迁移这些纯逻辑：

- 六边形坐标与邻居
- 棋盘状态
- 建造合法性
- 抽卡池
- 经济与倒计时
- 士兵寻路与战斗数值
- 胜负判定

### 第 3 步：接 Laya3D 表现

- 生成第一关平顶 9x16 棋盘 Mesh/Prefab，并预留关卡化棋盘配置。
- 每格挂点击区域。
- 建筑使用占位模型。
- 按平顶六边形边线生成格内贴边墙，支持内部连接边合并。
- 士兵按格移动。
- UI 显示金币、倒计时、绿/红格数、toast。

### 第 4 步：对照 Phaser 原型验收

每迁移一个模块，都和当前网页版本对照：

- 是否同样能建造
- 盲盒概率是否一致
- 士兵是否从兵营出发
- 占地是否只由士兵推动
- 塔和主塔攻击是否符合数值

## 主要风险

1. **旧框架逻辑很重**
   - 直接改 `StageSceneCtrl` 容易牵动旧恐龙/城市玩法。
   - 应新建咪城专属控制器。

2. **自动生成 UI 文件不能手改**
   - `*.generated.ts` 应视为生成物，只改非 generated 文件。

3. **配置表生成链路需确认**
   - 需要弄清楚现有配置表从 Excel/JSON 到 TS 的生成工具，否则新增配置可能被覆盖或无法更新。

4. **Laya3D 资源格式需通过编辑器维护**
   - `.ls`、`.lh`、预制体资源建议用 LayaAir IDE 维护，代码只引用路径。

5. **玩法不应依赖物理碰撞**
   - 《咪城大师》是格子策略，核心规则应由格子系统决定，物理只做点击/表现辅助。

6. **旧内容误入新游戏**
   - 旧恐龙、城市、NPC、旧关卡 UI 只能保留为未调用代码。
   - 咪城必须有独立入口、独立场景控制器、独立棋盘和独立 UI。
   - 验收时需检查启动后没有旧恐龙角色、旧城市建筑、旧关卡地图和旧 UI。

## LayaAir 3.4.0-beta.3 联动说明

已安装 LayaAir 3.4.0-beta.3 可以先尝试直接打开：

`E:\CCfirst\laya3d-framework\GameProject`

当前迁移代码会放在 `GameProject/src/Game/Module/Micheng/` 下，LayaAir IDE 打开工程后可以看到这些 TypeScript 脚本。第一阶段会提供一个 `MchDebugEntry` 调试入口脚本，用于挂到空的 3D 节点上生成第一关 9x16 空棋盘。

暂不需要重新下载其他 Laya3D 引擎软件。只有当 LayaAir IDE 打开工程时报版本不兼容、脚本无法识别、或运行时报引擎 API 不匹配时，再考虑安装与框架匹配的 LayaAir 版本。

## 初步判断

这份框架适合承载《咪城大师》的 Laya3D 版本，但要按“新增咪城模块 + 逐步替换玩法”的方式做。第一阶段不建议接联网，也不建议直接改旧 `StageSceneCtrl`，先做离线 AI 对战的完整 3D 版本。
