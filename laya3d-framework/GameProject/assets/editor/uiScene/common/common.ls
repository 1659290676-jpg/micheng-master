{
  "_$ver": 1,
  "_$id": "o0icvtxa",
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
      "_$id": "7zpo4xbn",
      "_$prefab": "1b0254db-f463-4e3e-bba5-0958ea5eb014",
      "name": "Btn_Blue_Big",
      "active": true,
      "x": 366,
      "y": 125,
      "visible": true
    },
    {
      "_$id": "snrgp54h",
      "_$prefab": "78b881d7-0bdc-40e8-a004-7718e9d713cf",
      "name": "Btn_Blue_Mid",
      "active": true,
      "x": 367,
      "y": 296,
      "visible": true
    },
    {
      "_$id": "pzar1gq5",
      "_$prefab": "78759b72-fafa-49b3-b5a0-a655893ab309",
      "name": "Btn_Or_Mid",
      "active": true,
      "x": 636,
      "y": 1169,
      "visible": true
    },
    {
      "_$id": "0h1pd3dn",
      "_$type": "GButton",
      "name": "BtnText",
      "x": 367,
      "y": 1167,
      "width": 220,
      "height": 90,
      "anchorX": 0.5,
      "anchorY": 0.5,
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
      "titleFontSize": 40,
      "titleWidget": {
        "_$ref": "lu23lkt0"
      },
      "iconWidget": {
        "_$ref": "442dg0se"
      },
      "downEffect": 2,
      "_$child": [
        {
          "_$id": "442dg0se",
          "_$type": "GImage",
          "name": "img",
          "width": 220,
          "height": 90,
          "relations": [
            {
              "_$type": "Relation",
              "target": {
                "_$ref": "0h1pd3dn"
              },
              "data": [
                1,
                0,
                2,
                0
              ]
            }
          ],
          "src": "res://9db6518b-2bdf-4b31-8ef1-f15382a7df87",
          "autoSize": false
        },
        {
          "_$id": "1ffqsx8x",
          "_$type": "GBox",
          "name": "box",
          "x": -70,
          "width": 359,
          "height": 90,
          "_mouseState": 1,
          "layout": {
            "type": 2,
            "columnGap": 10,
            "align": 1,
            "valign": 1
          },
          "_$child": [
            {
              "_$id": "pld8mjac",
              "_$type": "GImage",
              "name": "img",
              "x": 108,
              "y": 24,
              "width": 50,
              "height": 42,
              "src": "res://b57aae94-82da-43e7-a18d-357097a8b9c5"
            },
            {
              "_$id": "lu23lkt0",
              "_$type": "GTextField",
              "name": "txt",
              "x": 168,
              "y": 21,
              "width": 82,
              "height": 47,
              "relations": [
                {
                  "_$type": "Relation",
                  "target": {
                    "_$ref": "0h1pd3dn"
                  },
                  "data": [
                    6,
                    0,
                    13,
                    0
                  ]
                }
              ],
              "text": "text",
              "_isDemo": true,
              "fontSize": 40,
              "color": "#f3f3f3",
              "fitContent": 1
            }
          ]
        }
      ]
    },
    {
      "_$id": "zb92akqe",
      "_$prefab": "5146df23-e5c4-41e3-95bf-a1476fe8374c",
      "name": "Btn_Or_Rect",
      "active": true,
      "x": 369,
      "y": 757,
      "visible": true
    },
    {
      "_$id": "cx52zlbp",
      "_$prefab": "6226a296-7580-48c1-a121-9b6122cf2122",
      "name": "Btn_Or_Small",
      "active": true,
      "x": 369,
      "y": 1037,
      "visible": true
    },
    {
      "_$id": "gwkq78gk",
      "_$prefab": "9fc7680a-61ee-4217-b3d2-b5cdbd769123",
      "name": "Btn_Red_Mid",
      "active": true,
      "x": 365,
      "y": 453,
      "visible": true
    },
    {
      "_$id": "krf9ldqn",
      "_$type": "GButton",
      "name": "BtnText_1",
      "x": 708,
      "y": 129,
      "width": 290,
      "height": 120,
      "anchorX": 0.5,
      "anchorY": 0.5,
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
      "titleFontSize": 48,
      "titleWidget": {
        "_$ref": "rahyulsh"
      },
      "iconWidget": {
        "_$ref": "xzlu5dvn"
      },
      "downEffect": 2,
      "_$child": [
        {
          "_$id": "xzlu5dvn",
          "_$type": "GImage",
          "name": "img",
          "width": 290,
          "height": 120,
          "relations": [
            {
              "_$type": "Relation",
              "target": {
                "_$ref": "krf9ldqn"
              },
              "data": [
                1,
                0,
                2,
                0
              ]
            }
          ],
          "src": "res://62e0eef0-96c4-4016-9768-c1dd814c9321",
          "autoSize": false
        },
        {
          "_$id": "on8yc602",
          "_$type": "GBox",
          "name": "box",
          "x": -35,
          "width": 359,
          "height": 120,
          "_mouseState": 1,
          "layout": {
            "type": 2,
            "columnGap": 10,
            "align": 1,
            "valign": 1
          },
          "_$child": [
            {
              "_$id": "v2grutwc",
              "_$type": "GImage",
              "name": "img",
              "x": 101,
              "y": 39,
              "width": 50,
              "height": 42,
              "src": "res://b57aae94-82da-43e7-a18d-357097a8b9c5"
            },
            {
              "_$id": "rahyulsh",
              "_$type": "GTextField",
              "name": "txt",
              "x": 161,
              "y": 32,
              "width": 97,
              "height": 55,
              "relations": [
                {
                  "_$type": "Relation",
                  "target": {
                    "_$ref": "krf9ldqn"
                  },
                  "data": [
                    6,
                    0,
                    13,
                    0
                  ]
                }
              ],
              "text": "text",
              "_isDemo": true,
              "fontSize": 48,
              "color": "#f3f3f3",
              "fitContent": 1
            }
          ]
        }
      ]
    },
    {
      "_$id": "kbj86d7l",
      "_$prefab": "41d34236-11c6-4303-b5b1-81d86b55b3c4",
      "name": "Btn_Or_Big",
      "active": true,
      "x": 367,
      "y": 898,
      "visible": true
    }
  ]
}