# GameProject（Laya 3.x）AI 编程上下文

> 用途：供后续在 Cursor 等环境中做 AI 辅助开发时快速对齐工程约定与目录语义。分析范围仅限 `src/` 与 `assets/` 的业务含义；未读取任何 `.meta` 文件内容。

---

## 1. 技术栈与入口

- **引擎**：Laya 3.x（`@regClass()`、`Laya.Script`、`@property()`、场景/预制体工作流）。
- **运行时入口**：`src/Game/Main.ts` 在 `onStart` 中依次挂载 `XYFrame`、`Game` 两个脚本组件，先框架后游戏逻辑。

---

## 2. 目录结构说明（仅 `src` 与 `assets`，递归视角）

> 本节只描述 `src/` 与 `assets/`，并按递归子目录组织。

### 2.1 `src/` 递归结构与职责

#### `src/Bridge/`

- `BridgeManager.ts`：桥接总入口（平台选择、SDK调用、登录回调、服务端登录接口）。
- `EnumBridgeResult.ts`：桥接结果码。
- `Platform/`：平台实现层（`MiniPlatform`、`NativePlatform`、`WebPlatform`、`DebugPlatform`、`MiniShare`）。
- `SDK/`：渠道SDK实现层（`WechatSdk`、`TiktokSdk`、`NativeSdk`、`TapPlusNativeSdk`、`TestSdk`、`SDKBase`）。

#### `src/DataStock/`

- `ConfigData/`
  - `ConfigData.ts`：配置聚合入口（自动生成）。
  - `Ts/`：各业务配置表类型定义（`Config_*.ts`）。
- `GameData/`：静态游戏数据定义与常量。
- `LanguageMgr.ts`：多语言管理。

#### `src/Eidtor/`（工程拼写）

- `Build/`
  - `Plugin/`：平台构建插件（Android/WX/MiniGame/BuildSetting）。
  - `XYBuild.ts`：构建流程入口。
- `Export/`、`Importer/`、`Inspector/`、`Level/`、`UI/`：编辑器扩展能力。

#### `src/Game/`

- `Main.ts`、`Game.ts`、`GameUI.ts`、`GameModel.ts`：运行入口与业务总控。
- `Module/`：玩法模块层（登录、主界面、关卡、商店、战令、竞技场、火焰试炼、角色等）。

#### `src/XYFrame/`

- `XYFrame.ts`：框架入口。
- 核心子模块（递归）：
  - `Audio/`、`Effect/`、`Logger/`、`Message/`
  - `MovieClip/`、`Spine/`
  - `Network/`（Socket、协议处理、字节流、模型基类）
  - `Pool/`、`Resource/`、`Storage/`
  - `Timer/`、`Tween/`、`UI/`、`Utils/`
  - `Base/`、`Define/`、`Design/`、`RepairEngine/`、`d.ts/`

#### `src/d.ts/` 与 `src/__tests__/`

- `d.ts/`：工程级声明补充（例如 `Window` 扩展）。
- `__tests__/`：单元测试与回归脚本。

---

### 2.2 `assets/` 递归结构与职责

#### `assets/resources/`（运行时资源根）

- `audio/`：音效/音乐资源。
- `cfg/`：运行时配置资源。
- `effect/`、`font/`、`image/`、`map/`、`movie/`、`spine/`：特效、字体、图片、地图、帧动画、Spine资源。
- `scene/`（场景资源递归）：
  - `building/`（建筑相关）
  - `ground/`（地表相关）
  - `level/`（关卡场景）
  - `unit/`（单位与角色）
- `ui/`（UI资源递归）：
  - `atlas/`（UI图集）
  - `prefab/`（UI预制体）

#### `assets/editor/`（编辑器源资源）

- `levelScene/`：关卡源场景（`.ls`）。
- `uiScene/`：UI源场景（`.ls`）。
- `stagePos/`：关卡站位编辑场景。
- `templet/`：模板场景。
- `widget/`：编辑器组件定义（与 `src/Eidtor` 配套）。
- `art/`：美术标注和设计辅助素材。

#### `assets` 其他子目录

- `login/`：登录相关静态资源。
- `plugin/`：插件与版本脚本。
- `localize/`：本地化/多语言资源目录（按项目需要启用）。

---

## 3. 启动与全局单例约定

- **`Game`（`src/Game/Game.ts`）**  
  - `onAwake` 中 `initManager()`：按 `getMgrMap()` 将 `BridgeManager`、`LoginManager`、`GameModel`、`SceneManager`、`SystemMgr`、`StepMgr`、`GuideMgr` 等挂到 `Game` 静态与实例上。  
  - `GameUI.register()` 注册全部 UI 与层级。  
  - 静态字段如 `Game.isOnline`、`Game.Bridge`、`Game.Model` 等供全局访问。  
  - 前后台：`Laya.Event.VISIBILITY_CHANGE` 中设置 `XYFrame.pause` 并 `XYFrame.Msg.emit(EnumMsg.M_GAME_VIS, ...)`。

- **`XYFrame`（`src/XYFrame/XYFrame.ts`）**  
  - 初始化 Pool、Message、Audio、Resource、UI、Socket、Timer、Tween、Storage、Coroutine、Effect 等子管理器。  
  - `XYFrame.pause` 与 `Laya.Event.PAUSED` 联动。

---

## 4. `Game` 内常见命名与模块划分

- **视图**：`Vw_*.ts`（如 `Vw_Main`、`Vw_Stage`、`Vw_Login`），与 `GameUI.ts` 中 `XYFrame.UIMgr.register` 绑定；注意 `EnumUILayer` 分层（Normal、Pop、Guide、Scene 等）。
- **数据模型**：`Model_*.ts`，由 `GameModel` 统一 `register`（如 `hero`、`bag`、`stage`、`arena`、`fireTrial`、`warOrder` 等）。
- **列表项/小组件**：`Item_*.ts`、`Comp/*` 等。
- **生成/运行时 UI 脚本**：大量 `Runtime_*.ts` 与 `*.generated.ts`，通常与编辑器导出或预制体绑定；修改前需确认是否由工具覆盖。
- **场景玩法**：`Game/Scene/` 含 `SceneManager`、各类 `Ctrl`/`Logic`、`Unit`、`Skill`、`Components` 等 3D/关卡逻辑。
- **消息**：业务事件集中在 `EnumMsg`；框架层也会使用 `Laya.Event` 等。

---

## 5. `DataStock` 与配置表

- **`ConfigData/ConfigData.ts`** 文件头标注为**自动生成，请勿手改**；聚合各 `Ts/Config_*.ts` 并提供 `getCfgData`、`getXxx(key)` 等访问器。
- **单表类型**：`ConfigData/Ts/Config_*.ts` 与 `CfgDeclare.d.ts` 等配合 TypeScript 类型。
- **AI 建议**：新增或改表应走项目既有导表/生成管线，避免直接编辑聚合文件导致下次生成覆盖。

---

## 6. `Bridge` 平台与 SDK

- **`BridgeManager`**：根据 `gameInfo.sdk` 选择 `SDKBase` 子类（debug/test/wechat+douyin/tiktok/seasAndroid 等）；`getMini()` 聚合各小游戏全局对象（wx/tt/my 等）；`isMini` 基于 `Laya.Browser` 各小游戏开关。
- **`Platform`**：`MiniPlatform`、`NativePlatform`、`WebPlatform`、`DebugPlatform` 等继承 `PlatformBase`。
- **`SDK`**：`WechatSdk`、`TiktokSdk`、`TapPlusNativeSdk`、`NativeSdk`、`TestSdk` 等。

---

## 7. `assets` 目录语义（不含 .meta 内容）

### 7.1 运行时资源根：`assets/resources/`

与代码中 `ResPath.RES_ROOT = "resources/"` 一致（加载时一般带此前缀）。主要子树：

- **`resources/audio/`**：UI/战斗等音效与音乐（如 `ui/*.mp3`）。
- **`resources/cfg/`**：运行时配置数据（若存在 json 等）。
- **`resources/image/`、`resources/map/`、`resources/movie/`、`resources/spine/`**：单图、地图、序列帧、Spine 等。
- **`resources/scene/`**  
  - `level/`：关卡场景预制 `.lh`（如各城市/主题命名）。  
  - `ground/`：`prefab/` 地表预制、`fbx/` 源模型（运行时通常用预制）。  
  - `building/`：建筑预制。  
  - `unit/`：单位、角色、恐龙等 `prefab/`、`fbx/`、`baking/` 烘焙资源。
- **`resources/ui/`**  
  - `atlas/`：按模块分子目录的图集 png 等。  
  - `prefab/`：与 `Vw_*` 对应的 `.lh`（如 `main/`、`setting/`、`arena/`、`warOrder/`、`fireTrial/`、`shop/` 等）。

**Laya 约定补充**：预制体扩展名为 `.lh`，场景为 `.ls`（编辑器侧 `assets/editor` 下多为 `.ls`）。

### 7.2 编辑器专用：`assets/editor/`

- **`levelScene/`**：关卡/大地图场景源 `.ls`（与 `resources/scene/level` 等成对迭代）。  
- **`uiScene/`**：如 `login/Vw_Login.ls` 等 UI 场景源。  
- **`stagePos/`**：如 `StagePos.ls` 关卡站位编辑。  
- **`templet/`**：如 `LevelTemplet.ls` 模板场景。  
- **`widget/`**：如 `BuildWxGameDialog.widget` 与 `src/Eidtor` 构建脚本联动。  
- **`art/`**：美术标注、参考图等（大量为设计辅助，非运行时 bundle 核心）。

### 7.3 其他

- **`assets/login/`**：登录相关静态图（如 logo）。  
- **`assets/plugin/`**：如 `version.js` 等插件脚本。

---

## 8. 资源路径代码锚点

- 统一常量：`src/XYFrame/Resource/ResPath.ts`（`RES_UI`、`UI_PREFAB`、`RES_SCENE_DIR`、扩展名 `EXT_PREFAB = ".lh"`、`EXT_SCENE = ".ls"` 等）。
- UI 图集枚举与配置引用：`src/Game/EnumAtlas.ts` 等与 `ConfigData` 的配合。

---

## 9. 给 AI 的实操约束（摘要）

1. **优先改 `src` 逻辑与可维护资源**；大规模改 `assets` 下 `.lh/.ls` 需考虑编辑器与协作流程。  
2. **勿手改** `ConfigData.ts` 等标注自动生成的聚合文件。  
3. **谨慎修改** `*.generated.ts` / `Runtime_*.ts`：可能由 Laya 或内部工具生成。  
4. **新增 UI**：通常需同时有 `Vw_*` 脚本、`resources/ui/prefab/` 下预制，并在 `GameUI.register()` 注册层级。  
5. **新增配置表行/列**：跟既有 Excel→TS 导出流程，并更新对应 `Config_*` 与声明。  
6. **小游戏/原生差异**：条件编译或分支放在 `Bridge`/`Platform`，避免在 `Game` 视图层硬编码环境判断。  
7. 目录 **`Eidtor`** 为工程固定拼写，搜索或文档时不要误写为 `Editor`（除非指 `assets/editor`）。

---

## 10. 关键文件速查

| 用途 | 路径 |
|------|------|
| 入口脚本 | `src/Game/Main.ts` |
| 游戏总控 | `src/Game/Game.ts` |
| UI 注册表 | `src/Game/GameUI.ts` |
| Model 聚合 | `src/Game/GameModel.ts` |
| 框架入口 | `src/XYFrame/XYFrame.ts` |
| 资源路径常量 | `src/XYFrame/Resource/ResPath.ts` |
| 桥接入口 | `src/Bridge/BridgeManager.ts` |
| 配置总表 | `src/DataStock/ConfigData/ConfigData.ts` |

---

*本文档仅描述结构与约定；具体 API 以源码为准。若工程目录后续有重大调整，建议重新生成本文档。*
