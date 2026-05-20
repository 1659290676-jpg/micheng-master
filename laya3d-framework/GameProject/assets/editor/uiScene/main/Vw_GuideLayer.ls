{
  "_$ver": 1,
  "_$id": "c6zrl9hj",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "width": 720,
  "height": 1440,
  "_$child": [
    {
      "_$id": "n9gjxcltvl",
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
        "r": 0.424308,
        "g": 0.4578516,
        "b": 0.5294118
      },
      "fogStart": 0,
      "fogEnd": 300,
      "fogColor": {
        "_$type": "Color",
        "r": 0.5,
        "g": 0.5,
        "b": 0.5
      },
      "_$child": [
        {
          "_$id": "6jx8h8bvc6",
          "_$type": "Camera",
          "name": "Main Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "y": 1,
              "z": 5
            }
          },
          "nearPlane": 0.3,
          "farPlane": 1000,
          "clearFlag": 1,
          "clearColor": {
            "_$type": "Color",
            "r": 0.3921,
            "g": 0.5843,
            "b": 0.9294
          }
        },
        {
          "_$id": "6ni3p096l5",
          "_$type": "Sprite3D",
          "name": "Direction Light",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 5,
              "y": 5,
              "z": 5
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.40821789367673483,
              "y": 0.23456971600980447,
              "z": 0.109381654946615,
              "w": 0.875426098065593
            }
          },
          "_$comp": [
            {
              "_$type": "DirectionLightCom",
              "color": {
                "_$type": "Color",
                "r": 0.6,
                "g": 0.6,
                "b": 0.6
              }
            }
          ]
        }
      ]
    },
    {
      "_$id": "m9qf1bk9",
      "_$type": "GWidget",
      "name": "Vw_GuideLayer",
      "width": 720,
      "height": 1280,
      "_$comp": [
        {
          "_$type": "9ea59e17-324d-49ca-8b49-a3a937b341b3",
          "scriptPath": "../src/XYFrame/UI/UILayout.ts",
          "sizeType": null,
          "horizontal": 0,
          "vertical": 0,
          "x": 0,
          "y": 0,
          "width": 0,
          "height": 0
        }
      ],
      "_$child": [
        {
          "_$id": "0m7ldf24",
          "_$type": "GImage",
          "name": "bg",
          "width": 720,
          "height": 1280,
          "src": "res://92927145-5074-484f-8cc5-a75f8edf4de7",
          "autoSize": false
        },
        {
          "_$id": "h9dulryd",
          "_$type": "GImage",
          "name": "bgDesc",
          "x": 65,
          "y": 359,
          "width": 184,
          "height": 166,
          "relations": [
            {
              "_$type": "Relation",
              "target": {
                "_$ref": "k2nhmw5z"
              },
              "data": [
                1,
                0,
                2,
                0
              ]
            }
          ],
          "src": "res://a47a41a4-61c8-450b-9e55-9905eccd2a69",
          "autoSize": false,
          "_$child": [
            {
              "_$id": "k2nhmw5z",
              "_$type": "GTextField",
              "name": "txtDesc",
              "x": 61,
              "y": 61,
              "width": 62,
              "height": 44,
              "text": "text",
              "_isDemo": true,
              "fontSize": 36,
              "color": "#ffffff",
              "fitContent": 1,
              "html": true,
              "maxWidth": 480,
              "stroke": 3,
              "strokeColor": "#2c2014"
            }
          ]
        }
      ]
    }
  ]
}