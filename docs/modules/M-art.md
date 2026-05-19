# 美术资产模块（独立）

> 你提供 **PNG**；开发按本清单路径放入 `assets/`，程序自动加载。  
> 可随时分批交付，不必一次齐。

## 目录结构

```
assets/
├── cats/
│   ├── board/          # 棋盘格、问号格
│   ├── buildings/      # 金矿、剑塔、兵营、箭塔
│   ├── units/          # 士兵猫（按 cardId 分子文件夹）
│   ├── cards/          # 局外卡面竖图
│   ├── ui/             # 按钮、框、货币、计时
│   └── meta/           # 主城、宝箱、段位
└── placeholders/       # 可留空
```

---

## 清单 A · 棋盘 UI（M1，优先）

| 序号 | 文件名 | 说明 | 状态 |
|------|--------|------|------|
| A1 | `cats/board/tile_green.png` | 绿方格（己方） | 待提供 |
| A2 | `cats/board/tile_red.png` | 红方格（敌方） | 待提供 |
| A3 | `cats/board/tile_neutral.png` | 中立/未占领 | 待提供 |
| A4 | `cats/board/tile_mystery.png` | 问号盲盒格（可选 M2） | 待提供 |
| A5 | `cats/board/board_bg.png` | 竖版棋盘底图（9×16 安全区） | 可选 |

**规格**：PNG 透明；平顶六边形；建议同尺寸（如 128×112 或 256×224）。

---

## 清单 B · 建筑（M2）

| 序号 | 文件名 | 对应 ID |
|------|--------|---------|
| B1 | `buildings/mine_gold.png` | 金矿 |
| B2 | `buildings/tower_sword.png` | 剑塔 |
| B3 | `buildings/tower_arrow_rare.png` | 珍珍箭塔猫 |
| B4 | `buildings/barracks_50.png` | 50 金兵营（通用壳） |
| B5 | `buildings/barracks_100.png` | 100 金兵营 |
| B6 | `buildings/barracks_250.png` | 250 金兵营 |

锚点建议：图像 **底部中心** 对齐格心。

---

## 清单 C · 战斗单位（M3）

每个 `cardId` 一个文件夹，至少 1 张静图，推荐 2~4 帧行走：

| 序号 | 路径 | 角色 |
|------|------|------|
| C1 | `units/unit_mianmian_cat/idle.png` | 棉棉猫 |
| C2 | `units/unit_cengceng_cat/idle.png` | 蹭蹭猫 |
| C3 | `units/unit_chuanchuan_cat/idle.png` | 穿穿猫 |
| C4 | `units/unit_yueyue_cat/idle.png` | 跃跃猫 |
| C5 | `units/unit_yanyan_cat/idle.png` | 焰焰猫 |
| C6 | `units/unit_baba_cat/idle.png` | 霸霸猫 |

---

## 清单 D · 卡面（M4 局外）

| 序号 | 文件名 | 角色 |
|------|--------|------|
| D1~D8 | `cards/{cardId}.png` | 与 `data/cards.json` 的 id 一致 |

比例建议 **3:4 竖版**，如 300×400。

---

## 清单 E · UI 界面（独立子模块）

| 序号 | 文件名 | 用途 |
|------|--------|------|
| E1 | `ui/btn_primary.png` | 主按钮 |
| E2 | `ui/panel_dark.png` | 面板底（可 9-slice） |
| E3 | `ui/icon_gold_ingame.png` | 局内金币 |
| E4 | `ui/icon_gold_meta.png` | 局外金币 |
| E5 | `ui/icon_wood.png` | 木材 |
| E6 | `ui/timer_bar.png` | 3 分钟倒计时条 |
| E7 | `ui/hud_top.png` | 顶部 HUD 条 |
| E8 | `ui/logo.png` | 《咪城大师》Logo |

---

## 清单 F · 局外 Meta（M4+）

| 序号 | 文件名 | 用途 |
|------|--------|------|
| F1 | `meta/city_main.png` | 主城 |
| F2 | `meta/chest_common.png` | 普通宝箱 |
| F3 | `meta/chest_rare.png` | 稀有宝箱 |
| F4 | `meta/chest_epic.png` | 史诗宝箱 |
| F5 | `meta/chest_legendary.png` | 传奇宝箱 |

---

## 你交付后我会做的

1. 文件放入上表路径（你可打包 zip，我帮你对齐命名）。  
2. 更新 `BootScene` 加载列表。  
3. 刷新网页即可看到，无需改玩法逻辑。

**当前最急：A1～A3（绿/红/中立格）**，有这三张 M1 就是猫咪棋盘。
