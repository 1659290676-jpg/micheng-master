# LayaAir 3.4.0-beta.3 预览指南

目标：让不熟悉 LayaAir 的情况下，也能打开《咪城大师》Laya3D 迁移工程并看到第一阶段棋盘。

## 当前结论

你电脑已安装 LayaAir 3.4.0-beta.3，可以先直接使用，不需要重新下载其他 Laya3D 软件。

工程路径：

`E:\CCfirst\laya3d-framework\GameProject`

当前已新增咪城模块：

`GameProject/src/Game/Module/Micheng/`

## 打开工程

1. 打开 LayaAir 3.4.0-beta.3。
2. 选择打开项目。
3. 选择目录：`E:\CCfirst\laya3d-framework\GameProject`。
4. 等待资源和脚本索引完成。

如果 LayaAir 提示版本不匹配，先不要升级工程，截图或复制提示内容给我看。

## 调试入口

已新增脚本：

`GameProject/src/Game/Module/Micheng/Debug/MchDebugEntry.ts`

用途：挂到空的 3D 节点后，运行时自动生成第一关 9x16 平顶六边形棋盘，并显示第二阶段基础实体占位。

建议操作：

1. 在 LayaAir 的 3D 场景中新建一个空 `Sprite3D`。
2. 命名为 `MichengDebugRoot`。
3. 给该节点添加脚本组件：`MchDebugEntry`。
4. 运行预览。

预期效果：

- 生成 9x16 棋盘。
- 上半区红色，下半区绿色。
- 玩家和敌方各有一个主塔占位。
- 棋盘上可看到示例金矿、防御塔、兵营和士兵占位。
- 不出现旧恐龙、旧城市、旧 NPC、旧关卡 UI。

## 如果看不到脚本

可以尝试：

1. 保存工程并重新打开 LayaAir。
2. 等待脚本编译完成。
3. 在资源/脚本面板搜索 `MchDebugEntry`。

如果仍然看不到，把 LayaAir 报错信息发给我。

## 如果运行出现旧恐龙或旧城市

说明当前运行入口仍然是旧框架入口，不是咪城调试入口。不要继续改旧场景，先把报错或截图发给我。

后续正确方向是：

- 咪城独立入口
- 咪城独立棋盘
- 咪城独立 UI
- 旧恐龙/城市逻辑保留但不接入

## 当前限制

当前迁移骨架：

- 已有独立模块目录
- 已有第一关棋盘配置
- 已有六边形坐标逻辑
- 已有 Laya3D 棋盘生成视图
- 已有调试入口脚本
- 已有主塔、示例建筑、士兵占位展示

还未接入：

- 图纸建造
- 战斗与经济
- HUD UI
- AI
- 贴边墙可破坏逻辑
