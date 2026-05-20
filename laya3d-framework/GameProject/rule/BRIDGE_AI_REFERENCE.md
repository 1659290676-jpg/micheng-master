# Bridge 模块 AI 文档

> 分析范围：`src/Bridge`

---

## 1. 目录速览

- `BridgeManager.ts`：桥接总入口，负责 SDK 选择、平台实例化、统一对外 API、登录/授权回调、后端登录接口。
- `EnumBridgeResult.ts`：桥接结果码枚举（`SUCCESS=0`，`FAIL=1`）。
- `Platform/`
  - `PlatformBase.ts`：平台抽象基类（默认实现 + SDK 转发）。
  - `MiniPlatform.ts`：小游戏平台实现（能力最全，含分享、广告、录屏、订阅、开放数据等）。
  - `NativePlatform.ts`：LayaRuntime 原生壳平台实现，依赖 `window.conchMarket`。
  - `WebPlatform.ts`：H5 微端平台实现（当前继承默认行为）。
  - `DebugPlatform.ts`：本地调试平台，模拟录屏等行为。
  - `MiniShare.ts`：小游戏分享文案/图片轮换与缓存管理。
- `SDK/`
  - `SDKBase.ts`：SDK 抽象基类（初始化、登录、支付、上报、方法反射）。
  - `WechatSdk.ts`：微信/抖音小游戏登录流程（走 `wx.login + /api/openid`）。
  - `TiktokSdk.ts`：3k TikTok SDK 对接（`window.GameSDK` / `TTMinis.game`）。
  - `NativeSdk.ts`：原生壳 SDK 对接（`conchMarket` 回调注册）。
  - `TapPlusNativeSdk.ts`：TapPlus 原生扩展（继承 `NativeSdk`，补充登录与客服判定）。
  - `TestSdk.ts`：测试 SDK（离线默认账号 + 广告直通成功）。

---

## 2. 架构关系（核心理解）

- 关系链：`BridgeManager -> PlatformBase子类 -> SDKBase子类`。
- 选择逻辑在 `BridgeManager.onInit()`：
  - 先按 `gameInfo.sdk` 选择 SDK 类。
  - 再按运行环境选择平台类：
    - `DEBUG` -> `DebugPlatform`
    - `Laya.Browser.onLayaRuntime` -> `NativePlatform`
    - `BridgeManager.isMini` -> `MiniPlatform`
    - 其他 -> `WebPlatform`
- 业务层统一只调用 `BridgeManager.ins`，不直接依赖具体平台/SDK。

---

## 3. 关键接口与类型

### 3.1 结果码

- `EnumBridgeResult.SUCCESS = 0`
- `EnumBridgeResult.FAIL = 1`

约定：大部分桥接回调均返回 `{ code, msg?, data? }`。

### 3.2 原生桥接口 `NativeMarket`

定义于 `Platform/NativePlatform.ts`，关键能力：

- `initRegister(data: Record<string, Function>)`
- `initSdk(data, call)`
- `loginSdk(data, call)`
- `logout() / exit() / reload() / reLogin()`
- `vibrate({ type })`
- `invokeMethod({ method, data? }, call?)`

说明：`NativePlatform` 和 `NativeSdk` 都通过 `invokeMethod` 调原生能力。

---

## 4. BridgeManager 对外能力

`BridgeManager` 是业务应使用的唯一桥接入口。

### 4.1 生命周期与环境

- `BridgeManager.ins`：单例。
- `BridgeManager.getMini()`：返回 `wx/tt/my/...` 中可用小游戏对象。
- `BridgeManager.isMini`：是否小游戏环境。
- `platform`：当前平台实例。
- `userInfo`、`device`、`info`、`type`：上下文信息。

### 4.2 平台统一 API

- 初始化与账号：
  - `sdkInit(data?)`
  - `sdkLogin(data?)`
  - `sdkLogout()`
  - `sdkAuth(data?)`
- 支付/上报：
  - `sdkPay(data, call)`
  - `sdkReport(type, data)`
- 通用能力：
  - `showLoading(text)` / `hideLoading()`
  - `copyText(str, msg?)`
  - `checkCache(version, call)`
  - `rewardedVideoAd(data, call, startCall?)`
  - `vibrate(type)`
  - `reload()` / `exit()`
- 动态调用：
  - `invokeMethod({ method, data, call, other })`：调用平台方法。
  - `invokeSdkMethod({ method, data, call, other })`：调用 SDK 方法。

### 4.3 回调事件（Laya.stage）

BridgeManager 在内部回调中抛出的关键事件：

- `sdk_age_msg`
- `login_init_sdk`
- `login_user`
- `login_out`
- `init_auth`

说明：初始化/登录失败时会尝试读取 `LocalStorage.userInfo` 做离线兜底。

### 4.4 服务端接口能力

- `serverUrl`：从 `info.servHttp` 获取后台地址。
- `serverLoginApi(data, call)`：调用 `/api/login` 获取区服信息并缓存到 `server_info`。
- `syncGameDataToServer(data)`：调用 `/api/offline/sync` 同步离线数据。
- 签名规则：`Md5(timestamp + '_' + platform + '_' + secretKey).toUpperCase()`。

---

## 5. PlatformBase 统一能力面

`PlatformBase` 提供“可覆写 + 默认降级”的能力集合，主要包括：

- SDK转发：`initSdk`、`login`、`logout`、`initAuth`、`pay`、`report`、`checkMsg`。
- UI/系统：`showLoading`、`hideLoading`、`closeLoginBg`、`openWebView`、`openLog`、`vibrate`。
- 社交/广告：`share`、`rewardedVideoAd`、`intersititialAd`。
- 生态能力：
  - `isAddShortcut`、`addShortcut`、`getShortcutReward`
  - `getSiderReward`、`openSider`
  - `isSubscribeMsg`、`onSubscribeMsg`
- 运行控制：`reload`、`reLogin`、`exit`。
- 其他：`onCopyText`、`getBattery`、`onCustomer`。

设计要点：默认实现尽量“不崩溃 + debug可跑通”，平台子类按需覆盖。

---

## 6. 主要平台实现差异

### 6.1 MiniPlatform（小游戏）

- 能力最完整，覆盖：
  - 隐私授权（`initAuth` / `openPrivacyAuth` / `checkAuth` / `authorize`）
  - 分享与分享结果（`share` + `MiniShare`）
  - 广告（激励视频、插屏）
  - 录屏/分享录屏（`startRecord` / `stopRecord` / `shareToArk`）
  - 侧边栏、桌面图标、订阅消息、俱乐部按钮
  - 开放数据域、日志、设备信息、前后台页面展示
- 兼容多个小游戏平台 API（通过 `BridgeManager.getMini()` 获取）。

### 6.2 NativePlatform（原生壳）

- 调用 `conchMarket` 的 `invokeMethod` 完成剪贴板、电量、震动、客服、隐私中心等能力。
- `exit/reload/reLogin` 走壳层能力，不用浏览器刷新。

### 6.3 DebugPlatform / WebPlatform

- `DebugPlatform` 增加调试录屏模拟逻辑。
- `WebPlatform` 当前未扩展，沿用 `PlatformBase` 默认实现。

---

## 7. SDK 实现差异

- `SDKBase`：默认全部成功回调，适合兜底与本地调试。
- `WechatSdk`：小游戏登录后请求 `/api/openid` 换取 `openId`。
- `TiktokSdk`：对接 3k `GameSDK`，含支付、桌面图标、侧边栏、广告与角色上报。
- `NativeSdk`：对接原生市场登录/支付/广告，并把设备信息回填 `BridgeManager.ins.device`。
- `TapPlusNativeSdk`：在 `NativeSdk` 上增加 TapPlus 登录换票据流程与客服入口控制。
- `TestSdk`：固定测试用户，广告直接成功，便于开发联调。

---

## 8. 代码约定与易错点

1. **统一入口**：业务代码优先调用 `BridgeManager.ins`，避免直接依赖 `Platform`/`SDK` 子类。  
2. **回调结构**：保持 `{ code, msg?, data? }`，成功码默认按 `EnumBridgeResult`。  
3. **拼写兼容**：保留已有方法名（如 `showShlash`、`intersititialAd`、`creareContactBtn`），不要随意改名。  
4. **离线容错**：`sdkInit/login` 失败有本地缓存兜底逻辑，改动需保留。  
5. **签名与字段**：登录/同步接口签名和 header 键名（`pf/time/sign`）需保持一致。  
6. **平台判定**：新增平台行为优先放 `Platform` 层；渠道差异放 `SDK` 层。  

---

## 9. 给 AI 的扩展模板建议

- 新增平台能力时优先顺序：
  1) 在 `PlatformBase` 增加默认实现（debug 兜底）。  
  2) 在 `MiniPlatform` / `NativePlatform` 覆写平台细节。  
  3) 若依赖渠道 SDK，再在对应 `SDK` 子类补实现。  
  4) 通过 `BridgeManager.invokeMethod` 或专用包装方法暴露给业务层。  

- 新增 SDK 渠道时：
  1) 新建 `SDK/*Sdk.ts` 继承 `SDKBase`。  
  2) 在 `BridgeManager.getSdkCls()` 注册 `gameInfo.sdk` 路由。  
  3) 保证 `init/login/pay/report` 至少实现核心链路。  

---

*该文档用于 AI 辅助编码和评审；若 Bridge 能力有新增，请同步更新本文件。*
