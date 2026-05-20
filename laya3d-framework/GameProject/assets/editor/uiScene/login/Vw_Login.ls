{
  "_$ver": 1,
  "_$id": "2rjy21q2",
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
      "_$id": "huds6wcg",
      "_$type": "GImage",
      "name": "img",
      "width": 720,
      "height": 1440,
      "src": "res://8f6d3e77-7c75-413c-b8ee-1a96685e3d76"
    },
    {
      "_$id": "xy5g7v8b",
      "_$var": true,
      "_$type": "GWidget",
      "name": "Vw_Login",
      "width": 720,
      "height": 1440,
      "_$comp": [
        {
          "_$type": "9ea59e17-324d-49ca-8b49-a3a937b341b3",
          "scriptPath": "../src/XYFrame/UI/UILayout.ts",
          "tweenType": null,
          "tweenAlpha": null,
          "sizeType": 5,
          "horizontal": 0,
          "vertical": 4,
          "x": 0,
          "y": 0,
          "width": 0,
          "height": 0
        }
      ],
      "_$child": [
        {
          "_$id": "y7vdbsms",
          "_$var": true,
          "_$type": "GImage",
          "name": "bg",
          "x": 360,
          "width": 720,
          "height": 1440,
          "anchorX": 0.5,
          "relations": [
            {
              "_$type": "Relation",
              "target": {
                "_$ref": "xy5g7v8b"
              },
              "data": [
                6,
                0
              ]
            }
          ],
          "src": ""
        },
        {
          "_$id": "hjywfwwu",
          "_$var": true,
          "_$type": "GImage",
          "name": "logo",
          "x": 67,
          "y": 49,
          "width": 612,
          "height": 268,
          "relations": [
            {
              "_$type": "Relation",
              "target": {
                "_$ref": "xy5g7v8b"
              },
              "data": [
                6,
                0
              ]
            }
          ],
          "src": ""
        },
        {
          "_$id": "rhv20p5q",
          "_$var": true,
          "_$type": "GWidget",
          "name": "loading",
          "width": 720,
          "height": 1440,
          "relations": [
            {
              "_$type": "Relation",
              "target": {
                "_$ref": "xy5g7v8b"
              },
              "data": [
                6,
                0,
                16,
                0
              ]
            }
          ],
          "_$child": [
            {
              "_$id": "aecqdem4",
              "_$var": true,
              "_$type": "GProgressBar",
              "name": "pb",
              "x": 110,
              "y": 1134,
              "width": 500,
              "height": 26,
              "value": 0,
              "_hBar": {
                "_$ref": "jq92ia3t"
              },
              "_$child": [
                {
                  "_$id": "0q1a86kg",
                  "_$type": "GImage",
                  "name": "img_1",
                  "x": -3,
                  "y": -3,
                  "width": 506,
                  "height": 26,
                  "relations": [
                    {
                      "_$type": "Relation",
                      "target": {
                        "_$ref": "aecqdem4"
                      },
                      "data": [
                        1,
                        0
                      ]
                    }
                  ],
                  "src": "res://63e14989-655b-438c-9f91-6943213a523f",
                  "autoSize": false
                },
                {
                  "_$id": "jq92ia3t",
                  "_$type": "GImage",
                  "name": "img",
                  "width": 0,
                  "height": 20,
                  "src": "res://c00eb4d5-7ee6-490d-beac-3c267b87aa25",
                  "autoSize": false
                }
              ]
            },
            {
              "_$id": "f4ega3wz",
              "_$var": true,
              "_$type": "GTextField",
              "name": "lbDes",
              "x": 338,
              "y": 1168,
              "width": 43,
              "height": 32,
              "relations": [
                {
                  "_$type": "Relation",
                  "target": {
                    "_$ref": "rhv20p5q"
                  },
                  "data": [
                    6,
                    0
                  ]
                }
              ],
              "text": "text",
              "_isDemo": true,
              "fontSize": 24,
              "color": "#ffffff",
              "fitContent": 1,
              "html": true
            },
            {
              "_$id": "ktvh20t3",
              "_$prefab": "900320ca-1680-455a-a819-0a05a3b40348",
              "_$var": true,
              "name": "reloadBtn",
              "active": true,
              "x": 360,
              "y": 1044,
              "width": 220,
              "height": 90,
              "visible": true,
              "icon": "res://f749985b-cb5f-4b06-ac3d-0c691dd79b47",
              "titleFontSize": 36
            }
          ]
        },
        {
          "_$id": "7sq7o67h",
          "_$var": true,
          "_$type": "GWidget",
          "name": "input",
          "width": 720,
          "height": 1440,
          "visible": false,
          "mouseThrough": true,
          "relations": [
            {
              "_$type": "Relation",
              "target": {
                "_$ref": "xy5g7v8b"
              },
              "data": [
                6,
                0
              ]
            }
          ],
          "_$child": [
            {
              "_$id": "53dexoh5",
              "_$var": true,
              "_$type": "GButton",
              "name": "servBtn",
              "x": 260,
              "y": 984,
              "width": 200,
              "height": 50,
              "controllers": {
                "_$type": "Record",
                "button": {
                  "_$type": "Controller",
                  "pages": [
                    "up",
                    "down",
                    "over",
                    "selectedOver"
                  ]
                }
              },
              "titleColor": "#f3f3f3",
              "titleFontSize": 24,
              "titleWidget": {
                "_$ref": "ghj1bn01"
              },
              "_$child": [
                {
                  "_$id": "8ndz0meb",
                  "_$type": "GImage",
                  "name": "img",
                  "width": 200,
                  "height": 50,
                  "src": "res://f3f662c0-4210-4bfa-8858-0cfbd1186352",
                  "autoSize": false
                },
                {
                  "_$id": "ghj1bn01",
                  "_$type": "GTextField",
                  "name": "txt",
                  "x": 50,
                  "y": 9,
                  "width": 100,
                  "height": 32,
                  "text": "区服列表",
                  "fontSize": 24,
                  "color": "#f3f3f3",
                  "fitContent": 1
                }
              ]
            },
            {
              "_$id": "3v25o95c",
              "_$var": true,
              "_$type": "GTextInput",
              "name": "lbId",
              "x": 247,
              "y": 1071,
              "width": 226,
              "height": 47,
              "background": {
                "_$type": "DrawRectCmd",
                "fillColor": "#c6c6c6"
              },
              "text": "1",
              "fontSize": 24,
              "color": "#030303",
              "valign": "middle",
              "padding": [
                2,
                2,
                2,
                10
              ]
            },
            {
              "_$id": "6dkvpq7j",
              "_$type": "GTextField",
              "name": "txt",
              "x": 190,
              "y": 1078,
              "width": 52,
              "height": 32,
              "text": "账号",
              "fontSize": 24,
              "color": "#ffffff",
              "fitContent": 1
            },
            {
              "_$id": "bn1rixbw",
              "_$prefab": "8aa8fcd3-9701-48d5-898d-90f185624332",
              "_$var": true,
              "name": "enterBtn",
              "active": true,
              "x": 360,
              "y": 1232,
              "visible": true,
              "width": 330,
              "height": 161,
              "icon": "res://34087816-f82a-4471-9302-8ef388d45db6"
            }
          ]
        }
      ]
    }
  ]
}