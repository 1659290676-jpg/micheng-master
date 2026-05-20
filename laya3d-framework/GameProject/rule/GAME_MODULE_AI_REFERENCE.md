# Game 模块 AI 开发文档（排除 Scene）

> 分析范围：`src/Game`  
> **明确排除**：`src/Game/Scene` 目录及其实现细节不在本文分析范围内。

---

## 1. 文档目标

本文用于后续 AI 在 `src/Game` 范围内做需求开发、问题修复、功能扩展时快速对齐工程结构与约定，重点覆盖：

- 启动入口与管理器装配
- 登录流程（Step 链）与在线/离线切换
- Model 管理、UI 注册、消息总线、存档键值
- `Module/*`（不含 `Module/Scene`）模块职责与落点建议

---

## 2. `src/Game` 目录结构（排除 Scene 后）

### 2.1 根文件职责

- `Main.ts`：游戏根入口，挂载 `XYFrame` 与 `Game`。
- `Game.ts`：游戏总控，初始化管理器、注册 UI、前后台切换事件。
- `GameModel.ts`：所有业务 Model 聚合、生命周期分发、离线缓存汇总。
- `GameUI.ts`：所有 UI 类向 `XYFrame.UIMgr` 注册的中心表。
- `SystemMgr.ts`：系统开启/显示条件管理（监听关卡等级变化）。
- `EnumMsg.ts`：全局消息枚举（按数值分段组织）。
- `EnumUI.ts`：主 UI ID 枚举（功能入口类 UI）。
- `EnumAtlas.ts`：UI 图集名称常量。
- `EnumStorageKey.ts`：Model 本地缓存 key 常量。

### 2.2 `Module/` 一级目录（仅列分析范围）

- `Advert/`
- `Arena/`
- `Bag/`
- `Common/`
- `Component/`
- `fireTrial/`
- `Global/`
- `Gm/`
- `Guide/`
- `Hero/`
- `Login/`
- `Main/`
- `Offline/`
- `Recharge/`
- `Role/`
- `Setting/`
- `Shop/`
- `Stage/`
- `Tip/`
- `WarOrder/`
- （`Scene/` 已按需求排除）

---

## 3. 启动与管理器装配链路

### 3.1 启动顺序

1. `Main.onStart()`  
2. 挂载 `XYFrame`（框架层）  
3. 挂载 `Game`（业务层）  
4. `Game.onAwake()` -> `initManager()` + `GameUI.register()`  
5. `Game.LoginMgr.build(false)` 启动登录步骤链

### 3.2 Game 静态管理器（全局入口）

`Game` 将以下对象挂到静态字段，业务代码常通过 `Game.xxx` 访问：

- `Game.Bridge`
- `Game.LoginMgr`
- `Game.Model`
- `Game.SceneMgr`（存在但本文不分析其内部）
- `Game.SysMgr`
- `Game.StepMgr`
- `Game.GuideMgr`

### 3.3 前后台切换

`Game` 监听 `Laya.Event.VISIBILITY_CHANGE`：

- 同步 `XYFrame.pause`
- 通过 `XYFrame.Msg.emit(EnumMsg.M_GAME_VIS, bo)` 广播业务层

---

## 4. 登录流程（LoginManager）— 核心工作流

`LoginManager.build()` 构建一个顺序 `StepData[]`，由定时器驱动逐步执行，核心步骤包括：

- 打开登录 UI
- SDK 初始化 / 平台登录 / 授权
- 本地化数据、字体、语言包加载
- 配置表与服务器配置加载
- 连接 Socket + 上报离线缓存
- 检查角色与服务器 ready
- 初始化后置逻辑、资源池、主界面

关键特性：

- 支持 `buildRelogin()` 断线重连流程（精简步骤）
- 通过 `onLock/unLock` 控制异步步骤并发与推进
- 通过 `EnumMsg.LOGIN_DES` 更新加载文案与进度
- 使用 `BridgeManager` + `Laya.stage` 事件桥接 SDK 回调

---

## 5. Model 体系（GameModel）

### 5.1 注册与聚合

`GameModel.onInit()` 统一注册：

- `hero` / `bag` / `gm` / `setting` / `global`
- `recharge` / `warOrder` / `advert` / `arena`
- `fireTrial` / `shop` / `stage` / `stamina`

所有 Model 继承 `XYFrame/Network/BaseModel`，使用 Socket 协议驱动（`registerCmd`）。

### 5.2 生命周期分发

`GameModel` 对所有 model 统一分发：

- `initCache()` / `initCacheEnd()`
- `initBeforeEnter()`
- `initAfterEnter()`
- `clearData()`
- `offLine()`
- `dealZero()`

### 5.3 延迟打开机制（登录完成后）

`openByObj` / `openCall` 会把“打开 UI 或回调”加入队列，按顺序延迟执行，避免登录阶段与初始化阶段 UI 冲突。

---

## 6. UI 体系（GameUI + Vw_*）

`GameUI.register()` 是 UI 注册总表，决定：

- UI 类是否可被 `open`（未注册不能打开）
- UI 层级（`EnumUILayer`）
- 是否模态、是否可点击背景关闭、是否多实例

常见约定：

- `Vw_*`：窗口类
- `Runtime_*.ts` / `*.generated.ts`：编辑器生成绑定层（慎改）
- 核心页面如 `Vw_Main`、`Vw_Login`、`Vw_Stage`、`Vw_SceneStage` 都在此注册

---

## 7. 消息体系（EnumMsg）与分段

`EnumMsg` 按数值段划分语义，便于维护：

- `1-99`：登录阶段
- `100-149`：场景阶段
- `150-199`：系统开启
- `200-299`：关卡/战斗阶段
- `300-349`：关卡数据
- `350-399`：角色属性
- `400-449`：背包
- `450-499`：框架级（RESIZE、ZERO_POINT、前后台等）
- `500+`：商店、广告、竞技场、火焰试炼、战令等

AI 开发建议：

- 新事件优先落到对应段位，避免“消息 ID 污染”
- 事件命名尽量沿用现有前缀（`LOGIN_`、`STAGE_`、`WAR_ORDER_` 等）

---

## 8. 存档键与缓存约定

`EnumStorageKey` 统一定义 Model 缓存 key：

- `Hero` / `Stage` / `Bag` / `Setting`
- `WarOrder` / `Advert` / `FireTrial`
- `Arena` / `Stamina`

与 `BaseModel.getStorageKey()`、`StorageMgr` 协同使用。  
已上线键结构不建议破坏性修改。

---

## 9. 模块职责说明（`Module/*`，排除 `Scene`）

> 以下为便于 AI 实现需求的“功能定位图”。

- `Advert/`：广告相关模型与状态（观看结果、进度、奖励发放联动）。
- `Arena/`：竞技场页面与数据模型、匹配/挑战/奖励相关流程。
- `Bag/`：背包道具管理、货币与道具增减逻辑。
- `Common/`：通用弹窗/提示 UI（奖励、描述、确认等）。
- `Component/`：基础 UI 组件（按钮基类等复用组件）。
- `fireTrial/`：火焰试炼玩法模型与多页面流程（入口/匹配/胜利/引导）。
- `Global/`：全局协议、系统时间、前后台/断线等跨模块公共状态。
- `Gm/`：GM 工具与调试协议页面（开发态常用）。
- `Guide/`：引导管理（`GuideMgr`、步骤、遮罩状态、系统开启后引导接入）。
- `Hero/`：角色核心属性、成长、外观、名字等主模型。
- `Login/`：登录流程与登录 UI、区服列表、登录步骤控制。
- `Main/`：主界面、主流程步骤管理（`StepMgr`）、主页各入口组件。
- `Offline/`：断线与离线处理（重连、提示、回到登录策略）。
- `Recharge/`：充值模块模型与商店/支付联动。
- `Role/`：角色详情/头像/改名等 UI 交互。
- `Setting/`：设置页与设置模型（音量、开关等偏好项）。
- `Shop/`：商店逻辑与购买协议，含离线模拟购买路径。
- `Stage/`：关卡 UI 与关卡数据模型（不涉及 `Scene` 的实时场景控制实现）。
- `Tip/`：消息提示、道具提示与轻量反馈模块。
- `WarOrder/`：战令页面、任务进度、奖励领取模型。

---

## 10. 重点开发入口（不含 Scene）

### 10.1 新增一个玩法模块（推荐路径）

1. 在 `Module/<YourModule>/` 新建 `Model_*.ts` 和 `Vw_*.ts`  
2. 在 `GameModel.onInit()` 注册新 model  
3. 在 `GameUI.register()` 注册新 UI  
4. 在 `EnumMsg` 增加事件并在相关模型/UI中订阅  
5. 如需本地缓存，补 `EnumStorageKey` 与 model 的 `getStorageKey`

### 10.2 新增一个主界面入口按钮

1. 修改 `Module/Main/Runtime_*` 与 `Vw_Main.ts`  
2. 按系统开启条件接入 `SystemMgr`  
3. 需要引导时在 `GuideMgr` 映射中增加目标  
4. 目标窗口在 `GameUI.register()` 注册后再打开

### 10.3 新增协议处理（Model）

1. 在对应 `Model_*` 的 `registerCmd()` 里 `mgr.listen(cmd, handler, this)`  
2. 发送协议通过 `getBytes()` + `sendCmd(cmd, bytes)`  
3. 在线/离线分支需与 `Game.isOnline` 保持一致  
4. 需要离线模拟时参考 `Model_Store.simulate*` 模式

---

## 11. AI 修改约束（针对 `src/Game`）

1. **不改 Scene 逻辑**：本轮需求明确排除 `src/Game/Scene`。  
2. **谨慎改生成文件**：`Runtime_*.ts` / `*.generated.ts` 可能被覆盖。  
3. **保持消息分段**：`EnumMsg` 新增事件按段落管理。  
4. **保持注册中心同步**：新增 Model/UI 必须同步 `GameModel`/`GameUI`。  
5. **保留离线路径**：涉及购买/登录/断线时需同时考虑 `Game.isOnline=false`。  

---

*本文件聚焦 `src/Game` 非 Scene 范围。若后续要做战斗场景逻辑开发，请单独建立 `Scene` 专项文档。*
