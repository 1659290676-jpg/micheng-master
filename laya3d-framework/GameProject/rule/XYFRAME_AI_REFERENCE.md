# XYFrame 框架 AI 说明文档

> 范围：`src/XYFrame` 目录；侧重**类型/接口**与模块职责，便于 AI 改代码时对齐约定。

---

## 1. 模块目录结构（按文件夹）

| 路径 | 职责摘要 |
|------|-----------|
| `XYFrame.ts` | 框架入口脚本：挂载并初始化各 Manager，对外静态属性见第 3 节。 |
| `Base/` | `Singleton` 单例基类。 |
| `Message/` | `Message` 事件总线（`on` / `once` / `off` / `emit`）。 |
| `Logger/` | `Logger` 静态日志与 `LogConfig`。 |
| `Pool/` | `PoolManager`、`ObjectPool` 通用对象池。 |
| `Resource/` | `ResourceManager` 异步加载与回收、`ResPath` 路径常量。 |
| `UI/` | `UIManager`、`UIBase`、`UILayout`、`UILayer`、`EnumUILayer`。 |
| `Network/` | `SocketMgr`、`SocketClient`、`ProtocolHandler`、`BaseBytes`、`BaseModel`、`EnumSocket`、`Vo_CacheData` 等。 |
| `Timer/` | `Timer`、`CoroutineManager`。 |
| `Tween/` | `Tween`、`TweenTask`、`Ease`。 |
| `Audio/` | `AudioMananger`（拼写如此）。 |
| `Effect/` | `EffectManager`、`ItemEffectBase` 及 MC/Spine/粒子子类。 |
| `Storage/` | `StorageMgr` 本地持久化（Base64 + JSON）。 |
| `Spine/`、`MovieClip/` | Spine / 序列帧封装与加载。 |
| `Design/` | `GameDesign` 安全区与显示尺寸计算。 |
| `RepairEngine/` | `RepairEngine` 等对引擎原型补丁、`AtlasLoader`、`RepairHierarchyParser`。 |
| `Utils/` | `HttpUtils`、`ClassUtils`、`UIUtils` 等工具类。 |
| `Define/` | `HashObject` 等。 |
| `d.ts/`、`IXYFrame.d.ts` | 全局/跨模块 **interface** 声明。 |

---

## 2. 全局与跨模块接口（`d.ts` / 声明文件）

以下多为**全局声明**（无 `export`），实现类需与之形状一致。

### 2.1 `ICallBack`（`IXYFrame.d.ts`）

| 字段 | 类型 | 说明 |
|------|------|------|
| `caller?` | `any` | 回调执行域。 |
| `method?` | `Function` | 回调函数。 |
| `args?` | `any` | 透传参数。 |

用于资源加载队列等处的「域 + 方法 + 参数」描述（与 Laya 自带 `Handler` 不同名）。

### 2.2 `IClear`（`d.ts/IClear.d.ts`）

| 成员 | 说明 |
|------|------|
| `clear?()` | 可选；清理/重置对象，去除脏数据。 |

### 2.3 `IDestory`（`d.ts/IDestroy.d.ts`，接口名为 `IDestory`）

> 文件名是 `IDestroy.d.ts`，接口标识符为 **`IDestory`**（工程内拼写）。

| 成员 | 说明 |
|------|------|
| 继承 | `extends IClear` |
| `destroy()` | 销毁实例。 |

**实现方示例**：`Singleton`、`Message` 声明 `implements IDestory`。

### 2.4 `IPool`（`d.ts/IPool.d.ts`）

| 成员 | 说明 |
|------|------|
| 继承 | `extends IDestory` |
| `recover?()` | 可选；归还到对象池时调用。 |

**实现方示例**：`ObjectPool<T extends IPool>`、`MovieClipData`、`ItemEffectBase`（`implements IPool`）等。

### 2.5 `ObjectPoolOptions`（`d.ts/IPool.d.ts`）

| 字段 | 类型 | 说明 |
|------|------|------|
| `maxSize?` | `number` | 最大空闲数量，默认无上限。 |
| `initCount?` | `number` | 预创建数量。 |
| `initArgs?` | `any[]` | 创建时传入 `createFn` 的参数。 |

### 2.6 `ICacheData`（`d.ts/ICacheData.d.ts`）

用于可序列化进 `Vo_CacheData` 的值对象。

| 成员 | 说明 |
|------|------|
| `setByStorage(data: any)` | 从持久化数据恢复；**已发布版本结构勿随意改**。 |
| `toStorage(): any` | 导出为可 JSON 化的结构。 |

### 2.7 `Dictionary<T>`、`Class<T>`（`d.ts/Common.d.ts`）

| 名称 | 说明 |
|------|------|
| `Dictionary<T>` | 同时支持 `string` / `number` 键的字典索引签名。 |
| `Class<T>` | `new(...arg): T` 的构造函数类型。 |

### 2.8 `IDepSprite`（`MovieClip/IDepSprite.d.ts`）

| 成员 | 说明 |
|------|------|
| 继承 | `extends IPool` |
| `depVal` | `number`；同容器内 z 序，越大越靠上。 |

---

## 3. `XYFrame` 入口暴露的静态管理器

`XYFrame` 类（`XYFrame.ts`）在 `onAwake` 中初始化后，业务代码通过 **`XYFrame.xxx`** 访问：

| 静态属性 | 类型（概念） | 用途 |
|-----------|----------------|------|
| `PoolMgr` | `PoolManager` | 对象池注册与 `getObj` / `releaseObj` 等。 |
| `Msg` | `Message` | 全局事件。 |
| `AudioMgr` | `AudioMananger` | 音乐/音效。 |
| `ResMgr` | `ResourceManager` | 资源加载与释放。 |
| `UIMgr` | `UIManager` | UI 打开关闭与层级。 |
| `SocketMgr` | `SocketMgr` | 多 Socket、协议收发。 |
| `Timer` | `Timer` | 帧驱动定时器。 |
| `Tween` | `Tween` | 缓动单例 `Tween.getInst()`。 |
| `StorageMgr` | `StorageMgr` | 账号维度本地缓存。 |
| `CoroutineMgr` | `CoroutineManager` | `async/await` 用等待秒/帧。 |
| `EffectMgr` | `EffectManager` | UI 上 MC/Spine 等特效。 |

另有静态属性 `pause`：与前后台、游戏暂停联动。

---

## 4. 各子系统：内部/导出类型与对外接口

### 4.1 网络 `Network/`

#### `ISocketConfig`（`SocketClient.ts` `export interface`）

| 字段 | 类型 | 说明 |
|------|------|------|
| `url` | `string` | 服务器 WebSocket 地址。 |
| `autoReconnect?` | `boolean` | 是否自动重连。 |
| `reconnectInterval?` | `number` | 重连间隔 ms。 |
| `maxReconnectAttempts?` | `number` | 最大重连次数。 |
| `heartbeatInterval?` | `number` | 心跳间隔 ms。 |
| `heartbeatTimeout?` | `number` | 心跳超时 ms。 |
| `connectTimeout?` | `number` | 连接超时 ms。 |

#### `SocketState`、`SocketEvent`（`SocketClient.ts` `export enum`）

- `SocketState`：`CLOSED` / `CONNECTING` / `CONNECTED` / `CLOSING`。
- `SocketEvent`：连接成功/失败/关闭、消息、错误等字符串事件名（同时作 `Message` 事件 type）。

#### `SocketClient extends Message`

在 `SocketMgr.getSocket(id, config?, autoBind?)` 中创建；对外含连接/断开、`on`/`emit` 继承自 `Message`。

#### `SocketMgr`

| 要点 | 说明 |
|------|------|
| `sendByte` | `BaseBytes`，组包发送缓冲区。 |
| `getHandler()` | 返回 `ProtocolHandler`。 |
| `getSocket(id, config?, autoBind?)` | 按 `EnumSocket` 创建或复用连接。 |
| `listen(cmd, callBack, thisObj)` | 注册协议号回调。 |
| `removeSocket` / `connect` / `disconnect` | 连接生命周期。 |

#### `ProtocolHandler`（内部类型，非 export）

| 名称 | 形状摘要 |
|------|-----------|
| `MessageHandler` | `{ callback: (ctx, data: BaseBytes, socketId, isSimulate?) => void; caller: any }` |
| `CmdSocketConfig` | `{ sockets: number[]; mode: SocketSendMode }` |

#### `EnumSocket`、`SocketSendMode`（`EnumSocket.ts`）

- `EnumSocket`：当前含 `DEFAULT = 0`，可扩展多线路 ID。
- `SocketSendMode`：`ALL`（全发）、`ANY`（任一成功即停）。

#### `BaseModel`

| 可覆写/使用 | 说明 |
|-------------|------|
| `getOfflineData?(isReconnect?)` | 登录上报离线数据时重载。 |
| `getStorageKey()` / `getStorageData()` | 与 `StorageMgr` 联动的 Model 级持久化。 |
| `cacheVo` | `Vo_CacheData`，内存缓存块。 |
| `registerCmd` | 子类注册协议（具体在基类后半部分）。 |

---

### 4.2 资源 `Resource/`

#### `IRes`（`ResourceManager.ts` 内部 `interface`）

| 字段 | 说明 |
|------|------|
| `path` / `type` / `level` | 路径、类型、加载优先级。 |
| `asset` | 加载完成后的资源引用。 |
| `status` | 内部 `LoadingStatue` 枚举。 |
| `callbacks` | `ICallBack[]`。 |
| `isRecycle` / `time` / `tryNum` | 回收与重试状态。 |

`ResourceManager` 为 `Singleton`：提供按路径加载、引用计数、延迟回收等（具体方法见源码 public 区）。

#### `ResPath`

集中定义 `RES_ROOT`、`RES_UI`、`UI_PREFAB`、`EXT_PREFAB`（`.lh`）、`EXT_SCENE`（`.ls`）等，新增资源应优先复用常量。

---

### 4.3 UI `UI/`

#### `IUIMap`（`UIManager.ts` 内部 `interface`）

描述已注册 UI 元数据：

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` | `number` | 业务枚举 ID，0 表示仅用类名索引。 |
| `cls` | `new () => UIBase` | UI 类构造。 |
| `layer` | `number` | 对应 `EnumUILayer`。 |
| `modal` / `click` | `boolean` | 模态遮罩与点击关闭。 |
| `multiple` | `boolean` | 是否允许多实例。 |
| `pool` / `opened` | `UIBase[]` | 实例池与已打开列表。 |
| `openingCount` | `number` | 异步打开中计数。 |

#### `EnumUILayer`（`export enum`）

`Scene` → `Fight` → `Bottom` → `Normal` → `Pop` → `Tips` → `Guide` → `Mes`（数值递增，勿随意插入中间值以免乱序）。

#### `UIBase`

| 静态（子类常覆写） | 说明 |
|--------------------|------|
| `prefab` | 预制体路径（相对 `resources`）。 |
| `altas` | 图集名列表。 |
| `preloads` | 预加载资源路径列表。 |

| 实例 API（节选） | 说明 |
|------------------|------|
| `onInit(owner)` | 绑定根节点，取 `UILayout`。 |
| `onOpen` / `onClose` | 打开关闭生命周期。 |
| `owner` / `layout` | 根节点与 `UILayout`。 |
| `destroy()` | 释放监听、定时器、特效等。 |

#### `UILayout extends Laya.Script`

编辑器可配：`HorizontalLayout` / `VerticalLayout` 枚举、`tweenType` 打开动效、`onResize()` 等与 `GameDesign` 安全区配合。

---

### 4.4 消息 `Message/Message.ts`

| 方法 | 说明 |
|------|------|
| `on(type, listener, ctx?)` | 订阅，`type` 为 `string \| number`。 |
| `once` / `off` | 单次与移除。 |
| `emit(type, ...args)` | 派发。 |

内部用 `ListenerTuple`（非 export）：`{ listener, ctx, once }`。

---

### 4.5 对象池 `Pool/`

#### `PoolManager extends Singleton`

| 方法 | 说明 |
|------|------|
| `register(key, createFn, resetFn, options?)` | 注册命名池，`options` 为 `ObjectPoolOptions`。 |
| `getObj<T>()` | 取内置 `"object"` 池中的空对象 `{}`（高频小对象）。 |
| `releaseObj` / `releaseObjs` | 归还。 |
| `getCls` / `releaseCls`（见源码） | 按类维度的池化 UI 组件等。 |

#### `ObjectPool<T extends IPool>`

| 方法 | 说明 |
|------|------|
| `get(...args)` | 取实例。 |
| `release(obj)` | 归还；重复归还会 warn。 |
| `clear()` | 清空池。 |

---

### 4.6 定时与协程 `Timer/`

#### `ITimerInfo`（`Timer.ts` 内部）

| 字段 | 说明 |
|------|------|
| `id` / `callback` / `caller` / `args` | 定时器 ID 与回调上下文。 |
| `loop` / `delay` / `elapsed` | 是否循环、间隔、已流逝时间。 |

#### `Timer` 主要 API

- `once(delay, callback, caller?, ...args)`  
- `loop(interval, callback, caller?, ...args)`  
- `clearTimer(callback, caller)` / `clearById` 等。

#### `CoroutineManager extends Singleton`

| 方法 | 说明 |
|------|------|
| `waitForSeconds(seconds)` | `Promise<void>`，由框架 `update(dt)` 驱动。 |
| `waitForFrames(frames)` | 同上，按帧。 |
| `update(deltaTime)` | 需每帧调用（由 `XYFrame` 驱动）。 |
| `clear()` / `destroy()` | 取消任务；`reject` 使用内部 `Symbol`。 |

内部 `Task`（非 export）：`type`（时间/帧）、`resolve`、`reject`、`value`。

---

### 4.7 缓动 `Tween/`

#### `EaseFunction`（`export type`）

```ts
(t: number) => number  // t 通常为 0~1
```

#### `TweenTask`（`export class`）

链式 API：`to` / `from` / `bezier` / `delay` / `call` / `onComplete`、`clear`、`kill` 等（见 `Tween.ts`）。

#### `TweenStep`（非 export `interface`）

描述单步：`type: 'to'|'from'|'bezier'|'delay'|'call'`、`props`、`duration`、`ease`、`elapsed`、`startValues`、`controlPoints` 等。

---

### 4.8 日志 `Logger/`

#### `LogConfig`（内部 `interface`）

| 字段 | 说明 |
|------|------|
| `level` | `LogLevel` 数值，过滤输出。 |
| `showTime?` / `showLevel?` | 前缀是否带时间与级别。 |

#### `Logger`

静态方法：`log` / `warn` / `error` / `debug` 等 + `updateConfig(partial)`。

---

### 4.9 存储 `Storage/`

`StorageMgr`：`init(id)` 按账号隔离；`getVal`/`setVal` 通用键值；`getModelVal`/`setModelVal` 与 `BaseModel` 持久化配合。

---

### 4.10 音频 `Audio/`

`AudioMananger`：`setMusicFlag` / `setSoundFlag` / `setFlag`、`playMusic`、`playSound` 等（详见类内注释），目录前缀 `_music_dir` 等相对于 `ResPath.RES_AUDIO_DIR`。

---

### 4.11 特效 `Effect/`

`EffectManager`：`addMc` / `addMcUI`、`addSpine` 等；`update(dt)` 每帧驱动。

`ItemEffectBase`：`init`、`tick`（返回 `true` 表示结束）、实现 `IPool` 的回收逻辑；子类 `ItemMcEffect`、`ItemSpineEffect`、`ItemParticleEffect`。

---

### 4.12 Spine `Spine/`

#### `ISpineResItem`（`SpineManager.ts` 内部）

| 字段 | 说明 |
|------|------|
| `url` | 资源路径。 |
| `templat` | `Laya.SpineTemplet`（拼写 `templat` 与源码一致）。 |
| `count` | 引用计数。 |
| `calls` | `ICallBack[]` 加载完成队列。 |

`SpineManager.load(url, call_back?, thisObj?, arg?)` 模板缓存与并发合并加载。

---

### 4.13 序列帧 `MovieClip/`

#### `IMovieClipOneFrameData` / `IMovieClipFramesData` / `IMovieClipTextureData`（`MovieClipData.ts` 内部）

- 单帧：`res`、`x`、`y`。  
- 帧组：`scale`、`frameRate`、`frames`。  
- 纹理在图集：`x, y, w, h`。

`MovieClipData implements IPool`：`init(mcData, textureData, sheet)` 等。

---

### 4.14 网络缓存 `Vo_CacheData`

提供 `setStr`/`getStr`、`setBool`/`getBool`、`setNum`/`getNum`、`setVo`/`getVo<T extends ICacheData>`、`setArr`/`getArr`、`setMap`/`getMap`、`toStorage()` 等；嵌套对象若带 `toStorage` 会递归序列化（见 `getCacheVal`）。

---

### 4.15 设计分辨率 `Design/GameDesign`

静态只读：`showWidth`、`showHeight`、`leftNotch`、`rightNotch`、`topNotch`、`btmNotch`；`calcSize()` 在舞台尺寸变化时重算。

---

### 4.16 工具 `Utils/`

- **`HttpUtils.sendRequest`**：GET/POST 等，`complete`/`error` 回调模式。  
- 其余多为静态数学/字符串/数组工具，**无统一 interface**；`Md5Utils` 内含私有 `HasherState` interface（哈希内部状态，一般不对外扩展）。

---

### 4.17 修复引擎 `RepairEngine/`

`RepairEngine.initPool()` / `repair()` 等在启动早期 patch Laya 类型（如 `GList.prototype`）；AI 修改需谨慎，避免与引擎版本冲突。

---

## 5. AI 修改建议（与本框架相关）

1. **销毁链路**：实现 `IPool` 时注意 `recover` 与 `destroy` 是否与 `PoolManager` / `EffectManager.update` 一致，避免双还池。  
2. **事件**：优先 `XYFrame.Msg` 或各 `Message` 子类实例，类型用项目已有 `EnumMsg` 或字符串常量，避免魔法数散落。  
3. **持久化**：需要进本地存档的结构优先让 VO 实现 `ICacheData`，以便 `Vo_CacheData.toStorage` 递归正确。  
4. **接口名拼写**：全局为 **`IDestory`**，与英文 destroy 不一致，检索时两种拼写都试一下。  
5. **单例**：业务 Manager 若继承 `Singleton`，勿 `new` 多次；使用 `Xxx.getInst()`。

---

*若框架增删 public 方法，请以对应 `.ts` 为准并同步更新本文档。*

---

## 6. 公开 API 速查（按类）

> 本节聚焦高频调用入口，便于 AI 直接落代码；方法签名以源码为准。

### 6.1 `UIManager`（UI 生命周期主入口）

- `register(id, cls, layer?, modal?, click?, multiple?)`：注册 UI 元信息（类名 + 可选 ID）。
- `createUI(cls)`：异步创建/复用实例（会加载图集与预制体）。
- `open(cls, ...args)` / `openById(id, ...args)`：打开 UI。
- `close(uiOrCls, destroy?)` / `closeAll(uiOrCls, destroy?)` / `closeAllUI(destroy?)`：关闭。
- `destroyUI(uiOrCls)`：销毁某类 UI（清池）。
- `isOpen(cls)` / `get(cls)` / `getAll(cls)` / `getOpenCount(cls)`：状态查询。
- `getLayer(layer)`、`onResize()`、`closeBlack(exclude?)`：层级与黑边遮罩处理。

### 6.2 `ResourceManager`（资源加载与回收）

- `setRecycleTime(time)`：设置回收时机（ms）。
- `setPause(pause)`：暂停/恢复加载队列。
- `getLayaRes(url)`：读取 Laya 已加载资源引用。
- `load(url, callBack?, thisObj?, type?, ...args)`：回调风格单资源加载。
- `loadAsync(url, type?)`：Promise 风格单资源加载。
- `loadGroup(urls, callBack, thisObj?)` / `loadGroupAsync(urls)`：批量加载。
- `destroyAbs(absUrl, isNow?)` / `destroyRes(url, isNow?)`：标记/执行释放。
- `checkDestroy(now, isAll?)`：按时间检查可回收资源。
- `reload()`：重置加载队列并清理内部状态。

### 6.3 `SocketClient` + `ProtocolHandler`（收发链路）

- `SocketClient`：
  - `setConfig(config)`：更新连接配置。
  - `connect()` / `disconnect()` / `simulateClose()`：连接生命周期。
  - `send(byte)` / `sendHeartbeat()`：发送数据/心跳。
  - `getState()` / `isConnected()` / `destroy()`：状态与销毁。
- `ProtocolHandler`：
  - `register(cmd, callback, caller)` / `unregister(cmd)`：注册协议处理器。
  - `setCmdSocket(startCmd, endCmd, socketId, mode?)`：配置协议与 socket 路由关系。
  - `send(cmd, data, socketId?, mode?)`：按配置或显式参数发送。
  - `simulateRecive(cmd, bytes)`：模拟收包（注意源码拼写 `Recive`）。
  - `bindSocket` / `unbindSocket` / `getSocket` / `getBoundSocketIds` / `destroy`。

### 6.4 `Timer`、`Tween`、`CoroutineManager`（时序系统）

- `Timer`：`once`、`loop`、`clearTimer`、`clearById`、`clearAllTimer`、`clearAllTimers`、`update`。
- `Tween`：`to`、`from`、`bezier`、`delay`、`call`；任务对象为 `TweenTask`（可链式）。
- `CoroutineManager`：`waitForSeconds`、`waitForFrames`、`update`、`clear`、`destroy`。

### 6.5 `BaseModel`（业务 Model 基类）

- 缓存读写：`getCacheNum/Bool/Str/Arr/Map/Vo` + `setCache...` 成对 API。
- 持久化：`saveStorage()`、`getStorageKey()`（子类重写）、`getStorageData()`。
- 网络：`registerCmd(...)`（子类重写）、`sendCmd(...)`、`simulateCmd(...)`、`getBytes()`。
- 生命周期钩子（可选实现）：`initCache`、`initCacheEnd`、`initBeforeEnter`、`initAfterEnter`、`onZero`、`onOfflineHandle`。

---

## 7. 生命周期与数据流（AI 编码重点）

### 7.1 启动阶段

1. `Main` 挂载 `XYFrame`。  
2. `XYFrame.onAwake()` 初始化 `Msg/Res/UIMgr/SocketMgr/Timer/Tween/...`。  
3. 业务通过 `XYFrame.xxx` 直接拿管理器单例。

### 7.2 每帧驱动

- `Timer.update(deltaTime)`：推进定时任务。
- `CoroutineManager.update(deltaTime)`：推进 await 秒/帧任务。
- `EffectManager.update(dt)`：推进 UI 特效生命周期。
- `Tween` 由其管理器内部统一推进任务。

### 7.3 UI 打开链

1. `UIManager.open(...)` -> 检查注册信息。  
2. `createUI(...)`：从池复用或异步加载预制体。  
3. `UIBase.onInit(owner)` -> `inited(...)`。  
4. `UIBase.onOpen(args...)` -> `initListener()` / `regGuide()`。  
5. 关闭时 `onClose()` 统一释放消息/事件/定时器/特效/引导对象/缓动。

### 7.4 网络收发链

1. `SocketMgr.getSocket(...)` 创建并可自动 `bindSocket`。  
2. `SocketMgr.listen(cmd, cb, thisObj)` 注册到 `ProtocolHandler`。  
3. 发包走 `ProtocolHandler.send`（可多 socket 路由）。  
4. 收包经 `SocketClient` 事件分发到 `ProtocolHandler.dealFromData`。

---

## 8. 命名与兼容坑位（务必保留）

1. **拼写保留**：`IDestory`、`AudioMananger`、`simulateRecive`、`templat` 为现有公开符号，改名会产生连锁影响。  
2. **接口与文件名不一致**：`IDestroy.d.ts` 中声明的是 `interface IDestory`。  
3. **全局声明接口**：`ICallBack`、`IPool` 等是全局 interface，不是 `export` 模块类型。  
4. **缓存结构兼容**：实现 `ICacheData` 的存档结构上线后不应破坏性修改。  
5. **Singleton 约束**：继承 `Singleton` 的类应统一 `getInst()`，避免直接 `new`。  
