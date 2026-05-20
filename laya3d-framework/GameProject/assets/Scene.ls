{
  "_$ver": 1,
  "_$id": "lx8mwule",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "width": 720,
  "height": 1440,
  "mouseThrough": true,
  "_$comp": [
    {
      "_$type": "7bad1742-6eed-4d8d-81c0-501dc5bf03d6",
      "scriptPath": "../src/Game/Main.ts"
    }
  ],
  "_$child": [
    {
      "_$id": "ipq1v7td",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "dome",
        "material": {
          "_$uuid": "793cffc6-730a-4756-a658-efe98c230292",
          "_$type": "Material"
        }
      },
      "ambientColor": {
        "_$type": "Color",
        "r": 0.5891472868217054,
        "g": 0.5891472868217054,
        "b": 0.5891472868217054
      },
      "_reflectionsIblSamples": 512,
      "fogStart": 0,
      "_$child": [
        {
          "_$id": "6vbyrld3",
          "_$type": "Camera",
          "name": "Main Camera",
          "active": false,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "y": 30,
              "z": 14
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.49999999999999994,
              "y": 5.1247042641626507e-17,
              "z": 8.87624815929459e-17,
              "w": 0.8660254037844387
            }
          },
          "fieldOfView": 52,
          "nearPlane": 0.3,
          "farPlane": 1000,
          "clearFlag": 1,
          "clearColor": {
            "_$type": "Color"
          },
          "msaa": true,
          "depthTextureFormat": 35
        },
        {
          "_$id": "jk0a9y1q",
          "_$type": "Sprite3D",
          "name": "MichengDebugRoot",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "y": 30,
              "z": 14
            }
          },
          "_$comp": [
            {
              "_$type": "26033073-041e-41df-8900-472b5d794b74",
              "scriptPath": "../src/Game/Module/Micheng/Debug/MchDebugEntry.ts"
            }
          ]
        }
      ]
    },
    {
      "_$id": "j7ouztix",
      "_$type": "GWidget",
      "name": "UIRoot",
      "width": 720,
      "height": 1440,
      "relations": [
        {
          "_$type": "Relation",
          "target": {
            "_$ref": "lx8mwule"
          },
          "data": [
            1,
            0,
            2,
            0
          ]
        }
      ],
      "_$child": [
        {
          "_$id": "d80mt897",
          "_$type": "GWidget",
          "name": "Scene",
          "width": 720,
          "height": 1440,
          "_mouseState": 2,
          "mouseThrough": true,
          "relations": [
            {
              "_$type": "Relation",
              "target": {
                "_$ref": "j7ouztix"
              },
              "data": [
                1,
                0,
                2,
                0
              ]
            }
          ],
          "_$comp": [
            {
              "_$type": "d1403e95-e486-4db1-9a3b-8203760c2e95",
              "scriptPath": "../src/XYFrame/UI/Layer/UILayer.ts",
              "layer": 0
            }
          ]
        },
        {
          "_$id": "02yyvvch",
          "_$type": "GWidget",
          "name": "Fight",
          "width": 720,
          "height": 1440,
          "_mouseState": 2,
          "mouseThrough": true,
          "relations": [
            {
              "_$type": "Relation",
              "target": {
                "_$ref": "j7ouztix"
              },
              "data": [
                1,
                0,
                2,
                0
              ]
            }
          ],
          "_$comp": [
            {
              "_$type": "d1403e95-e486-4db1-9a3b-8203760c2e95",
              "scriptPath": "../src/XYFrame/UI/Layer/UILayer.ts",
              "layer": 1
            }
          ]
        },
        {
          "_$id": "aisj0q61",
          "_$type": "GWidget",
          "name": "Bottom",
          "width": 720,
          "height": 1440,
          "_mouseState": 2,
          "mouseThrough": true,
          "relations": [
            {
              "_$type": "Relation",
              "target": {
                "_$ref": "j7ouztix"
              },
              "data": [
                1,
                0,
                2,
                0
              ]
            }
          ],
          "_$comp": [
            {
              "_$type": "d1403e95-e486-4db1-9a3b-8203760c2e95",
              "scriptPath": "../src/XYFrame/UI/Layer/UILayer.ts",
              "layer": 2
            }
          ]
        },
        {
          "_$id": "gg8wnexh",
          "_$type": "GWidget",
          "name": "Normal",
          "width": 720,
          "height": 1440,
          "_mouseState": 2,
          "mouseThrough": true,
          "relations": [
            {
              "_$type": "Relation",
              "target": {
                "_$ref": "j7ouztix"
              },
              "data": [
                1,
                0,
                2,
                0
              ]
            }
          ],
          "_$comp": [
            {
              "_$type": "d1403e95-e486-4db1-9a3b-8203760c2e95",
              "scriptPath": "../src/XYFrame/UI/Layer/UILayer.ts",
              "layer": 3
            }
          ]
        },
        {
          "_$id": "7vm1qvll",
          "_$type": "GWidget",
          "name": "Pop",
          "width": 720,
          "height": 1440,
          "_mouseState": 2,
          "mouseThrough": true,
          "relations": [
            {
              "_$type": "Relation",
              "target": {
                "_$ref": "j7ouztix"
              },
              "data": [
                1,
                0,
                2,
                0
              ]
            }
          ],
          "_$comp": [
            {
              "_$type": "d1403e95-e486-4db1-9a3b-8203760c2e95",
              "scriptPath": "../src/XYFrame/UI/Layer/UILayer.ts",
              "layer": 4
            }
          ]
        },
        {
          "_$id": "d3kvx54m",
          "_$type": "GWidget",
          "name": "Tip",
          "width": 720,
          "height": 1440,
          "_mouseState": 2,
          "mouseThrough": true,
          "relations": [
            {
              "_$type": "Relation",
              "target": {
                "_$ref": "j7ouztix"
              },
              "data": [
                1,
                0,
                2,
                0
              ]
            }
          ],
          "_$comp": [
            {
              "_$type": "d1403e95-e486-4db1-9a3b-8203760c2e95",
              "scriptPath": "../src/XYFrame/UI/Layer/UILayer.ts",
              "layer": 5
            }
          ]
        },
        {
          "_$id": "n7zzbytv",
          "_$type": "GWidget",
          "name": "Guide",
          "width": 720,
          "height": 1440,
          "_mouseState": 2,
          "mouseThrough": true,
          "relations": [
            {
              "_$type": "Relation",
              "target": {
                "_$ref": "j7ouztix"
              },
              "data": [
                1,
                0,
                2,
                0
              ]
            }
          ],
          "_$comp": [
            {
              "_$type": "d1403e95-e486-4db1-9a3b-8203760c2e95",
              "scriptPath": "../src/XYFrame/UI/Layer/UILayer.ts",
              "layer": 6
            }
          ]
        },
        {
          "_$id": "gqb85jlw",
          "_$type": "GWidget",
          "name": "Mes",
          "width": 720,
          "height": 1440,
          "_mouseState": 1,
          "mouseThrough": true,
          "relations": [
            {
              "_$type": "Relation",
              "target": {
                "_$ref": "j7ouztix"
              },
              "data": [
                1,
                0,
                2,
                0
              ]
            }
          ],
          "_$comp": [
            {
              "_$type": "d1403e95-e486-4db1-9a3b-8203760c2e95",
              "scriptPath": "../src/XYFrame/UI/Layer/UILayer.ts",
              "layer": 7
            }
          ]
        },
        {
          "_$id": "yzsyz012",
          "_$type": "GWidget",
          "name": "Mask",
          "width": 720,
          "height": 1440,
          "relations": [
            {
              "_$type": "Relation",
              "target": {
                "_$ref": "j7ouztix"
              },
              "data": [
                1,
                0,
                2,
                0
              ]
            }
          ],
          "_$child": [
            {
              "_$id": "47gdpqga",
              "_$type": "GWidget",
              "name": "Left",
              "width": 0,
              "height": 1440,
              "background": {
                "_$type": "DrawRectCmd",
                "fillColor": "#000000"
              },
              "relations": [
                {
                  "_$type": "Relation",
                  "target": {
                    "_$ref": "j7ouztix"
                  },
                  "data": [
                    2,
                    0,
                    3,
                    0
                  ]
                }
              ]
            },
            {
              "_$id": "q21kgl7f",
              "_$type": "GWidget",
              "name": "Right",
              "x": 720,
              "width": 0,
              "height": 1440,
              "background": {
                "_$type": "DrawRectCmd",
                "fillColor": "#000000"
              },
              "relations": [
                {
                  "_$type": "Relation",
                  "target": {
                    "_$ref": "j7ouztix"
                  },
                  "data": [
                    2,
                    0,
                    9,
                    0
                  ]
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}