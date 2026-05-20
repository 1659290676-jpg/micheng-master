# ServerExcel

#### 介绍
打包excel表和站点

#### 使用说明

1.  配置server-config.json（可通过Web界面配置）

启动服务器后，访问 http://localhost:8901/config.html 即可通过可视化界面配置服务器参数。

**配置验证说明**：
- Excel根目录必须存在且为有效目录
- 资源目录(resDir)和游戏资源目录(gameResDir)必须存在
- JSON输出目录、配置文件目录、结构代码目录如果不存在会自动创建
- 保存配置时会自动验证所有路径的有效性
- 导出类型(exportType)：0 输出为map(带key)，1 输出为数组；可在配置页面下拉选择

```
  {
    "title": 运行程序的标题
    "engine": 引擎名称:laya2|laya3，作用打包本地化资源,
    "root": 项目跟目录 不配默认当前目录,
    "type": 0表头不分地区和文本翻译，1区分
    "num": 生成表文件数量,
    "resDir": index.html所在目录名,
    "gameResDir": resDir目录下的游戏资源目录名,
    "excel": excel根目录,
    "jsonPath": 每个excel生成对应单个json文件目录,
    "cfgPath": 生成表文件目录,
    "structPath": 生成表结构代码文件目录,
    "keyExcel": 需要导出包含key的excel名,
    "onlyKeys": 只导出key和对应列的excel，导出的map是map[key]=数据,
    "suffix": 生成表文件后缀,
    "clsName": 生成表代码文件名,
    "isStruct": 是否导出表结构代码 0不导出 1导出,
    "encode": 加密方式 0不见 1:ByteFormat加密 2:MsgPack文件集合加密 3:文件集合里单个表数据再加密 4:使用ObjectCompressor压缩表数据,
    "onlyKeyExport": 如果只有key列，是否也导出一个map，1导出，0不导出,
    "exportType": 导出类型 0:数据是map都带有key，1:数据是数组,
    "langApi": {
      "import": "导入ts的路径",
      "api": "调用的接口",
    },
    "lang":{ 语言包的配置
        类型: ["语言包后缀", "描述"],
    },
    "region":{ 地区的配置
        类型: ["地区文件后缀", "描述"], 不配读语言包的配置(lang)
    },
    "localizeDir": 本地化资源所在res目录下的文件夹名称,
    "localizeEncode": 本地化打包文件加密方式 0:不加密 1:ByteFormat加密 2:MsgPack文件集合加密 3:文件集合里单个表数据再加密 4:使用ObjectCompressor压缩表数据,
    "spineDir": spine动画根目录名称
    "packSpine": ["打包的spine文件夹"] 例如：["body", "horse", "weapon", "wing"]，配置页面使用逗号分隔输入,
    "d3Dir": 3d模型根目录名称"
    "port": 游戏端口,
    "whitelist":{ 对应操作ip白名单，没该字段就没限制。可在配置页面管理
        "ip": {
            "n": "对应名称",
            "lock": 0不能操作锁定 1可操作锁定,
        }
    }
  }
```