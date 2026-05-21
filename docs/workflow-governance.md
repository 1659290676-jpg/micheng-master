# 《咪城大师》协作守则与周工作机制草案

**在线阅读**：<https://github.com/1659290676-jpg/micheng-master/blob/main/docs/workflow-governance.md>

状态：待确认  
目的：减少对话压缩后的上下文丢失，保护已验收规则，明确“什么指令代表确认执行”。

相关文档：[已确认规则](https://github.com/1659290676-jpg/micheng-master/blob/main/docs/accepted-rules.md) · [模块化设计](https://github.com/1659290676-jpg/micheng-master/blob/main/docs/module-architecture-plan.md) · [项目状态](https://github.com/1659290676-jpg/micheng-master/blob/main/docs/project-state.md) · [文档索引](https://github.com/1659290676-jpg/micheng-master/blob/main/docs/README.md)

## 一、周工作总结机制

建议固定在每周四或每周五整理，因为周末不工作，周一可以直接衔接。

推荐节奏：

- **每周四下午**：提前整理本周进度草稿，列出未完成事项。
- **每周五下班前**：形成正式周报、验收记录、下周计划。
- **每周一开工**：先读取 `docs/project-state.md` 和最新周报，再继续开发。

建议新增文档：

```text
docs/
  project-state.md                 # 长期项目状态，周一优先读取
  acceptance-log.md                # 你的验收记录
  bug-list.md                      # 未解决 bug 清单
  release-log.md                   # 每次 GitHub/线上发布记录
  weekly/
    2026-W21-summary.md            # 本周内部工作总结
  reports/
    2026-W21-report.md             # 给你看的文字报告
```

## 二、周报内容模板

### 本周开发总结

每周总结应包含：

1. 本周完成内容
2. 本周修复 bug
3. 本周新增规则
4. 本周 GitHub 提交与线上链接
5. 本周未完成事项
6. 下周优先级
7. 风险与需要你确认的问题

### 给你的文字报告

报告应更偏业务视角：

1. 当前游戏进度到哪里
2. 你已经验收了什么
3. 本周能试玩的线上地址
4. 哪些地方还只是占位
5. 下周建议做什么
6. 需要你提供的资料：美术、数值、Laya3D 资源、平台目标等

## 三、对话压缩与是否需要新开对话

不强制每周一新开对话。

推荐规则：

- 如果当前对话还能继续，就继续当前对话。
- 如果 Cursor 自动压缩了上下文，也可以继续，但每周一应先让我读取 `docs/project-state.md` 和最新周报。
- 如果对话已经很长、响应变慢、上下文混乱，建议周一新开对话。

新开对话时，你可以直接说：

> 读取 `docs/project-state.md` 和最新周报，继续《咪城大师》本周开发。

这样可以最大程度避免断档。

## 四、提醒机制说明

我不能在你没有打开对话时主动弹窗提醒；但可以通过项目文档和固定指令形成流程。

建议你每周四或周五发：

> 生成本周周报和下周衔接文档。

我会执行：

1. 更新 `docs/project-state.md`
2. 新建/更新本周 `docs/weekly/YYYY-WW-summary.md`
3. 新建/更新 `docs/reports/YYYY-WW-report.md`
4. 更新 `docs/acceptance-log.md`
5. 更新 `docs/bug-list.md`
6. 如有线上发布，更新 `docs/release-log.md`

## 五、确认与执行指令

为避免误改，后续约定以下指令含义。

### 只讨论，不改代码

当你说：

> 先分析  
> 先给方案  
> 给我看完再执行  
> 先不要改

我只能阅读、分析、写方案，不改代码，不提交，不推送。

### 可以改代码，但不推 GitHub

当你说：

> 确认，按方案执行  
> 可以改代码  
> 本地实现一下

我可以修改本地文件、运行构建、生成本地预览，但不推送 GitHub。

### 可以推送 GitHub

当你明确说：

> 推送到 GitHub  
> 上传到 GitHub  
> 发布线上网页  
> 生成线上大家都能玩的网页

我才可以提交 commit、push，并等待 GitHub Pages 部署。

### 规则冻结

当你说：

> 这个规则确认  
> 这个玩法验收通过  
> 记录为已验收规则  
> 以后不要改这个规则

我需要把对应内容写入 `docs/acceptance-log.md` 和 [docs/accepted-rules.md](https://github.com/1659290676-jpg/micheng-master/blob/main/docs/accepted-rules.md)。

后续如果要改这些规则，必须先说明：

1. 为什么要改
2. 会影响哪些模块
3. 改完如何验收

并等你再次确认。

### 变更请求

如果你说：

> 申请变更规则：……

我应先写变更说明，不直接执行。你确认后再改。

## 六、必须由你确认的内容

以下事项默认需要你确认：

1. 已验收核心玩法规则变更
2. 经济、抽卡、战斗核心数值与升级成长公式变更
3. 主塔失败条件、胜负条件变更
4. GitHub 推送与线上发布
5. Laya3D 工程结构大调整
6. 删除文件、替换资源、覆盖 Laya 场景资源
7. 引入新技术栈、服务端、数据库、联网方案
8. 从 Phaser 原型切换到 Laya3D 主线开发
9. 贴边墙规则、单边墙血量、墙破坏优先级变更
10. 建造图标生成、固定、层级、点击优先级规则变更

## 七、验收记录格式

每次验收应记录：

```text
日期：
版本/提交：
验收人：
验收内容：
验收结论：通过 / 部分通过 / 不通过
备注：
```

## 八、建议固化为 Cursor 规则

你确认本守则后，我建议再创建：

```text
.cursor/rules/project-governance.mdc
```

作用：让后续对话始终遵守“确认后才执行、已验收规则不静默改动、推送需明确授权”等约定。

当前这份文档只是草案，等待你确认后再固化为 Cursor 规则。
