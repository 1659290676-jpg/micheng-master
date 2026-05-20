{
  "_$ver": 1,
  "_$id": "okki6g8k",
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
        "r": 0.5882352941176471,
        "g": 0.5882352941176471,
        "b": 0.5882352941176471
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
            "r": 0.207,
            "g": 0.269,
            "b": 0.383
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
        },
        {
          "_$id": "vcpb1u8w",
          "_$type": "Sprite3D",
          "name": "huashengdun_9",
          "_$comp": [
            {
              "_$type": "e8f192ec-d9e8-4176-864f-af4349fa93bd",
              "scriptPath": "../src/Game/Scene/Components/Level_Scene.ts",
              "owner": null,
              "npcBorns": [
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null
              ],
              "playerBorns": [
                {
                  "_$ref": "spxwg9ky",
                  "_$type": "79983f09-e1ab-47b6-b3ad-c4a6f7fc5e7b"
                },
                null,
                null,
                null,
                null,
                null
              ],
              "itemBorns": [
                {
                  "_$ref": "7vj8onii"
                }
              ],
              "buildings": [
                {
                  "_$ref": "fe6ru65v",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                null,
                {
                  "_$ref": "4je31hol",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "3037zdsf",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "tfykv9ik",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "326jxqe5",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "cb8i963s",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "mfi8zgen",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                null,
                null,
                null,
                null,
                null,
                {
                  "_$ref": "9w8dagpu",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "j2mqnpyt",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "huvo98rh",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "g063do4s",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "0pbqlwgh",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "h3rpsf68",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "4yikzkwr",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "hwza504z",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "lpav2vlh",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "iov9x2cg",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "gio5my8p",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "u8xts3vp",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "nvrsk35c",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "fm46u21f",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "icubx4ky",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "h2d343is",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "1sfwde9i",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "zivz0y4l",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "guaqjyym",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "w1ttaakq",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "lp4649lt",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "in9xhs1o",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "uofrsi87",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "67rrwrrp",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "7n9yp0gx",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "maemc19j",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "xgq7372k",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "nogyah7h",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "43abzifp",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "epu0zbt1",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "zqf7kcah",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "wuu2u7o6",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "fl6495zj",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "awflmgre",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "lr8tpzpv",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "cjt4an1z",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "o9dn9wzz",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "y78vqz96",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "qhyw9ue7",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "o582o0bt",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "qtxsj0jq",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "ja44qx3d",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "0mrkfsgz",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "bhedaqlt",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "525gquir",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "jbmu2wtp",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "p8g83pk4",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "u34ao9bi",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "o1u57i42",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "27nfb9c0",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "d8cn1m8b",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "oqpp6qkn",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "dlejbtab",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "0isy1h10",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "mjut8wnp",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "gqd9ovzc",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "eb9o0cj6",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "ec8gbcj5",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "yxvhhhao",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "jf4kbky0",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "8tvdknrd",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "mn5f56a3",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "th9im10i",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "41nwdxk3",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "1k5t83bz",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "18q6ch62",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "fneq9w4c",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                null,
                null,
                {
                  "_$ref": "wb4vt3xq",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "2xt6cpac",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "up2m94nq",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "i3p6kaub",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                null,
                null,
                null,
                {
                  "_$ref": "t55ctwua",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "ggpsb5eb",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "is034x5m",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "dnfhsqpo",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "4upwhdtc",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "djk82u83",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "g8pglq8f",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "u8gme3xj",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "utlh4l5w",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "va5manpb",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "ej5q2ws3",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "p590bwt2",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "20hy05xt",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "3sab0izm",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "5k9h58ty",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "dhwsk8cp",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "a7kkvhab",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "tvos9yk5",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "pgn3m0s1",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                null,
                null,
                null,
                null,
                null,
                {
                  "_$ref": "rmnxwnh1",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                null,
                null,
                null,
                {
                  "_$ref": "3mx3hl7v",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "y8rlwbw0",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                null,
                {
                  "_$ref": "h08bn14a",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                {
                  "_$ref": "lttr0quc",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "ui1m327p",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "cu00mm46",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "iwbyu8by",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "gapxi4i8",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "8j6ejhni",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "ka7z6bya",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "hm5nrg6y",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "ifs7wwga",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "mjbve0t4",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                null,
                {
                  "_$ref": "2wntlkba",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "yfeeuap0",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                null,
                {
                  "_$ref": "7ydpbzuu",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "c6ln38sp",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "0r260sl2",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "qoemwgjq",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "b2ohqzkm",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                null,
                {
                  "_$ref": "0iet8ukr",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "xe6s6fcd",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "tuef66f7",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "q0wxjsek",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "hq3wt6j1",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "26r5sjsr",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                null,
                null,
                null,
                null,
                {
                  "_$ref": "pai3sz29",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "bsdkqfeo",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "im83oioy",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "47qyiq1m",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "mwsf6zoq",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "rik8my2r",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "kkxcg6lj",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "tocky8w4",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                null,
                null,
                {
                  "_$ref": "8tfd3dba",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "2mn5igwr",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "0xns9v0k",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "3iaw5rbe",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "igd3r250",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "okjxi1sr",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "m2a0s9je",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "64qe79c1",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "dq3covjd",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "tf5b3vxi",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "385xtnol",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "to12iwmt",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "lflo9omx",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "p6kyx7s7",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "6din6i7f",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "achphiyj",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "7vd0zdqd",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "qxf67kdv",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "cb7s7bve",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "qw2bpi0k",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "r47miu4b",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "9mb4z0v2",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "ojx0y710",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "8vxgufor",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "syw98ms9",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "iwpu35i8",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                {
                  "_$ref": "n722qs93",
                  "_$type": "03c092ed-9019-447b-94f9-2152a4a13788"
                },
                null
              ]
            }
          ],
          "_$child": [
            {
              "_$id": "grqzfmm4",
              "_$type": "Sprite3D",
              "name": "Light",
              "_$child": [
                {
                  "_$id": "1yuw6j5y",
                  "_$type": "Sprite3D",
                  "name": "DirectionLight",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 119.73974609375,
                      "z": -122.70027923583984
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.39713125440878194,
                      "y": 0.30997552208734025,
                      "z": 0.14454395656347419,
                      "w": 0.851650742440447
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.0000000124717339,
                      "y": 1,
                      "z": 1
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "DirectionLightCom",
                      "shadowStrength": 0.723,
                      "shadowDistance": 100,
                      "shadowDepthBias": 2,
                      "strength": 10,
                      "angle": 0.526,
                      "maxBounces": 1024
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "j8lhw6kw",
              "_$type": "Sprite3D",
              "name": "Range",
              "_$child": [
                {
                  "_$id": "orjwd2a3",
                  "_$type": "Sprite3D",
                  "name": "Sprite3D",
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": -2
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "CompoundColliderShape",
                        "shapes": [
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": -9.149295695946904,
                              "z": -29.874188327293112
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 267.56405170927314,
                              "y": 1,
                              "z": 116.67774102636497
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": -156.81518789194394,
                              "z": 4.338128601815136
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 33.43037578388797,
                              "y": 1,
                              "z": 47.95516741084006
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": 58.773674721639765,
                              "z": -97.02324051125092
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 37.58030741867043,
                              "y": 1,
                              "z": 21.37599591636456
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": 0.09231683481220898,
                              "z": 41.32797856987442
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 249.78502509130422,
                              "y": 1,
                              "z": 29.501959874948675
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": 147.54668444840584,
                              "z": -3.8055469726662885
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 47.03836523845911,
                              "y": 1,
                              "z": 36.754
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": -2.1385128018624924,
                              "z": 70.25137565858759
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 11.266070608020716,
                              "y": 1,
                              "z": 32.08728970009123
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": -60.48561780165794,
                              "z": -97.67558104077585
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 38.72494233607275,
                              "y": 1,
                              "z": 20.913312384973054
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": -2.4507853736167675,
                              "z": 99.32452470945191
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 32.665174319508964,
                              "y": 1,
                              "z": 34.40226143014398
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": -95.64580272904138,
                              "z": 81.91962555990946
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 58.35730264924037,
                              "y": 1,
                              "z": 55.81246038041777
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": 86.16780937739173,
                              "z": 69.18395835685567
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 57.51095468514686,
                              "y": 1,
                              "z": 33.08715640383646
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": 119.10391338300386,
                              "z": 62.79053964245273
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 10.891230042237453,
                              "y": 1,
                              "z": 17.051042740418524
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": 105.99551740965435,
                              "z": 90.2069256989673
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 16.57821357836616,
                              "y": 1,
                              "z": 11.633866265168777
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": 126.6072849403865,
                              "z": -74.6247166016962
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 29.4479288900759,
                              "y": 1,
                              "z": 27.52732668647179
                            }
                          }
                        ]
                      },
                      "collisionGroup": 2,
                      "canCollideWith": 20,
                      "friction": 0
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "qqpgjhsa",
              "_$type": "Sprite3D",
              "name": "Ground",
              "isStatic": true,
              "_$child": [
                {
                  "_$id": "7k3von86",
                  "_$type": "Sprite3D",
                  "name": "dipi",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -31.3400651,
                      "z": -21.8709894
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "3iaaizek",
                      "_$prefab": "0df7cb2d-cffa-4bbc-b394-c2c60f69b48f",
                      "name": "Common_xiaolu_11",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -44.66046905517578,
                          "y": 0.1,
                          "z": 62.277475357055664
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 1,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "nuwvxa54",
                      "_$prefab": "0df7cb2d-cffa-4bbc-b394-c2c60f69b48f",
                      "name": "Common_xiaolu_12",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 15.486388206481934,
                          "z": 62.4796257019043
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 1,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "e32zcyeg",
                      "_$prefab": "230d4888-0c4d-48e3-a346-bfc1e9210828",
                      "name": "Common_xiaolu_13",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -73.36550903320312,
                          "z": 7.610404014587402
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 1,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "sba0puxs",
                      "_$prefab": "3cfd2bb9-6a4e-4408-8157-027cb8c588db",
                      "name": "Common_chaodi04_1",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -69.33878326416016,
                          "y": 0.005608798004686832,
                          "z": -13.772608757019043
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": -0.7071067811865476,
                          "y": -4.329780281177467e-17,
                          "z": 0.7071067811865475,
                          "w": 4.329780281177466e-17
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": -1,
                          "z": 0.982563853263855
                        }
                      }
                    },
                    {
                      "_$id": "qomr6ikf",
                      "_$prefab": "3cfd2bb9-6a4e-4408-8157-027cb8c588db",
                      "name": "Common_chaodi04_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -58.76325988769531,
                          "y": 0.005608798004686832,
                          "z": -13.772608757019043
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": 0.7071067811865476,
                          "y": 4.329780281177467e-17,
                          "z": 0.7071067811865475,
                          "w": 4.329780281177466e-17
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": -1,
                          "z": 1
                        }
                      },
                      "_$child": [
                        {
                          "_$override": "#41",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -1.2434497875801753e-14,
                              "z": -0.6460598419237513
                            },
                            "localScale": {
                              "_$type": "Vector3",
                              "x": 1,
                              "y": 1,
                              "z": 0.9825638506876229
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "np5540c6",
                      "_$prefab": "3cfd2bb9-6a4e-4408-8157-027cb8c588db",
                      "name": "Common_chaodi04_3",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -57.86660791823722,
                          "y": 0.005608798004686832,
                          "z": 4.974132537841797
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": 0.7071067811865476,
                          "y": 4.329780281177467e-17,
                          "z": 0.7071067811865475,
                          "w": 4.329780281177466e-17
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": -1,
                          "z": 1
                        }
                      },
                      "_$child": [
                        {
                          "_$override": "#41",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -1.2434497875801753e-14,
                              "z": -0.6460598419237513
                            },
                            "localScale": {
                              "_$type": "Vector3",
                              "x": 1,
                              "y": 1,
                              "z": 0.9825638506876229
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "1lfoipag",
                      "_$prefab": "3cfd2bb9-6a4e-4408-8157-027cb8c588db",
                      "name": "Common_chaodi04_6",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 19.459962844848633,
                          "y": 0.005608798004686832,
                          "z": 2.257007360458374
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": 0.7071067811865476,
                          "y": 4.329780281177467e-17,
                          "z": 0.7071067811865475,
                          "w": 4.329780281177466e-17
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": -1,
                          "z": 1.3607151508331299
                        }
                      },
                      "_$child": [
                        {
                          "_$override": "#41",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": 3.552713678800501e-15,
                              "z": -1.259144410514784
                            },
                            "localScale": {
                              "_$type": "Vector3",
                              "x": 1,
                              "y": 1,
                              "z": 0.7074752372412001
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "5lh2kjl2",
                      "_$prefab": "3cfd2bb9-6a4e-4408-8157-027cb8c588db",
                      "name": "Common_chaodi04_7",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 46.89414978027344,
                          "y": 0.005608798004686832,
                          "z": 0.21279112994670868
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": -0.7071067811865476,
                          "y": -4.329780281177467e-17,
                          "z": 0.7071067811865475,
                          "w": 4.329780281177466e-17
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.0330663919448853,
                          "y": -1,
                          "z": 1.7708333730697632
                        }
                      },
                      "_$child": [
                        {
                          "_$override": "#41",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -6.217248937900877e-15,
                              "z": -1.017579747402749
                            },
                            "localScale": {
                              "_$type": "Vector3",
                              "x": 1,
                              "y": 1,
                              "z": 0.9825638506876229
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "j05fqbq3",
                      "_$prefab": "da7a493d-b90d-47f6-895c-e2a3e65fd873",
                      "name": "Common_chaodi03",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 63.539676666259766,
                          "y": 0.03872813284397125,
                          "z": 25.64971923828125
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.5040462613105774,
                          "y": 0.5040462613105774,
                          "z": 0.5040462613105774
                        }
                      },
                      "_$child": [
                        {
                          "_$override": "#41",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": 0.0000043156323954463005,
                              "y": 0.027403355152617673,
                              "z": -9.75967850536108e-7
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "2v19dw8t",
                      "_$prefab": "5fe360cc-314d-40d8-899d-750c12d7ff64",
                      "name": "Common_chaodi01_1",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 118.085693359375,
                          "y": 0.06891613453626633,
                          "z": -32.43280029296875
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.6399999856948853,
                          "y": 0.6399999856948853,
                          "z": 0.6399999856948853
                        }
                      }
                    },
                    {
                      "_$id": "qi8p484p",
                      "_$prefab": "b464c9dd-ccd9-4458-acdb-df9d5db5eb4c",
                      "name": "Common_chaodi02",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 75.54467010498047,
                          "y": 0.07651696354150772,
                          "z": 75.12872314453125
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": -0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.4121951162815094,
                          "y": 0.4121951162815094,
                          "z": 0.4121951162815094
                        }
                      }
                    },
                    {
                      "_$id": "1x5jvtmu",
                      "_$prefab": "b464c9dd-ccd9-4458-acdb-df9d5db5eb4c",
                      "name": "Common_chaodi02_1",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 51.81074142456055,
                          "y": 0.07651696354150772,
                          "z": 75.12872314453125
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": -0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.4121951162815094,
                          "y": 0.4121951162815094,
                          "z": 0.4121951162815094
                        }
                      }
                    },
                    {
                      "_$id": "bzmxaj37",
                      "_$prefab": "da7a493d-b90d-47f6-895c-e2a3e65fd873",
                      "name": "Common_chaodi03_1",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 88.35490417480469,
                          "y": 0.03872813284397125,
                          "z": -5.034585475921631
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.7217703461647034,
                          "y": 0.5040462613105774,
                          "z": 0.5040462613105774
                        }
                      },
                      "_$child": [
                        {
                          "_$override": "#41",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": 0.0000043156323954463005,
                              "y": 0.027403355152617673,
                              "z": -9.75967850536108e-7
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "oamgylpm",
                      "_$prefab": "3cfd2bb9-6a4e-4408-8157-027cb8c588db",
                      "name": "Common_chaodi04_8",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 28.428457260131836,
                          "y": 0.005608798004686832,
                          "z": -32.21124267578125
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": -0.7071067811865476,
                          "y": -4.329780281177467e-17,
                          "z": 0.7071067811865475,
                          "w": 4.329780281177466e-17
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.880886435508728,
                          "y": -1,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "csyhjb4l",
                      "_$prefab": "3cfd2bb9-6a4e-4408-8157-027cb8c588db",
                      "name": "Common_chaodi04_10",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 117.40969848632812,
                          "y": 0.005608798004686832,
                          "z": 26.84481430053711
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": 6.123234262925839e-17,
                          "y": 3.7493995967888415e-33,
                          "z": 1,
                          "w": 6.123233995736766e-17
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.0794984102249146,
                          "y": -1,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "mdneptlp",
                      "_$prefab": "3cfd2bb9-6a4e-4408-8157-027cb8c588db",
                      "name": "Common_chaodi04_11",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 126.37674713134766,
                          "y": 0.005608798004686832,
                          "z": 40.122474670410156
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": 1,
                          "w": 6.123233995736766e-17
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.6750320792198181,
                          "y": -1,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "um648ka8",
                      "_$prefab": "3cfd2bb9-6a4e-4408-8157-027cb8c588db",
                      "name": "Common_chaodi04_12",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 109.42656707763672,
                          "y": 0.005608798004686832,
                          "z": 40.122474670410156
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": 1,
                          "w": 6.123233995736766e-17
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.6750320792198181,
                          "y": -1,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "d8liigl0",
                      "_$prefab": "3cfd2bb9-6a4e-4408-8157-027cb8c588db",
                      "name": "Common_chaodi04_13",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 125.51962280273438,
                          "y": 0.005608798004686832,
                          "z": 68.80592346191406
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": -6.123233601181349e-17,
                          "y": -3.7493992673065e-33,
                          "z": 1,
                          "w": 6.123233995736766e-17
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.9727083444595337,
                          "y": -1,
                          "z": 1.333612084388733
                        }
                      }
                    },
                    {
                      "_$id": "g6j21shz",
                      "_$prefab": "b464c9dd-ccd9-4458-acdb-df9d5db5eb4c",
                      "name": "Common_chaodi02_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 2.210712654706306,
                          "y": 0.07651696354150772,
                          "z": 70.5316104888916
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": -0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.9730507731437683,
                          "y": 0.4121951162815094,
                          "z": 0.5663202404975891
                        }
                      }
                    },
                    {
                      "_$id": "ffulnbes",
                      "_$prefab": "da7a493d-b90d-47f6-895c-e2a3e65fd873",
                      "name": "Common_chaodi03_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 89.169921875,
                          "y": 0.03872813284397125,
                          "z": -32.90824890136719
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.7217703461647034,
                          "y": 0.5040462613105774,
                          "z": 0.5040462613105774
                        }
                      },
                      "_$child": [
                        {
                          "_$override": "#41",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": 0.0000043156323954463005,
                              "y": 0.027403355152617673,
                              "z": -9.75967850536108e-7
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "qderzr0z",
                      "_$prefab": "da7a493d-b90d-47f6-895c-e2a3e65fd873",
                      "name": "Common_chaodi03_3",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 71.55390167236328,
                          "y": 0.03872813284397125,
                          "z": -31.453073501586914
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.3014901876449585,
                          "y": 0.5040462613105774,
                          "z": 0.801598072052002
                        }
                      },
                      "_$child": [
                        {
                          "_$override": "#41",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": 0.0000043156323954463005,
                              "y": 0.027403355152617673,
                              "z": -9.75967850536108e-7
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "myxytekv",
                      "_$prefab": "3cfd2bb9-6a4e-4408-8157-027cb8c588db",
                      "name": "Common_chaodi04_14",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -40.27687072753906,
                          "y": 0.005608798004686832,
                          "z": 2.257007360458374
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": -0.7071067811865476,
                          "y": -4.329780281177467e-17,
                          "z": 0.7071067811865475,
                          "w": 4.329780281177466e-17
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": -1,
                          "z": 1.3607151508331299
                        }
                      },
                      "_$child": [
                        {
                          "_$override": "#41",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": 3.552713678800501e-15,
                              "z": -1.259144410514784
                            },
                            "localScale": {
                              "_$type": "Vector3",
                              "x": 1,
                              "y": 1,
                              "z": 0.7074752372412001
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "jzyrxif1",
                      "_$prefab": "b464c9dd-ccd9-4458-acdb-df9d5db5eb4c",
                      "name": "Common_chaodi02_3",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -50.50197982788086,
                          "y": 0.07651696354150772,
                          "z": 36.94962692260742
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": -0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.5935609936714172,
                          "y": 0.5935609936714172,
                          "z": 0.5935609936714172
                        }
                      }
                    },
                    {
                      "_$id": "348slq58",
                      "_$prefab": "3cfd2bb9-6a4e-4408-8157-027cb8c588db",
                      "name": "Common_chaodi04_15",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -23.936525344848633,
                          "y": 0.005608798004686832,
                          "z": -34.00983428955078
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": 0.7071067811865476,
                          "y": 4.329780281177467e-17,
                          "z": 0.7071067811865475,
                          "w": 4.329780281177466e-17
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.5519999861717224,
                          "y": -0.5519999861717224,
                          "z": 0.5519999861717224
                        }
                      },
                      "_$child": [
                        {
                          "_$override": "#41",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -1.2434497875801753e-14,
                              "z": -0.6460598419237513
                            },
                            "localScale": {
                              "_$type": "Vector3",
                              "x": 1,
                              "y": 1,
                              "z": 0.9825638506876229
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "z3gzrf57",
                      "_$prefab": "da7a493d-b90d-47f6-895c-e2a3e65fd873",
                      "name": "Common_chaodi03_4",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 85.0695571899414,
                          "y": 0.03872813284397125,
                          "z": 45.776885986328125
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.6868441104888916,
                          "y": 0.5040462613105774,
                          "z": 0.5040462613105774
                        }
                      },
                      "_$child": [
                        {
                          "_$override": "#41",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": 0.0000043156323954463005,
                              "y": 0.027403355152617673,
                              "z": -9.75967850536108e-7
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "bm2plvtf",
                      "_$prefab": "da7a493d-b90d-47f6-895c-e2a3e65fd873",
                      "name": "Common_chaodi03_5",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 68.42608642578125,
                          "y": 0.03872813284397125,
                          "z": 45.776885986328125
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.6868441104888916,
                          "y": 0.5040462613105774,
                          "z": 0.5040462613105774
                        }
                      },
                      "_$child": [
                        {
                          "_$override": "#41",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": 0.0000043156323954463005,
                              "y": 0.027403355152617673,
                              "z": -9.75967850536108e-7
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "fj0gi86y",
                      "_$prefab": "da7a493d-b90d-47f6-895c-e2a3e65fd873",
                      "name": "Common_chaodi03_6",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 47.053558349609375,
                          "y": 0.03872813284397125,
                          "z": 45.776885986328125
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.6868441104888916,
                          "y": 0.5040462613105774,
                          "z": 0.5040462613105774
                        }
                      },
                      "_$child": [
                        {
                          "_$override": "#41",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": 0.0000043156323954463005,
                              "y": 0.027403355152617673,
                              "z": -9.75967850536108e-7
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "w223k08p",
                      "_$prefab": "5fe360cc-314d-40d8-899d-750c12d7ff64",
                      "name": "Common_chaodi01_7",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 89.63725280761719,
                          "y": 0.06891613453626633,
                          "z": -69.48612213134766
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.9007652401924133,
                          "y": 0.6399999856948853,
                          "z": 0.9862294793128967
                        }
                      }
                    },
                    {
                      "_$id": "laf5besz",
                      "_$prefab": "da7a493d-b90d-47f6-895c-e2a3e65fd873",
                      "name": "Common_chaodi03_7",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 147.4005126953125,
                          "y": 0.03872813284397125,
                          "z": 32.27909851074219
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.5040462613105774,
                          "y": 0.5040462613105774,
                          "z": 0.5040462613105774
                        }
                      },
                      "_$child": [
                        {
                          "_$override": "#41",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": 0.0000043156323954463005,
                              "y": 0.027403355152617673,
                              "z": -9.75967850536108e-7
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "3xyji6tm",
                      "_$prefab": "da7a493d-b90d-47f6-895c-e2a3e65fd873",
                      "name": "Common_chaodi03_8",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 147.62388610839844,
                          "y": 0.03872813284397125,
                          "z": 69.39733123779297
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.5040462613105774,
                          "y": 0.5040462613105774,
                          "z": 0.5040462613105774
                        }
                      },
                      "_$child": [
                        {
                          "_$override": "#41",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": 0.0000043156323954463005,
                              "y": 0.027403355152617673,
                              "z": -9.75967850536108e-7
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "j92n2dd4",
                      "_$prefab": "da7a493d-b90d-47f6-895c-e2a3e65fd873",
                      "name": "Common_chaodi03_9",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 120.77499389648438,
                          "y": 0.03872813284397125,
                          "z": 95.77426147460938
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.711188554763794,
                          "y": 0.5040462613105774,
                          "z": 0.5720524787902832
                        }
                      },
                      "_$child": [
                        {
                          "_$override": "#41",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": 0.0000043156323954463005,
                              "y": 0.027403355152617673,
                              "z": -9.75967850536108e-7
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "69sb3jdt",
                      "_$prefab": "da7a493d-b90d-47f6-895c-e2a3e65fd873",
                      "name": "Common_chaodi03_10",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 163.6902618408203,
                          "y": 0.03872813284397125,
                          "z": 24.45457649230957
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": -0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.3613437414169312,
                          "y": 0.830193817615509,
                          "z": 1.0151610374450684
                        }
                      },
                      "_$child": [
                        {
                          "_$override": "#41",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": 0.0000043156323954463005,
                              "y": 0.027403355152617673,
                              "z": -9.75967850536108e-7
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "cc4i8cb8",
                      "_$prefab": "da7a493d-b90d-47f6-895c-e2a3e65fd873",
                      "name": "Common_chaodi03_11",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 145.1509552001953,
                          "y": 0.03872813284397125,
                          "z": -5.779748916625977
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.5040462613105774,
                          "y": 0.5040462613105774,
                          "z": 0.5040462613105774
                        }
                      },
                      "_$child": [
                        {
                          "_$override": "#41",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": 0.0000043156323954463005,
                              "y": 0.027403355152617673,
                              "z": -9.75967850536108e-7
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "j2w970vn",
                      "_$prefab": "b464c9dd-ccd9-4458-acdb-df9d5db5eb4c",
                      "name": "Common_chaodi02_4",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 29.10132598876953,
                          "y": 0.07651696354150772,
                          "z": 111.22618103027344
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": -0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.9730507731437683,
                          "y": 0.4121951162815094,
                          "z": 0.7158370018005371
                        }
                      }
                    },
                    {
                      "_$id": "mgqq5ovj",
                      "_$prefab": "b464c9dd-ccd9-4458-acdb-df9d5db5eb4c",
                      "name": "Common_chaodi02_5",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 29.10132598876953,
                          "y": 0.07651696354150772,
                          "z": 133.4647216796875
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": -0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.9730507731437683,
                          "y": 0.4121951162815094,
                          "z": 0.7158370018005371
                        }
                      }
                    },
                    {
                      "_$id": "w72ft2lt",
                      "_$prefab": "da7a493d-b90d-47f6-895c-e2a3e65fd873",
                      "name": "Common_chaodi03_12",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 188.6490020751953,
                          "y": 0.03872813284397125,
                          "z": 24.881649017333984
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": -0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.9411404132843018,
                          "y": 0.830193817615509,
                          "z": 0.7820108532905579
                        }
                      },
                      "_$child": [
                        {
                          "_$override": "#41",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": 0.0000043156323954463005,
                              "y": 0.027403355152617673,
                              "z": -9.75967850536108e-7
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "ruqx1zbo",
                      "_$prefab": "da7a493d-b90d-47f6-895c-e2a3e65fd873",
                      "name": "Common_chaodi03_13",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 150.6269989013672,
                          "y": 0.03872813284397125,
                          "z": -59.338783264160156
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": -0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.9411404132843018,
                          "y": 0.830193817615509,
                          "z": 0.7820108532905579
                        }
                      },
                      "_$child": [
                        {
                          "_$override": "#41",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": 0.0000043156323954463005,
                              "y": 0.027403355152617673,
                              "z": -9.75967850536108e-7
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "n5ulldfv",
                      "_$prefab": "da7a493d-b90d-47f6-895c-e2a3e65fd873",
                      "name": "Common_chaodi03_14",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 109.68329620361328,
                          "y": 0.03872813284397125,
                          "z": 95.77426147460938
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.711188554763794,
                          "y": 0.5040462613105774,
                          "z": 0.5720524787902832
                        }
                      },
                      "_$child": [
                        {
                          "_$override": "#41",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": 0.0000043156323954463005,
                              "y": 0.027403355152617673,
                              "z": -9.75967850536108e-7
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "9g6hna2z",
                      "_$prefab": "b464c9dd-ccd9-4458-acdb-df9d5db5eb4c",
                      "name": "Common_chaodi02_6",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -24.58073492614527,
                          "y": 0.07651696354150772,
                          "z": 70.5316104888916
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": -0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.9730507731437683,
                          "y": 0.4121951162815094,
                          "z": 0.5663202404975891
                        }
                      }
                    }
                  ]
                },
                {
                  "_$id": "bad5ziua",
                  "_$prefab": "a8c13d35-fac8-4c29-9ba4-0cbc5c0ade25",
                  "name": "huashengdun_shui",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "nuv8puwu",
                  "_$prefab": "c3029a8f-445f-453c-bfa6-08fc7096cc65",
                  "name": "huashengdun_dibiao",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                }
              ]
            },
            {
              "_$id": "i6ai54gq",
              "_$type": "Sprite3D",
              "name": "Npcs"
            },
            {
              "_$id": "fiqevxl7",
              "_$type": "Sprite3D",
              "name": "Players"
            },
            {
              "_$id": "bllncwsg",
              "_$type": "Sprite3D",
              "name": "Building",
              "layer": 3,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -31.3400651,
                  "z": -21.8709894
                }
              },
              "_$child": [
                {
                  "_$id": "n722qs93",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_9",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 166.12533684821037,
                      "y": 8.270395815673098e-15,
                      "z": 2.9907659784216056
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "iwpu35i8",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_10",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 168.56121036488443,
                      "y": 0.15385553240776417,
                      "z": 3.060132783176411
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "syw98ms9",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_11",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 163.6537847180075,
                      "y": 0.15385553240776062,
                      "z": 6.620416869540471
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "8vxgufor",
                  "_$prefab": "f56d272c-4990-4280-984f-6fac7fd6b4b2",
                  "name": "daxingjianzhu_lanse",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 49.59094561604,
                      "y": 1.3073986337985843e-12,
                      "z": 0.41277899691217
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "ojx0y710",
                  "_$prefab": "6b019b59-2b62-452a-ab80-6ddb5074b33d",
                  "name": "daxingjianzhu_shuita",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 28.427286809413275,
                      "y": 1.4210854715202004e-14,
                      "z": -33.085859298706055
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "9mb4z0v2",
                  "_$prefab": "e697fcaa-edb4-4f83-bc82-6480ad1ed034",
                  "name": "daxingjianzhu_yuanxing",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 128.87040778353474,
                      "y": 1.0089706847793423e-12,
                      "z": 95.49703407287598
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "r47miu4b",
                  "_$prefab": "8430c7a4-b5b2-4b22-9296-20e57bb5f3de",
                  "name": "daxingjianzhu_zuqiuchang",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 164.6157652568977,
                      "y": -8.526512829121202e-14,
                      "z": 25.009233854843636
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 2.2539452650793095,
                          "z": -1.154242287524795
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "qw2bpi0k",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -88.87057307918431,
                      "y": 4.973799150320701e-14,
                      "z": 109.33071479894551
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "cb7s7bve",
                  "_$prefab": "708d6e64-2ee4-49a8-94a2-3c1bc1da9a21",
                  "name": "putong_dajianzhu04",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.262882497841808,
                      "z": 70.22982948733048
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "qxf67kdv",
                  "_$prefab": "39ffc5a6-de1c-446e-8caf-7153de220c1d",
                  "name": "putong_xiaoxing11",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -24.2692131857222,
                      "y": -0.11281446367502213,
                      "z": -34.34090232849121
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "7vd0zdqd",
                  "_$prefab": "0fcf3b4a-580a-41e2-8d22-1d79fd969748",
                  "name": "putong_xiaoxing09",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -81.4596960914215,
                      "y": 2.842170943040401e-14,
                      "z": 14.102256643421113
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "achphiyj",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.53154373168945,
                      "y": 7.105427357601002e-15,
                      "z": 66.0006911325767
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "6din6i7f",
                  "_$prefab": "258dc9bb-50a4-491f-a294-bd76e27c51b4",
                  "name": "putong_zhongxing04",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -57.644276064961815,
                      "z": 9.828641273627362
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "p6kyx7s7",
                  "_$prefab": "219c3eda-1c3f-43d3-9641-fe2b5c2d1031",
                  "name": "putong_zhongxing02",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -57.72206537160244,
                      "z": 5.041417457709393
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "lflo9omx",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -57.890186709493065,
                      "z": 0.5117925187445564
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "to12iwmt",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_18",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -79.5073175358114,
                      "y": 3.375077994860476e-14,
                      "z": -15.671011930820272
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "385xtnol",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_17",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -79.51284308079353,
                      "y": 2.842170943040401e-14,
                      "z": -18.02565526321992
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "tf5b3vxi",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_16",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -82.72776885481746,
                      "y": 2.842170943040401e-14,
                      "z": -15.363095270852579
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "dq3covjd",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_15",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -79.50912109655816,
                      "y": 2.842170943040401e-14,
                      "z": -10.53486511794489
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "64qe79c1",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_14",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -79.60835922008273,
                      "y": 2.3092638912203256e-14,
                      "z": -20.354232833198854
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "m2a0s9je",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_13",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -82.62706084700496,
                      "y": 2.842170943040401e-14,
                      "z": -13.248349177102577
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "okjxi1sr",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_12",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -82.66602818492086,
                      "y": 2.842170943040401e-14,
                      "z": -8.349233801444557
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "igd3r250",
                  "_$prefab": "4993fe3c-99a9-4f62-a149-80a95bb88940",
                  "name": "putong_xiaoxing07_1",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -70.83348592291628,
                      "y": 2.842170943040401e-14,
                      "z": -0.08600045180261517
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "3iaw5rbe",
                  "_$prefab": "f1033483-6f72-4507-90c2-04fc916d1043",
                  "name": "putong_xiaoxing05_1",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -81.82564497012194,
                      "y": 2.842170943040401e-14,
                      "z": 7.179925827636795
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "0xns9v0k",
                  "_$prefab": "3d91bc88-a8d6-4a2b-9c88-9dab20e90bae",
                  "name": "putong_xiaoxing08_1",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -66.03704539273583,
                      "y": 2.842170943040401e-14,
                      "z": 14.627014446267712
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "2mn5igwr",
                  "_$prefab": "0fcf3b4a-580a-41e2-8d22-1d79fd969748",
                  "name": "putong_xiaoxing09_1",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -66.1875280407976,
                      "y": 3.552713678800501e-14,
                      "z": -0.022575666735907163
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "8tfd3dba",
                  "_$prefab": "f1033483-6f72-4507-90c2-04fc916d1043",
                  "name": "putong_xiaoxing05_2",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -70.73776261826545,
                      "y": 2.842170943040401e-14,
                      "z": 15.135623704924313
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "tocky8w4",
                  "_$prefab": "0aa9a537-4d7c-4183-a5c2-764d39fa06ff",
                  "name": "putong_xiaoxing10_9",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 191.8131560743738,
                      "y": 2.842170943040401e-14,
                      "z": 24.862998372945952
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "kkxcg6lj",
                  "_$prefab": "0aa9a537-4d7c-4183-a5c2-764d39fa06ff",
                  "name": "putong_xiaoxing10_10",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 184.8551372750801,
                      "y": 2.842170943040401e-14,
                      "z": 24.7459369159221
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "rik8my2r",
                  "_$prefab": "0aa9a537-4d7c-4183-a5c2-764d39fa06ff",
                  "name": "putong_xiaoxing10_11",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 149.69283786308026,
                      "z": 40.99761794891078
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "mwsf6zoq",
                  "_$prefab": "0aa9a537-4d7c-4183-a5c2-764d39fa06ff",
                  "name": "putong_xiaoxing10_12",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 149.69283786308026,
                      "z": 34.03861259307582
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "47qyiq1m",
                  "_$prefab": "0aa9a537-4d7c-4183-a5c2-764d39fa06ff",
                  "name": "putong_xiaoxing10_14",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 148.46571708559654,
                      "z": -13.382430772812139
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "im83oioy",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_1",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -59.32919187561751,
                      "y": 1.7053025658242404e-13,
                      "z": 29.708292614574162
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "bsdkqfeo",
                  "_$prefab": "219c3eda-1c3f-43d3-9641-fe2b5c2d1031",
                  "name": "putong_zhongxing02_1",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -54.74539060608626,
                      "y": 1.7053025658242404e-13,
                      "z": 29.527231823558537
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "pai3sz29",
                  "_$prefab": "258dc9bb-50a4-491f-a294-bd76e27c51b4",
                  "name": "putong_zhongxing04_1",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -50.06642789856673,
                      "y": 1.8118839761882555e-13,
                      "z": 29.50996650373432
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "26r5sjsr",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_5",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 150.53407311938892,
                      "z": 57.72635279792091
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "hq3wt6j1",
                  "_$prefab": "219c3eda-1c3f-43d3-9641-fe2b5c2d1031",
                  "name": "putong_zhongxing02_5",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 150.70222497485767,
                      "z": 62.25597964423439
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "q0wxjsek",
                  "_$prefab": "258dc9bb-50a4-491f-a294-bd76e27c51b4",
                  "name": "putong_zhongxing04_5",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 150.77998376392017,
                      "z": 67.04320346015237
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "tuef66f7",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_7",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 147.59318167266687,
                      "z": -34.056752320105296
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "xe6s6fcd",
                  "_$prefab": "219c3eda-1c3f-43d3-9641-fe2b5c2d1031",
                  "name": "putong_zhongxing02_7",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 147.76133352813562,
                      "z": -29.52712738114044
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "0iet8ukr",
                  "_$prefab": "258dc9bb-50a4-491f-a294-bd76e27c51b4",
                  "name": "putong_zhongxing04_7",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 147.83909231719812,
                      "z": -24.73990356522247
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "b2ohqzkm",
                  "_$prefab": "219c3eda-1c3f-43d3-9641-fe2b5c2d1031",
                  "name": "putong_zhongxing02_11",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -41.09394430997928,
                      "y": -2.1316282072803006e-14,
                      "z": -0.24999126286500584
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "qoemwgjq",
                  "_$prefab": "258dc9bb-50a4-491f-a294-bd76e27c51b4",
                  "name": "putong_zhongxing04_11",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -36.30012106779179,
                      "y": -2.1316282072803006e-14,
                      "z": -0.29968913884156834
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "0r260sl2",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_14",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -45.269177294656075,
                      "y": 4.476419235288631e-13,
                      "z": 29.658837095448668
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "c6ln38sp",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_3",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 71.04740287643003,
                      "y": 1.0373923942097463e-12,
                      "z": -31.04035560508362
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "7ydpbzuu",
                  "_$prefab": "708d6e64-2ee4-49a8-94a2-3c1bc1da9a21",
                  "name": "putong_dajianzhu04_1",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -21.569725843776602,
                      "y": 7.105427357601002e-14,
                      "z": 37.1054314031198
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "yfeeuap0",
                  "_$prefab": "708d6e64-2ee4-49a8-94a2-3c1bc1da9a21",
                  "name": "putong_dajianzhu04_5",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 44.621831016548235,
                      "y": 2.8421709430404007e-13,
                      "z": -31.798656472601913
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "2wntlkba",
                  "_$prefab": "ee2248fe-e870-4128-ad0a-dfd4a5d671ad",
                  "name": "putong_dajianzhu05_1",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 127.0760498046875,
                      "y": -8.384404281969182e-13,
                      "z": -1.8002316578721
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "mjbve0t4",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_4",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 53.96358108520508,
                      "y": -1.2789769243681803e-13,
                      "z": 65.83987052489029
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3"
                        }
                      }
                    }
                  ]
                },
                {
                  "_$id": "ifs7wwga",
                  "_$prefab": "f186ecd5-dc9b-42bf-b724-cf99e3af5799",
                  "name": "putong_ditiezhan_2",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -77.3290333535872,
                      "y": 0.10431288927794924,
                      "z": 84.73089162688183
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.5,
                      "y": 0.5,
                      "z": 0.5
                    }
                  }
                },
                {
                  "_$id": "hm5nrg6y",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_6",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -77.12629154913856,
                      "y": -1.3145040611561853e-13,
                      "z": 102.59827312255828
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "ka7z6bya",
                  "_$prefab": "f186ecd5-dc9b-42bf-b724-cf99e3af5799",
                  "name": "putong_ditiezhan_3",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -80.07734011829292,
                      "y": 0.10431288927793503,
                      "z": 50.51681273900786
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.5,
                      "y": 0.5,
                      "z": 0.5
                    }
                  }
                },
                {
                  "_$id": "8j6ejhni",
                  "_$prefab": "f186ecd5-dc9b-42bf-b724-cf99e3af5799",
                  "name": "putong_ditiezhan_8",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -76.20197673252238,
                      "y": 0.10431288927793503,
                      "z": 30.166069563615984
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.5,
                      "y": 0.5,
                      "z": 0.5
                    }
                  }
                },
                {
                  "_$id": "gapxi4i8",
                  "_$prefab": "f186ecd5-dc9b-42bf-b724-cf99e3af5799",
                  "name": "putong_ditiezhan_9",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -20.822504610971293,
                      "y": 0.10431288927793503,
                      "z": -52.15299344768923
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.5,
                      "y": 0.5,
                      "z": 0.5
                    }
                  }
                },
                {
                  "_$id": "iwbyu8by",
                  "_$prefab": "f186ecd5-dc9b-42bf-b724-cf99e3af5799",
                  "name": "putong_ditiezhan_10",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 19.688345381945354,
                      "y": 0.1043128892778995,
                      "z": -27.80957283633306
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.5,
                      "y": 0.5,
                      "z": 0.5
                    }
                  }
                },
                {
                  "_$id": "cu00mm46",
                  "_$prefab": "f186ecd5-dc9b-42bf-b724-cf99e3af5799",
                  "name": "putong_ditiezhan_11",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 88.84283768693558,
                      "y": 0.10431288927794213,
                      "z": 75.18772474034881
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.5,
                      "y": 0.5,
                      "z": 0.5
                    }
                  }
                },
                {
                  "_$id": "ui1m327p",
                  "_$prefab": "f186ecd5-dc9b-42bf-b724-cf99e3af5799",
                  "name": "putong_ditiezhan_12",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 129.24552310209026,
                      "y": 0.10431288927794569,
                      "z": 87.08991316421182
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.5,
                      "y": 0.5,
                      "z": 0.5
                    }
                  }
                },
                {
                  "_$id": "lttr0quc",
                  "_$prefab": "f186ecd5-dc9b-42bf-b724-cf99e3af5799",
                  "name": "putong_ditiezhan_13",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 129.27286045216292,
                      "y": 0.10431288927793503,
                      "z": 104.0956700199602
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.5,
                      "y": 0.5,
                      "z": 0.5
                    }
                  }
                },
                {
                  "_$id": "h08bn14a",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_3",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 148.46643127194474,
                      "y": 2.842170943040401e-14,
                      "z": -6.599005788575274
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "y8rlwbw0",
                  "_$prefab": "ee2248fe-e870-4128-ad0a-dfd4a5d671ad",
                  "name": "putong_dajianzhu05_4",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 109.39974975585938,
                      "y": 4.263256414560601e-14,
                      "z": -1.7762944325303032
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "3mx3hl7v",
                  "_$prefab": "ee2248fe-e870-4128-ad0a-dfd4a5d671ad",
                  "name": "putong_dajianzhu05_5",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -27.77713465091572,
                      "y": -5.258016244624741e-13,
                      "z": 2.610494613647461
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -1,
                      "w": 6.123233995736766e-17
                    }
                  }
                },
                {
                  "_$id": "rmnxwnh1",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_23",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.688985824584961,
                      "y": -7.105427357601002e-15,
                      "z": -37.550378860507124
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "pgn3m0s1",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_19",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -38.55774895215547,
                      "z": -23.561607357165574
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7149630196905843,
                      "w": -0.699162270488705
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    },
                    {
                      "_$id": "17xpllfn",
                      "_$type": "Sprite3D",
                      "name": "transport_4",
                      "layer": 3,
                      "transform": {
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.009999999776482582,
                          "y": 0.009999999776482582,
                          "z": 0.009999999776482582
                        }
                      },
                      "_$comp": [
                        {
                          "_$type": "MeshFilter",
                          "sharedMesh": {
                            "_$uuid": "e9ecfe86-c3a9-41ed-9d40-d904ffb486e3@lm0",
                            "_$type": "Mesh"
                          }
                        },
                        {
                          "_$type": "MeshRenderer",
                          "receiveShadow": true,
                          "castShadow": true,
                          "lightmapScaleOffset": {
                            "_$type": "Vector4"
                          },
                          "sharedMaterials": [
                            {
                              "_$uuid": "bc0cb067-38ae-43c7-a0bb-6b464fecddd7",
                              "_$type": "Material"
                            }
                          ]
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "tvos9yk5",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_20",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -36.21934349380763,
                      "z": -23.63022420711803
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7149630196905843,
                      "w": -0.699162270488705
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "a7kkvhab",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_21",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -34.381347262229546,
                      "z": -23.609291955485958
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7149630196905843,
                      "w": -0.699162270488705
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "dhwsk8cp",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_22",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -32.05925919527594,
                      "z": -23.586667373508057
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.699162270488705,
                      "w": 0.7149630196905843
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "5k9h58ty",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_23",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -29.797199437756504,
                      "z": -23.600213665619858
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7149630196905843,
                      "w": -0.699162270488705
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "3sab0izm",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_24",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -25.30126316469156,
                      "z": -23.366060456620097
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7149630196905843,
                      "w": -0.699162270488705
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "20hy05xt",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_6",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -137.4826881580454,
                      "y": 3.694822225952521e-13,
                      "z": 34.479529275721085
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "p590bwt2",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_8",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 117.53307370465089,
                      "y": 1.0516032489249483e-12,
                      "z": 51.1386051904822
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "ej5q2ws3",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_9",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 117.46450008000156,
                      "y": 1.0516032489249483e-12,
                      "z": 56.083701432169576
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "va5manpb",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_10",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 69.41515770966132,
                      "y": 1.0373923942097463e-12,
                      "z": -3.1831202856795855
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "utlh4l5w",
                  "_$prefab": "f1033483-6f72-4507-90c2-04fc916d1043",
                  "name": "putong_xiaoxing05_5",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 121.1214572081177,
                      "y": 3.339550858072471e-13,
                      "z": 26.4905517894425
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "u8gme3xj",
                  "_$prefab": "f1033483-6f72-4507-90c2-04fc916d1043",
                  "name": "putong_xiaoxing05_6",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 114.32797339428251,
                      "y": 4.618527782440651e-14,
                      "z": 26.678992543155058
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "g8pglq8f",
                  "_$prefab": "3d91bc88-a8d6-4a2b-9c88-9dab20e90bae",
                  "name": "putong_xiaoxing08_4",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 122.00313479394529,
                      "y": 1.7408297026122455e-13,
                      "z": 68.11066164954617
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3"
                        }
                      }
                    }
                  ]
                },
                {
                  "_$id": "djk82u83",
                  "_$prefab": "4993fe3c-99a9-4f62-a149-80a95bb88940",
                  "name": "putong_xiaoxing07_4",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 128.99037437872937,
                      "y": 2.842170943040401e-14,
                      "z": 68.23733584683706
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.6992405622187761,
                      "w": 0.7148864498282018
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "4upwhdtc",
                  "_$prefab": "0fcf3b4a-580a-41e2-8d22-1d79fd969748",
                  "name": "putong_xiaoxing09_3",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 109.1946066608889,
                      "y": 2.842170943040401e-14,
                      "z": 40.628881588583724
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "dnfhsqpo",
                  "_$prefab": "0fcf3b4a-580a-41e2-8d22-1d79fd969748",
                  "name": "putong_xiaoxing09_4",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 126.40977057067741,
                      "y": 2.842170943040401e-14,
                      "z": 40.375841571813346
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "is034x5m",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_14",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 63.370277404785156,
                      "y": -1.2789769243681803e-13,
                      "z": 65.83987433958755
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3"
                        }
                      }
                    }
                  ]
                },
                {
                  "_$id": "ggpsb5eb",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_15",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 72.75276947021484,
                      "y": -1.2789769243681803e-13,
                      "z": 65.83987433958755
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3"
                        }
                      }
                    }
                  ]
                },
                {
                  "_$id": "t55ctwua",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_16",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 82.16027069091797,
                      "y": -1.2789769243681803e-13,
                      "z": 65.83987433958755
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3"
                        }
                      }
                    }
                  ]
                },
                {
                  "_$id": "i3p6kaub",
                  "_$prefab": "708d6e64-2ee4-49a8-94a2-3c1bc1da9a21",
                  "name": "putong_dajianzhu04_9",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -24.32798847601041,
                      "z": 70.7222916455336
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "up2m94nq",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_17",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -77.12629154913856,
                      "y": -1.3145040611561853e-13,
                      "z": 111.56783183837861
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "2xt6cpac",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_7",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 149.37328016290797,
                      "y": 9.947598300641403e-14,
                      "z": 83.50302529872084
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "wb4vt3xq",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_8",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 184.57346975697854,
                      "y": 2.842170943040401e-14,
                      "z": 3.7824348334370814
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "fneq9w4c",
                  "_$prefab": "f186ecd5-dc9b-42bf-b724-cf99e3af5799",
                  "name": "putong_ditiezhan_18",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -57.52275353000977,
                      "y": 0.10431288927791371,
                      "z": -4.7409635018315655
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.5,
                      "y": 0.5,
                      "z": 0.5
                    }
                  }
                },
                {
                  "_$id": "18q6ch62",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_26",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 161.18101303019648,
                      "y": 0.15385553240776062,
                      "z": 6.620416641235352
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "1k5t83bz",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_27",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 175.76701302713946,
                      "y": 8.270395815673098e-15,
                      "z": 2.977774005802078
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "41nwdxk3",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_28",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 161.06323840855748,
                      "y": 8.270395815673098e-15,
                      "z": 2.9907660484313965
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "th9im10i",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_29",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 170.9369449077447,
                      "y": 0.15385553240776062,
                      "z": 3.060132741928101
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "mn5f56a3",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_30",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 168.41598467965525,
                      "y": 0.15385553240776417,
                      "z": 6.5071852230514695
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "8tvdknrd",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_31",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 165.9609711026234,
                      "y": 0.1538555324077624,
                      "z": 6.628912107391463
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "jf4kbky0",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_32",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -82.66603088378906,
                      "y": 2.842170943040401e-14,
                      "z": -10.681424005944358
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "yxvhhhao",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_33",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -79.50912475585938,
                      "y": 2.842170943040401e-14,
                      "z": -22.553409681337996
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "ec8gbcj5",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_34",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -82.80169726204682,
                      "y": 3.907985046680551e-14,
                      "z": -20.441833447654155
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "eb9o0cj6",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_35",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -72.40444080977282,
                      "y": 7.212008767965017e-13,
                      "z": -47.894174723767435
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "gqd9ovzc",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_36",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -82.65892086265764,
                      "y": 3.019806626980426e-14,
                      "z": -23.036901259581214
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "mjut8wnp",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_37",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -82.72776794433594,
                      "y": 2.842170943040401e-14,
                      "z": -18.023642905753768
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "0isy1h10",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_38",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -79.50698055367104,
                      "y": 4.263256414560601e-14,
                      "z": 76.31977252546096
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "dlejbtab",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_39",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -79.50698051843226,
                      "y": 4.263256414560601e-14,
                      "z": 74.02333323012317
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "oqpp6qkn",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_40",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -79.34287690741041,
                      "y": 4.263256414560601e-14,
                      "z": 71.52791240185405
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "d8cn1m8b",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_41",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -79.372080858117,
                      "y": 4.263256414560601e-14,
                      "z": 69.1271488620476
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "27nfb9c0",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_42",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -79.26482408530146,
                      "y": 4.263256414560601e-14,
                      "z": 66.68110847473145
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "o1u57i42",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_43",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -78.99910651335404,
                      "y": 5.3290705182007514e-14,
                      "z": 64.26291954494363
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "u34ao9bi",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_44",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -79.30323290233717,
                      "y": 4.440892098500626e-14,
                      "z": 61.66784858703613
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "p8g83pk4",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_45",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -78.99910651335404,
                      "y": 5.3290705182007514e-14,
                      "z": 59.39891922450905
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "jbmu2wtp",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_46",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -75.17025336055374,
                      "y": 4.263256414560601e-14,
                      "z": 61.579310926925565
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "525gquir",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_47",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -75.70472632536575,
                      "y": 4.796163466380676e-14,
                      "z": 69.03374111629371
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "bhedaqlt",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_48",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -75.31697698990229,
                      "y": 4.263256414560601e-14,
                      "z": 66.67910155634318
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "0mrkfsgz",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_49",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -75.28736443377436,
                      "y": 3.730349362740526e-14,
                      "z": 64.3326425833619
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "ja44qx3d",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_50",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -75.25963346717495,
                      "y": 4.263256414560601e-14,
                      "z": 73.91962762065424
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "qtxsj0jq",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_51",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -63.72466908569231,
                      "y": 4.263256414560601e-14,
                      "z": 76.29911757179269
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "o582o0bt",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_52",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -59.329291777948384,
                      "y": 4.263256414560601e-14,
                      "z": 71.3922618455999
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "qhyw9ue7",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_53",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -63.6292910916611,
                      "y": 4.263256414560601e-14,
                      "z": 71.36239627718017
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "y78vqz96",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_54",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -63.71119681232635,
                      "y": 4.263256414560601e-14,
                      "z": 69.17244071909346
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "o9dn9wzz",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_55",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -63.78640622036869,
                      "y": 4.263256414560601e-14,
                      "z": 66.54949253760947
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "cjt4an1z",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_56",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -63.25865600227271,
                      "y": 5.3290705182007514e-14,
                      "z": 64.2629165649414
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "lr8tpzpv",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_57",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -63.79276797216106,
                      "y": 4.440892098500626e-14,
                      "z": 61.57383744694575
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "awflmgre",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_58",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -63.25865600227271,
                      "y": 5.3290705182007514e-14,
                      "z": 59.39891815185547
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "fl6495zj",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_59",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -63.736753972500296,
                      "y": 3.730349362740526e-14,
                      "z": 73.95655663185484
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.9999733145511742,
                      "w": -0.007305490095698992
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "wuu2u7o6",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_60",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -59.75744560843036,
                      "y": 4.796163466380676e-14,
                      "z": 68.9961417926022
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "zqf7kcah",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_61",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -59.53734095474964,
                      "y": 4.263256414560601e-14,
                      "z": 66.64149679482324
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "epu0zbt1",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_62",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -59.538849316156,
                      "y": 3.730349362740526e-14,
                      "z": 64.16249504688088
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "43abzifp",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_63",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -59.34560969716057,
                      "y": 4.263256414560601e-14,
                      "z": 73.8878572314363
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "nogyah7h",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_66",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -28.828020181926597,
                      "y": 6.394884621840902e-14,
                      "z": 28.862095847807076
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "xgq7372k",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_67",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -21.394813754373736,
                      "y": 6.394884621840902e-14,
                      "z": 28.569376041636865
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "maemc19j",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_68",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -23.76106281822458,
                      "y": 7.460698725481052e-14,
                      "z": 28.82483757133487
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "7n9yp0gx",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_69",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -26.428885539684295,
                      "y": 6.572520305780927e-14,
                      "z": 28.75426292926892
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "67rrwrrp",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_72",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -13.911935853629188,
                      "y": 5.861977570020827e-14,
                      "z": 28.467347991198427
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "uofrsi87",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_74",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -16.353257712332912,
                      "y": 6.394884621840902e-14,
                      "z": 28.475288739641908
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "in9xhs1o",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_75",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -19.124428380100554,
                      "y": 5.861977570020827e-14,
                      "z": 28.559970939117193
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "lp4649lt",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_76",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 76.91029868013372,
                      "y": 3.552713678800501e-14,
                      "z": -10.454327487227271
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "w1ttaakq",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_77",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 74.49320444948187,
                      "y": 3.019806626980426e-14,
                      "z": -10.512749575850318
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "guaqjyym",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_78",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 72.01440272218694,
                      "y": 3.552713678800501e-14,
                      "z": -10.636145495650123
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "zivz0y4l",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_79",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 69.4289802063178,
                      "y": 3.019806626980426e-14,
                      "z": -10.657603167769263
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "1sfwde9i",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_80",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 67.23819765932072,
                      "y": 3.552713678800501e-14,
                      "z": -10.674733065840552
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "h2d343is",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_81",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 64.81888041383732,
                      "y": 4.618527782440651e-14,
                      "z": -10.671353244063209
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "icubx4ky",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_82",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 62.442938183612725,
                      "y": 3.730349362740526e-14,
                      "z": -10.556183718916724
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "fm46u21f",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_83",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 60.322689389057054,
                      "y": 3.552713678800501e-14,
                      "z": -10.597149752852271
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "nvrsk35c",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_84",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 37.619503015768494,
                      "y": 1.4210854715202004e-14,
                      "z": -52.61362266540527
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "u8xts3vp",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_85",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 35.249880235968966,
                      "y": 8.881784197001252e-15,
                      "z": -52.672048568725586
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "gio5my8p",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_86",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 33.10341640401701,
                      "y": 1.4210854715202004e-14,
                      "z": -52.79544188973186
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "iov9x2cg",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_87",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 30.517990073450584,
                      "y": 8.881784197001252e-15,
                      "z": -52.816899561851
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "lpav2vlh",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_88",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 28.018613532960313,
                      "y": 1.4210854715202004e-14,
                      "z": -52.834028244018555
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "hwza504z",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_89",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 25.50434182469398,
                      "y": 2.4868995751603507e-14,
                      "z": -52.83064842224121
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "4yikzkwr",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_90",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 22.962236337718096,
                      "y": 1.5987211554602254e-14,
                      "z": -52.71548271179199
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "h3rpsf68",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_91",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 20.438437047094375,
                      "y": 1.4210854715202004e-14,
                      "z": -52.75644493103027
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "0pbqlwgh",
                  "_$prefab": "f186ecd5-dc9b-42bf-b724-cf99e3af5799",
                  "name": "putong_ditiezhan_19",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 89.70667281417028,
                      "y": 0.10431288927794924,
                      "z": 4.15073837058047
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.5,
                      "y": 0.5,
                      "z": 0.5
                    }
                  }
                },
                {
                  "_$id": "g063do4s",
                  "_$prefab": "f186ecd5-dc9b-42bf-b724-cf99e3af5799",
                  "name": "putong_ditiezhan_20",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 38.10416366200821,
                      "y": 0.10431288927775739,
                      "z": -6.04220492650704
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.5,
                      "y": 0.5,
                      "z": 0.5
                    }
                  }
                },
                {
                  "_$id": "huvo98rh",
                  "_$prefab": "f186ecd5-dc9b-42bf-b724-cf99e3af5799",
                  "name": "putong_ditiezhan_21",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -60.56070409731877,
                      "y": 0.10431288927793503,
                      "z": 50.50913426723318
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.5,
                      "y": 0.5,
                      "z": 0.5
                    }
                  }
                },
                {
                  "_$id": "j2mqnpyt",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_11",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -50.828946572052985,
                      "y": 2.842170943040401e-14,
                      "z": 35.89269552096514
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "9w8dagpu",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_9",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 50.806070288129106,
                      "y": 1.4210854715202004e-14,
                      "z": 46.10112802698719
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "mfi8zgen",
                  "_$prefab": "56e5ee0e-3110-4a2c-b1d1-0eed3160eb3b",
                  "name": "putong_zhongxing11_13",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 86.81417917813488,
                      "y": -6.039613253960852e-14,
                      "z": -61.375937645968534
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "cb8i963s",
                  "_$prefab": "56e5ee0e-3110-4a2c-b1d1-0eed3160eb3b",
                  "name": "putong_zhongxing11_14",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.20623850430675,
                      "y": -6.039613253960852e-14,
                      "z": -61.375937645968534
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "326jxqe5",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_92",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 122.83671668287292,
                      "y": 7.105427357601002e-15,
                      "z": 86.70838639667092
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "tfykv9ik",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_93",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 120.35791877027528,
                      "y": 1.2434497875801753e-14,
                      "z": 86.58499047687111
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "3037zdsf",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_94",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 125.25381568189633,
                      "y": 1.2434497875801753e-14,
                      "z": 86.76680848529396
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "4je31hol",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_95",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 117.77249243970887,
                      "y": 7.105427357601002e-15,
                      "z": 86.56353280475197
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "fe6ru65v",
                  "_$prefab": "9726d308-e0eb-4e08-a2ce-46315d7f644e",
                  "name": "daxingjianzhu_yuanhu",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -28.87510345800336,
                      "y": -0.2520579993727665,
                      "z": -74.58822808255215
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "nn4xfqm1",
                  "_$prefab": "f186ecd5-dc9b-42bf-b724-cf99e3af5799",
                  "name": "putong_ditiezhan_22",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -62.24567180750459,
                      "y": 0.10431288927793503,
                      "z": 84.73089027404785
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.5,
                      "y": 0.5,
                      "z": 0.5
                    }
                  }
                },
                {
                  "_$id": "ivgsx3zu",
                  "_$prefab": "708d6e64-2ee4-49a8-94a2-3c1bc1da9a21",
                  "name": "putong_dajianzhu04_10",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -44.63460730120515,
                      "y": 2.1316282072803006e-14,
                      "z": 126.5293152969672
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "2gv7v4fx",
                  "_$prefab": "708d6e64-2ee4-49a8-94a2-3c1bc1da9a21",
                  "name": "putong_dajianzhu04_11",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -64.1408086554696,
                      "y": 2.1316282072803006e-14,
                      "z": 126.5293140411377
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "de5r5iwd",
                  "_$prefab": "708d6e64-2ee4-49a8-94a2-3c1bc1da9a21",
                  "name": "putong_dajianzhu04_12",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -83.39879887937481,
                      "y": 2.1316282072803006e-14,
                      "z": 126.5293140411377
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "1w5togtf",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_12",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -88.87057495117188,
                      "y": 4.973799150320701e-14,
                      "z": 86.95385543484815
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "s7umnd99",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_13",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -39.88696470546394,
                      "y": 4.973799150320701e-14,
                      "z": 109.33071327209473
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "jh80wqp5",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_14",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -39.88696470546394,
                      "y": 4.973799150320701e-14,
                      "z": 86.95385932922363
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "ccnemnh9",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_20",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -77.12628936767578,
                      "y": -1.3145040611561853e-13,
                      "z": 93.90107389070181
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "5jwd586p",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_21",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -60.77111497802463,
                      "y": -1.3145040611561853e-13,
                      "z": 93.90107917785645
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "vf1n34ux",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_22",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -60.77111497802463,
                      "y": -1.3145040611561853e-13,
                      "z": 102.59827613830566
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "llje9cs2",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_23",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -60.77111497802463,
                      "y": -1.3145040611561853e-13,
                      "z": 111.56783485412598
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "ywk2y2d1",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_96",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -47.244485528738906,
                      "y": 3.552713678800501e-14,
                      "z": 111.86756785726196
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "9sas0q1x",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_97",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -47.14911046770375,
                      "y": 3.552713678800501e-14,
                      "z": 106.93084605550415
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "px4trlit",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_98",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -47.23101201799672,
                      "y": 3.552713678800501e-14,
                      "z": 104.74088939046511
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "7dxu912r",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_99",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -47.30622258928578,
                      "y": 3.552713678800501e-14,
                      "z": 102.117941697594
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "kvp8jidd",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_100",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -46.778474481375625,
                      "y": 4.618527782440651e-14,
                      "z": 99.8313663802112
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "2iyk6i0q",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_101",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -47.31257787493031,
                      "y": 3.730349362740526e-14,
                      "z": 97.14228709554322
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "v41x2yn0",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_102",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -46.778474481375625,
                      "y": 4.618527782440651e-14,
                      "z": 94.96736796712526
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "75fivavo",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_103",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -47.256570489676406,
                      "y": 3.019806626980426e-14,
                      "z": 109.52500804280884
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.9999733145511744,
                      "w": -0.007305490095698993
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "njpooec5",
                  "_$prefab": "708d6e64-2ee4-49a8-94a2-3c1bc1da9a21",
                  "name": "putong_dajianzhu04_13",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 12.966684122550195,
                      "y": 7.105427357601002e-14,
                      "z": 36.84105624047122
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "8i66gm4v",
                  "_$prefab": "708d6e64-2ee4-49a8-94a2-3c1bc1da9a21",
                  "name": "putong_dajianzhu04_14",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -4.189453630211013,
                      "y": 7.105427357601002e-14,
                      "z": 36.987471797659296
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "860a0e42",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_25",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.325980488379372,
                      "y": 1.7053025658242404e-13,
                      "z": 29.7082920074463
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "phghfb55",
                  "_$prefab": "219c3eda-1c3f-43d3-9641-fe2b5c2d1031",
                  "name": "putong_zhongxing02_25",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 9.909781757910622,
                      "y": 1.7053025658242404e-13,
                      "z": 29.527231216430675
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "3czqzrxw",
                  "_$prefab": "258dc9bb-50a4-491f-a294-bd76e27c51b4",
                  "name": "putong_zhongxing04_25",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 14.588744465430153,
                      "y": 1.8118839761882555e-13,
                      "z": 29.509965896606456
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "2zdc6cy0",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_26",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 19.38600093515672,
                      "y": 4.476419235288631e-13,
                      "z": 29.658836364746104
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "qso927qv",
                  "_$prefab": "ee2248fe-e870-4128-ad0a-dfd4a5d671ad",
                  "name": "putong_dajianzhu05_6",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -9.803844950306953,
                      "y": -5.258016244624741e-13,
                      "z": 2.610494613647461
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -1,
                      "w": 6.123233995736766e-17
                    }
                  }
                },
                {
                  "_$id": "ugb865at",
                  "_$prefab": "ee2248fe-e870-4128-ad0a-dfd4a5d671ad",
                  "name": "putong_dajianzhu05_7",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 7.21341852926129,
                      "y": -5.258016244624741e-13,
                      "z": 2.610494613647461
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -1,
                      "w": 6.123233995736766e-17
                    }
                  }
                },
                {
                  "_$id": "45g3a052",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_104",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -20.077864399307778,
                      "y": 2.842170943040401e-14,
                      "z": 3.4318756264699957
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "g4gn5158",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_105",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -19.977156391495278,
                      "y": 2.842170943040401e-14,
                      "z": 5.546621720220003
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "awgqme2z",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_106",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -20.016127338760903,
                      "y": 2.842170943040401e-14,
                      "z": 10.445738236333284
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "83s2wvsc",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_107",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -20.016127338760903,
                      "y": 2.842170943040401e-14,
                      "z": 8.113546769048128
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "x5987ipy",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_108",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -20.15179323231559,
                      "y": 3.907985046680551e-14,
                      "z": -1.6468597250925043
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "w7i8z74z",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_109",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -20.15179323231559,
                      "y": 3.907985046680551e-14,
                      "z": -6.510861952875704
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "9gbixgq0",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_110",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -20.009016743057778,
                      "y": 3.019806626980426e-14,
                      "z": -4.241929610346411
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "0wgi1iyp",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_111",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -20.077864399307778,
                      "y": 2.842170943040401e-14,
                      "z": 0.771330277348909
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "ntp00if5",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_112",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.0938889265459792,
                      "y": 3.375077994860476e-14,
                      "z": 4.740732665800714
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "qvlq8ni1",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_113",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.0994126081866042,
                      "y": 2.842170943040401e-14,
                      "z": 2.3860878904100815
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "77ii7hk4",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_114",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.0956970930498855,
                      "y": 2.842170943040401e-14,
                      "z": 9.876879211210866
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "1olzqxo3",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_115",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.1949326277178542,
                      "y": 2.3092638912203256e-14,
                      "z": 0.05751275613273776
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "sudxwdoq",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_116",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.0956970930498855,
                      "y": 2.842170943040401e-14,
                      "z": -2.141667846894606
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "ytto6ake",
                  "_$prefab": "219c3eda-1c3f-43d3-9641-fe2b5c2d1031",
                  "name": "putong_zhongxing02_26",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -41.09394073486328,
                      "y": -2.1316282072803006e-14,
                      "z": 5.5264294837543595
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "svyrvizt",
                  "_$prefab": "258dc9bb-50a4-491f-a294-bd76e27c51b4",
                  "name": "putong_zhongxing04_26",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -36.30011749267578,
                      "y": -2.1316282072803006e-14,
                      "z": 5.476731607777797
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "lcgrg7e8",
                  "_$prefab": "219c3eda-1c3f-43d3-9641-fe2b5c2d1031",
                  "name": "putong_zhongxing02_27",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 15.37743446547854,
                      "y": -2.1316282072803006e-14,
                      "z": -0.24999046325683594
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "rn63yfla",
                  "_$prefab": "258dc9bb-50a4-491f-a294-bd76e27c51b4",
                  "name": "putong_zhongxing04_27",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 20.171257707666072,
                      "y": -2.1316282072803006e-14,
                      "z": -0.29968833923339844
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "u1nzq0w7",
                  "_$prefab": "219c3eda-1c3f-43d3-9641-fe2b5c2d1031",
                  "name": "putong_zhongxing02_28",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 15.37743446547854,
                      "y": -2.1316282072803006e-14,
                      "z": 5.526430130004883
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "uzszdela",
                  "_$prefab": "258dc9bb-50a4-491f-a294-bd76e27c51b4",
                  "name": "putong_zhongxing04_28",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 20.171257707666072,
                      "y": -2.1316282072803006e-14,
                      "z": 5.47673225402832
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "nik7bxrt",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_117",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -82.80169677734375,
                      "y": 3.907985046680551e-14,
                      "z": -25.305834597356675
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "u68m15r6",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_118",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -66.9216033448475,
                      "y": 1.0800249583553523e-12,
                      "z": -47.92235736559398
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "nfuzpqy8",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_119",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -64.18399113600721,
                      "y": 2.842170943040401e-14,
                      "z": -44.73410771646452
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "zeulz1nq",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_120",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -58.701855685100256,
                      "y": 2.842170943040401e-14,
                      "z": -44.55574474680756
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "c3nhst3l",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_121",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -51.83600639909126,
                      "z": -13.445671723813966
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7149630196905843,
                      "w": -0.699162270488705
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    },
                    {
                      "_$id": "lk8d3150",
                      "_$type": "Sprite3D",
                      "name": "transport_4",
                      "layer": 3,
                      "transform": {
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.009999999776482582,
                          "y": 0.009999999776482582,
                          "z": 0.009999999776482582
                        }
                      },
                      "_$comp": [
                        {
                          "_$type": "MeshFilter",
                          "sharedMesh": {
                            "_$uuid": "e9ecfe86-c3a9-41ed-9d40-d904ffb486e3@lm0",
                            "_$type": "Mesh"
                          }
                        },
                        {
                          "_$type": "MeshRenderer",
                          "receiveShadow": true,
                          "castShadow": true,
                          "lightmapScaleOffset": {
                            "_$type": "Vector4"
                          },
                          "sharedMaterials": [
                            {
                              "_$uuid": "bc0cb067-38ae-43c7-a0bb-6b464fecddd7",
                              "_$type": "Material"
                            }
                          ]
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "8de4w7cp",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_122",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -50.59398526056927,
                      "z": -13.15517592770788
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7149630196905843,
                      "w": -0.699162270488705
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "t3dt2qev",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_123",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -51.270561043805046,
                      "z": 5.000520915617592
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7149630196905843,
                      "w": -0.699162270488705
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "8ium51sd",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_124",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -47.17416957891726,
                      "y": -1.5987211554602254e-14,
                      "z": -7.672551617198714
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.699162270488705,
                      "w": 0.7149630196905843
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "p0qczmrs",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_125",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.9164852185834818,
                      "y": 1.538325022920617e-12,
                      "z": -18.812124741647388
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "7eiyuzif",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_126",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 8.399326710282722,
                      "y": 1.8971491044794675e-12,
                      "z": -18.840300095651294
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "j59qajx9",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_127",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 11.136936573563972,
                      "y": 8.455458555545192e-13,
                      "z": -15.652052414987232
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "yf5svtoh",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_128",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 16.619076160966316,
                      "y": 8.455458555545192e-13,
                      "z": -15.473692429635669
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "r9nujxg9",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_129",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -45.95961144392875,
                      "y": 1.2612133559741778e-13,
                      "z": 24.391474602709962
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "sk5p4www",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_130",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -61.910051490184856,
                      "y": 1.5631940186722204e-13,
                      "z": 24.07730697178809
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "arxh9psz",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_131",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 61.647217488626595,
                      "y": 8.064660050877137e-13,
                      "z": 37.188807187013765
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "7m8ygbgj",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_132",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 67.13005898032581,
                      "y": 1.1652900866465643e-12,
                      "z": 37.16063183300986
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "cj2gnmbn",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_133",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 69.86766884360705,
                      "y": 1.1368683772161603e-13,
                      "z": 38.74872842297226
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "wdso2nfo",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_134",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 75.3498084310094,
                      "y": 1.1368683772161603e-13,
                      "z": 38.927088408323826
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "f16cbs6w",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_135",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 74.33419278029308,
                      "y": 1.2612133559741778e-13,
                      "z": 12.577801797760898
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "5xt40h3h",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_136",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 58.25050159952177,
                      "y": 1.5631940186722204e-13,
                      "z": 12.519767586835233
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "790nq8i1",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_137",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 61.647216796875,
                      "y": 8.064660050877137e-13,
                      "z": 10.268870972952309
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "sla9zni3",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_138",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 67.13005828857422,
                      "y": 1.1652900866465643e-12,
                      "z": 10.240695618948402
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "qpzx24pe",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_139",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 96.2498383415255,
                      "y": -2.842170943040401e-14,
                      "z": 3.645779609832722
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7149630196905843,
                      "w": -0.699162270488705
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    },
                    {
                      "_$id": "ukwe5bk7",
                      "_$type": "Sprite3D",
                      "name": "transport_4",
                      "layer": 3,
                      "transform": {
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.009999999776482582,
                          "y": 0.009999999776482582,
                          "z": 0.009999999776482582
                        }
                      },
                      "_$comp": [
                        {
                          "_$type": "MeshFilter",
                          "sharedMesh": {
                            "_$uuid": "e9ecfe86-c3a9-41ed-9d40-d904ffb486e3@lm0",
                            "_$type": "Mesh"
                          }
                        },
                        {
                          "_$type": "MeshRenderer",
                          "receiveShadow": true,
                          "castShadow": true,
                          "lightmapScaleOffset": {
                            "_$type": "Vector4"
                          },
                          "sharedMaterials": [
                            {
                              "_$uuid": "bc0cb067-38ae-43c7-a0bb-6b464fecddd7",
                              "_$type": "Material"
                            }
                          ]
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "abitavgj",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_140",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 97.49185799484582,
                      "y": -2.842170943040401e-14,
                      "z": 3.936276436004597
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7149630196905843,
                      "w": -0.699162270488705
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "tkgkza8j",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_141",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.84405415009041,
                      "y": -2.842170943040401e-14,
                      "z": 28.14677489763809
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7149630196905843,
                      "w": -0.699162270488705
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "7j4urk7u",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_142",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 100.26147412616062,
                      "y": -9.414691248821327e-14,
                      "z": 18.9423687729923
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.699162270488705,
                      "w": 0.7149630196905843
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "7y58wc57",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_143",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.92450650261821,
                      "y": 1.4210854715202004e-13,
                      "z": 64.77053302526296
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7149630196905843,
                      "w": -0.699162270488705
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    },
                    {
                      "_$id": "kga64igy",
                      "_$type": "Sprite3D",
                      "name": "transport_4",
                      "layer": 3,
                      "transform": {
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.009999999776482582,
                          "y": 0.009999999776482582,
                          "z": 0.009999999776482582
                        }
                      },
                      "_$comp": [
                        {
                          "_$type": "MeshFilter",
                          "sharedMesh": {
                            "_$uuid": "e9ecfe86-c3a9-41ed-9d40-d904ffb486e3@lm0",
                            "_$type": "Mesh"
                          }
                        },
                        {
                          "_$type": "MeshRenderer",
                          "receiveShadow": true,
                          "castShadow": true,
                          "lightmapScaleOffset": {
                            "_$type": "Vector4"
                          },
                          "sharedMaterials": [
                            {
                              "_$uuid": "bc0cb067-38ae-43c7-a0bb-6b464fecddd7",
                              "_$type": "Material"
                            }
                          ]
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "ya5bdi9p",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_144",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 97.16652615593853,
                      "y": 1.4210854715202004e-13,
                      "z": 65.06102985143484
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7149630196905843,
                      "w": -0.699162270488705
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "tzd7rhoz",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_145",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 96.51832883539099,
                      "y": 1.4210854715202004e-13,
                      "z": 89.29386778769151
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7149630196905843,
                      "w": -0.699162270488705
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "4lwx4cud",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_146",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 99.93614132927837,
                      "y": 7.638334409421077e-14,
                      "z": 80.06712192296806
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.699162270488705,
                      "w": 0.7149630196905843
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "sisdgved",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_147",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 135.78013973599607,
                      "y": -2.842170943040401e-14,
                      "z": 22.69771269811728
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7149630196905843,
                      "w": -0.699162270488705
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    },
                    {
                      "_$id": "tdq1llx4",
                      "_$type": "Sprite3D",
                      "name": "transport_4",
                      "layer": 3,
                      "transform": {
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.009999999776482582,
                          "y": 0.009999999776482582,
                          "z": 0.009999999776482582
                        }
                      },
                      "_$comp": [
                        {
                          "_$type": "MeshFilter",
                          "sharedMesh": {
                            "_$uuid": "e9ecfe86-c3a9-41ed-9d40-d904ffb486e3@lm0",
                            "_$type": "Mesh"
                          }
                        },
                        {
                          "_$type": "MeshRenderer",
                          "receiveShadow": true,
                          "castShadow": true,
                          "lightmapScaleOffset": {
                            "_$type": "Vector4"
                          },
                          "sharedMaterials": [
                            {
                              "_$uuid": "bc0cb067-38ae-43c7-a0bb-6b464fecddd7",
                              "_$type": "Material"
                            }
                          ]
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "ytiraatt",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_148",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 137.02215938931639,
                      "y": -2.842170943040401e-14,
                      "z": 22.988209524289154
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7149630196905843,
                      "w": -0.699162270488705
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "r9ocp2nl",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_149",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 135.37435512906248,
                      "y": -2.842170943040401e-14,
                      "z": 47.198706426754974
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7149630196905843,
                      "w": -0.699162270488705
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "z4hevqmh",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_150",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 139.79177456265623,
                      "y": -9.414691248821327e-14,
                      "z": 37.994301595822364
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.699162270488705,
                      "w": 0.7149630196905843
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "jxwv548z",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_151",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 135.4548070943945,
                      "y": 1.4210854715202004e-13,
                      "z": 83.82246474279503
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7149630196905843,
                      "w": -0.699162270488705
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    },
                    {
                      "_$id": "w9u4kz6r",
                      "_$type": "Sprite3D",
                      "name": "transport_4",
                      "layer": 3,
                      "transform": {
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.009999999776482582,
                          "y": 0.009999999776482582,
                          "z": 0.009999999776482582
                        }
                      },
                      "_$comp": [
                        {
                          "_$type": "MeshFilter",
                          "sharedMesh": {
                            "_$uuid": "e9ecfe86-c3a9-41ed-9d40-d904ffb486e3@lm0",
                            "_$type": "Mesh"
                          }
                        },
                        {
                          "_$type": "MeshRenderer",
                          "receiveShadow": true,
                          "castShadow": true,
                          "lightmapScaleOffset": {
                            "_$type": "Vector4"
                          },
                          "sharedMaterials": [
                            {
                              "_$uuid": "bc0cb067-38ae-43c7-a0bb-6b464fecddd7",
                              "_$type": "Material"
                            }
                          ]
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "gbfkd7zq",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_152",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 136.69682674771482,
                      "y": 1.4210854715202004e-13,
                      "z": 84.11296156896691
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7149630196905843,
                      "w": -0.699162270488705
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "zo95jlvl",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_153",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 136.0486257589453,
                      "y": 1.4210854715202004e-13,
                      "z": 108.34580306066616
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7149630196905843,
                      "w": -0.699162270488705
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "v7n37hqm",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_154",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 139.46644192105467,
                      "y": 7.638334409421077e-14,
                      "z": 99.1190574551974
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.699162270488705,
                      "w": 0.7149630196905843
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "zzwe1bgg",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_155",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 27.155766469543018,
                      "y": -2.842170943040401e-14,
                      "z": -13.85403029283772
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7149630196905843,
                      "w": -0.699162270488705
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    },
                    {
                      "_$id": "suhdiz70",
                      "_$type": "Sprite3D",
                      "name": "transport_4",
                      "layer": 3,
                      "transform": {
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.009999999776482582,
                          "y": 0.009999999776482582,
                          "z": 0.009999999776482582
                        }
                      },
                      "_$comp": [
                        {
                          "_$type": "MeshFilter",
                          "sharedMesh": {
                            "_$uuid": "e9ecfe86-c3a9-41ed-9d40-d904ffb486e3@lm0",
                            "_$type": "Mesh"
                          }
                        },
                        {
                          "_$type": "MeshRenderer",
                          "receiveShadow": true,
                          "castShadow": true,
                          "lightmapScaleOffset": {
                            "_$type": "Vector4"
                          },
                          "sharedMaterials": [
                            {
                              "_$uuid": "bc0cb067-38ae-43c7-a0bb-6b464fecddd7",
                              "_$type": "Material"
                            }
                          ]
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "lv7yamfj",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_156",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 28.397786122863327,
                      "y": -2.842170943040401e-14,
                      "z": -13.563533466665845
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7149630196905843,
                      "w": -0.699162270488705
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "2eoy2gwj",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_157",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 26.749981862609424,
                      "y": -2.842170943040401e-14,
                      "z": 10.6469634358
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7149630196905843,
                      "w": -0.699162270488705
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "cwin9r4q",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_158",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 26.830433827941455,
                      "y": 1.4210854715202004e-13,
                      "z": 47.27072175184002
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7149630196905843,
                      "w": -0.699162270488705
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    },
                    {
                      "_$id": "50svt5ro",
                      "_$type": "Sprite3D",
                      "name": "transport_4",
                      "layer": 3,
                      "transform": {
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.009999999776482582,
                          "y": 0.009999999776482582,
                          "z": 0.009999999776482582
                        }
                      },
                      "_$comp": [
                        {
                          "_$type": "MeshFilter",
                          "sharedMesh": {
                            "_$uuid": "e9ecfe86-c3a9-41ed-9d40-d904ffb486e3@lm0",
                            "_$type": "Mesh"
                          }
                        },
                        {
                          "_$type": "MeshRenderer",
                          "receiveShadow": true,
                          "castShadow": true,
                          "lightmapScaleOffset": {
                            "_$type": "Vector4"
                          },
                          "sharedMaterials": [
                            {
                              "_$uuid": "bc0cb067-38ae-43c7-a0bb-6b464fecddd7",
                              "_$type": "Material"
                            }
                          ]
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "qfijzoak",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_159",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 28.072453481261764,
                      "y": 1.4210854715202004e-13,
                      "z": 47.561218578011896
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7149630196905843,
                      "w": -0.699162270488705
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "zdlljp4u",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_160",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 27.424252492492233,
                      "y": 1.4210854715202004e-13,
                      "z": 71.79406006971111
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7149630196905843,
                      "w": -0.699162270488705
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "9dg57eeg",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_161",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 30.842068654601608,
                      "y": 7.638334409421077e-14,
                      "z": 62.567314464242344
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.699162270488705,
                      "w": 0.7149630196905843
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "o2rnfi9y",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_162",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -22.156994738468725,
                      "y": 6.394884621840902e-14,
                      "z": 51.21002748415481
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "v53517ug",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_163",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -14.723790087589819,
                      "y": 6.394884621840902e-14,
                      "z": 50.91730668947707
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "id3rhu1f",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_164",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -17.090039172062475,
                      "y": 7.460698725481052e-14,
                      "z": 51.172767428612815
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "1jwk2bgk",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_165",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -19.75786296356638,
                      "y": 6.572520305780927e-14,
                      "z": 51.10219362185012
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "24ohfy0r",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_166",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -7.240910448917944,
                      "y": 5.861977570020827e-14,
                      "z": 50.81527879641067
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "hipg8p2w",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_167",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -9.6822327755781,
                      "y": 6.394884621840902e-14,
                      "z": 50.823219088769065
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "8kptpgrj",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_168",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -12.453404345402319,
                      "y": 5.861977570020827e-14,
                      "z": 50.907901553368674
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "0k7tf9qd",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_27",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -30.535727422156896,
                      "y": 5.115907697472721e-13,
                      "z": 60.47534774951855
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "a0fy6lr4",
                  "_$prefab": "219c3eda-1c3f-43d3-9641-fe2b5c2d1031",
                  "name": "putong_zhongxing02_29",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -25.95192615262564,
                      "y": 5.115907697472721e-13,
                      "z": 60.29428695850292
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "79buvvhz",
                  "_$prefab": "258dc9bb-50a4-491f-a294-bd76e27c51b4",
                  "name": "putong_zhongxing04_29",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -21.272963445106114,
                      "y": 5.222489107836736e-13,
                      "z": 60.277021638678704
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "9jz63zfd",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_28",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -16.475706975379552,
                      "y": 7.887024366937112e-13,
                      "z": 60.42589210681835
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "holatkvn",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_29",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -10.79652488810509,
                      "y": 5.115907697472721e-13,
                      "z": 60.475351333618164
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "q4mfoyk2",
                  "_$prefab": "219c3eda-1c3f-43d3-9641-fe2b5c2d1031",
                  "name": "putong_zhongxing02_30",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -6.21272361857384,
                      "y": 5.115907697472721e-13,
                      "z": 60.29429054260254
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "yj0wepkc",
                  "_$prefab": "258dc9bb-50a4-491f-a294-bd76e27c51b4",
                  "name": "putong_zhongxing04_30",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.5337609110543085,
                      "y": 5.222489107836736e-13,
                      "z": 60.27702522277832
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "4ni6h27p",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_30",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 3.263495558672254,
                      "y": 7.887024366937112e-13,
                      "z": 60.42588996887207
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "dc47wiam",
                  "_$prefab": "0fcf3b4a-580a-41e2-8d22-1d79fd969748",
                  "name": "putong_xiaoxing09_5",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 21.590558419104347,
                      "y": 4.973799150320701e-14,
                      "z": 61.584447530799274
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "otymmmxx",
                  "_$prefab": "4993fe3c-99a9-4f62-a149-80a95bb88940",
                  "name": "putong_xiaoxing07_5",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 14.142589402415368,
                      "y": 2.842170943040401e-14,
                      "z": 55.472539049825045
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "v97ofikm",
                  "_$prefab": "f1033483-6f72-4507-90c2-04fc916d1043",
                  "name": "putong_xiaoxing05_7",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 7.8547790707722775,
                      "y": 2.842170943040401e-14,
                      "z": 54.48078171964748
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "i2rr0ab4",
                  "_$prefab": "3d91bc88-a8d6-4a2b-9c88-9dab20e90bae",
                  "name": "putong_xiaoxing08_5",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 19.53498584312323,
                      "y": 1.2079226507921703e-13,
                      "z": 67.83740792495954
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "fjej0onw",
                  "_$prefab": "0fcf3b4a-580a-41e2-8d22-1d79fd969748",
                  "name": "putong_xiaoxing09_6",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 20.888482601538414,
                      "y": -2.7711166694643907e-13,
                      "z": 55.30285273234783
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "yxqom94p",
                  "_$prefab": "f1033483-6f72-4507-90c2-04fc916d1043",
                  "name": "putong_xiaoxing05_8",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 13.657050291914938,
                      "y": 6.394884621840902e-14,
                      "z": 60.446328546741306
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "v2mv7o5b",
                  "_$prefab": "0fcf3b4a-580a-41e2-8d22-1d79fd969748",
                  "name": "putong_xiaoxing09_7",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -38.34863185532184,
                      "y": 4.973799150320701e-14,
                      "z": 63.63635521177909
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "wpi1kjq1",
                  "_$prefab": "4993fe3c-99a9-4f62-a149-80a95bb88940",
                  "name": "putong_xiaoxing07_6",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -43.96553277098471,
                      "y": 2.842170943040401e-14,
                      "z": 60.79768658552014
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "wyzme0pe",
                  "_$prefab": "f1033483-6f72-4507-90c2-04fc916d1043",
                  "name": "putong_xiaoxing05_9",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -52.1239235665376,
                      "y": 2.842170943040401e-14,
                      "z": 54.480783462524414
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "4jy1ne08",
                  "_$prefab": "3d91bc88-a8d6-4a2b-9c88-9dab20e90bae",
                  "name": "putong_xiaoxing08_6",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -48.9236959473951,
                      "y": 1.2079226507921703e-13,
                      "z": 67.83741188049316
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "d0hgjwtx",
                  "_$prefab": "0fcf3b4a-580a-41e2-8d22-1d79fd969748",
                  "name": "putong_xiaoxing09_8",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -37.14670192006727,
                      "y": -2.7711166694643907e-13,
                      "z": 54.18365721345364
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "auq84lzc",
                  "_$prefab": "f1033483-6f72-4507-90c2-04fc916d1043",
                  "name": "putong_xiaoxing05_10",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -52.632891040279475,
                      "y": 6.394884621840902e-14,
                      "z": 63.836714771288314
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "b2vtva6m",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_15",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -137.48269314702736,
                      "y": 3.694822225952521e-13,
                      "z": 16.375600448306983
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "g4mn02v4",
                  "_$prefab": "ee2248fe-e870-4128-ad0a-dfd4a5d671ad",
                  "name": "putong_dajianzhu05_8",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 117.8762989406511,
                      "y": -4.434966172084387e-8,
                      "z": -32.935488341775724
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "87hu6tc9",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_10",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 43.30766671866545,
                      "y": 1.4210854715202004e-14,
                      "z": 46.10112762451172
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "k1crmfpi",
                  "_$prefab": "258dc9bb-50a4-491f-a294-bd76e27c51b4",
                  "name": "putong_zhongxing04_31",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 47.02052353075946,
                      "y": 7.105427357601002e-15,
                      "z": 46.06943050851096
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "1u0wj7cd",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_11",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 72.23000872434683,
                      "y": 1.4210854715202004e-14,
                      "z": 46.10112762451172
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "d6txucgp",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_12",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 64.73160708250114,
                      "y": 1.4210854715202004e-14,
                      "z": 46.10112762451172
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "a72eunhv",
                  "_$prefab": "258dc9bb-50a4-491f-a294-bd76e27c51b4",
                  "name": "putong_zhongxing04_32",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 68.44446337522574,
                      "y": 7.105427357601002e-15,
                      "z": 46.06943130493164
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "hs7kdm2w",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_13",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 89.20884802992421,
                      "y": 1.4210854715202004e-14,
                      "z": 46.10112762451172
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "lgrk5qy3",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_14",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 81.71044257338124,
                      "y": 1.4210854715202004e-14,
                      "z": 46.10112762451172
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "2n9o9em1",
                  "_$prefab": "258dc9bb-50a4-491f-a294-bd76e27c51b4",
                  "name": "putong_zhongxing04_33",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 85.42330268080312,
                      "y": 7.105427357601002e-15,
                      "z": 46.06943130493164
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "l5iohzws",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_15",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 63.63128438467157,
                      "y": 1.4210854715202004e-14,
                      "z": 29.454642638066048
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "v7p4pcaj",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_16",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 63.72491715142075,
                      "y": 1.4210854715202004e-14,
                      "z": 22.22042051602173
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "l1q880f3",
                  "_$prefab": "258dc9bb-50a4-491f-a294-bd76e27c51b4",
                  "name": "putong_zhongxing04_34",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 63.73283696773663,
                      "y": 7.105427357601002e-15,
                      "z": 25.746479175359273
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "ubxmvwux",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_169",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 112.6263910375069,
                      "y": 7.105427357601002e-15,
                      "z": 86.7083911895752
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "7gjnhjxm",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_170",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 110.14759312490925,
                      "y": 1.2434497875801753e-14,
                      "z": 86.58499336242676
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "ixnbyzfb",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_171",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 115.04349003653034,
                      "y": 1.2434497875801753e-14,
                      "z": 86.76680946350098
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "w214vgqr",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_172",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 107.56216679434284,
                      "y": 7.105427357601002e-15,
                      "z": 86.56353187561035
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "eud8swxi",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_16",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 45.759657847463714,
                      "y": 1.0373923942097463e-12,
                      "z": 20.260098431965567
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "g6md3mwc",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_17",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 45.75965881347656,
                      "y": 1.0373923942097463e-12,
                      "z": 29.95972939373973
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "nl2l4y8g",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_18",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.68354766564731,
                      "y": 1.0373923942097463e-12,
                      "z": 20.260097503662116
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "1u5d0h7r",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_19",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.68354766564731,
                      "y": 1.0373923942097463e-12,
                      "z": 29.95973014831543
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "9fcluopk",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_20",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 69.4151611328125,
                      "y": 1.0373923942097463e-12,
                      "z": 4.748745507116212
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "5gx2142k",
                  "_$prefab": "56e5ee0e-3110-4a2c-b1d1-0eed3160eb3b",
                  "name": "putong_zhongxing11_15",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 86.81417846679688,
                      "y": -6.039613253960852e-14,
                      "z": -66.24593174794678
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "1dlinj5v",
                  "_$prefab": "56e5ee0e-3110-4a2c-b1d1-0eed3160eb3b",
                  "name": "putong_zhongxing11_16",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.20623779296875,
                      "y": -6.039613253960852e-14,
                      "z": -66.24593174794678
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "3ge08h6d",
                  "_$prefab": "56e5ee0e-3110-4a2c-b1d1-0eed3160eb3b",
                  "name": "putong_zhongxing11_17",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 86.81417846679688,
                      "y": -6.039613253960852e-14,
                      "z": -71.34551005572987
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "orucmnu9",
                  "_$prefab": "56e5ee0e-3110-4a2c-b1d1-0eed3160eb3b",
                  "name": "putong_zhongxing11_18",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.20623779296875,
                      "y": -6.039613253960852e-14,
                      "z": -71.34551005572987
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "hyolwgb5",
                  "_$prefab": "56e5ee0e-3110-4a2c-b1d1-0eed3160eb3b",
                  "name": "putong_zhongxing11_19",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 86.81417846679688,
                      "y": -6.039613253960852e-14,
                      "z": -76.70417152865322
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "byx3df9b",
                  "_$prefab": "56e5ee0e-3110-4a2c-b1d1-0eed3160eb3b",
                  "name": "putong_zhongxing11_20",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.20623779296875,
                      "y": -6.039613253960852e-14,
                      "z": -76.70417152865322
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "ufryhn4h",
                  "_$prefab": "708d6e64-2ee4-49a8-94a2-3c1bc1da9a21",
                  "name": "putong_dajianzhu04_15",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 96.98010744494215,
                      "y": 2.8421709430404007e-13,
                      "z": -69.43182436993
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "u0q1yerr",
                  "_$prefab": "8430c7a4-b5b2-4b22-9296-20e57bb5f3de",
                  "name": "daxingjianzhu_zuqiuchang_2",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -64.78921626454354,
                      "y": 8.526512829121202e-14,
                      "z": -13.199453425655307
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 2.2539452650793095,
                          "z": -1.154242287524795
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "3vc2u44f",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_173",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 120.55297216538918,
                      "y": 8.270395815673098e-15,
                      "z": -3.8529001455362497
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "spjotlf8",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_174",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 118.08141454820168,
                      "y": 0.15385553240776062,
                      "z": -0.22325002956945283
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "nr663aqu",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_175",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 115.60863622788918,
                      "y": 0.15385553240776062,
                      "z": -0.22325002956945283
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "lhorir3b",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_176",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 115.4908688939048,
                      "y": 8.270395815673098e-15,
                      "z": -3.8529001455362497
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "3quqnmxt",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_177",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 120.38860448960793,
                      "y": 0.15385553240776062,
                      "z": -0.21475469875890596
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "zt85tq7x",
                  "_$prefab": "258dc9bb-50a4-491f-a294-bd76e27c51b4",
                  "name": "putong_zhongxing04_35",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 88.29195976229347,
                      "y": 4.192202140984591e-13,
                      "z": -5.187818654662369
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "hzrmquzj",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_17",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 88.28404045077004,
                      "y": 4.263256414560601e-13,
                      "z": -8.713876851683853
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "542eaeig",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_18",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 88.190404891688,
                      "y": 4.263256414560601e-13,
                      "z": -1.4796544395744782
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "bsololmw",
                  "_$prefab": "708d6e64-2ee4-49a8-94a2-3c1bc1da9a21",
                  "name": "putong_dajianzhu04_16",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -123.89175935196351,
                      "y": 2.1316282072803006e-14,
                      "z": 46.15234158503061
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "z79d8n47",
                  "_$prefab": "708d6e64-2ee4-49a8-94a2-3c1bc1da9a21",
                  "name": "putong_dajianzhu04_17",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -104.63377137588924,
                      "y": 2.1316282072803006e-14,
                      "z": 46.15234158503061
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "tyxqrfwb",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_21",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -105.87560911966708,
                      "y": 3.694822225952521e-13,
                      "z": -9.11841742388577
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "cgq43386",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_22",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -105.87560911966708,
                      "y": 3.694822225952521e-13,
                      "z": -27.222346943539094
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "c8n7wdav",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_23",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -105.87560272216797,
                      "y": 3.694822225952521e-13,
                      "z": -46.76725636720573
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "ojm41gip",
                  "_$prefab": "708d6e64-2ee4-49a8-94a2-3c1bc1da9a21",
                  "name": "putong_dajianzhu04_18",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -123.89176177978516,
                      "y": 2.1316282072803006e-14,
                      "z": 7.695235413730142
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "v82lbhus",
                  "_$prefab": "708d6e64-2ee4-49a8-94a2-3c1bc1da9a21",
                  "name": "putong_dajianzhu04_19",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -104.63378143310547,
                      "y": 2.1316282072803006e-14,
                      "z": 7.695235413730142
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "ts4txdvg",
                  "_$prefab": "708d6e64-2ee4-49a8-94a2-3c1bc1da9a21",
                  "name": "putong_dajianzhu04_20",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -90.6494298224805,
                      "y": 2.1316282072803006e-14,
                      "z": -60.34709757505675
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "u9pry19k",
                  "_$prefab": "708d6e64-2ee4-49a8-94a2-3c1bc1da9a21",
                  "name": "putong_dajianzhu04_21",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -71.39144947580081,
                      "y": 2.1316282072803006e-14,
                      "z": -60.34709757505675
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "q514mm83",
                  "_$prefab": "708d6e64-2ee4-49a8-94a2-3c1bc1da9a21",
                  "name": "putong_dajianzhu04_22",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.4693794803749398,
                      "y": 2.1316282072803006e-14,
                      "z": -60.347097396850586
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "df2z207u",
                  "_$prefab": "708d6e64-2ee4-49a8-94a2-3c1bc1da9a21",
                  "name": "putong_dajianzhu04_23",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 50.81445266270492,
                      "y": 2.1316282072803006e-14,
                      "z": -60.347097396850586
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "9dbyocoh",
                  "_$prefab": "258dc9bb-50a4-491f-a294-bd76e27c51b4",
                  "name": "putong_zhongxing04_36",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 150.83447471004143,
                      "y": 2.0605739337042905e-13,
                      "z": -59.59882216680623
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "w3rnvyej",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_19",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 154.62002005916253,
                      "y": 2.1316282072803006e-13,
                      "z": -59.56712584722615
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "g08mwwrn",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_20",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 147.12161460261956,
                      "y": 2.1316282072803006e-13,
                      "z": -59.56712584722615
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "1lgap7rl",
                  "_$prefab": "ee2248fe-e870-4128-ad0a-dfd4a5d671ad",
                  "name": "putong_dajianzhu05_9",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 122.96154487143261,
                      "y": -4.434966172084387e-8,
                      "z": -59.59629199804972
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "914313yg",
                  "_$prefab": "f186ecd5-dc9b-42bf-b724-cf99e3af5799",
                  "name": "putong_ditiezhan_23",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -35.47439321067081,
                      "y": 0.10431288927793503,
                      "z": -52.15299034118652
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.5,
                      "y": 0.5,
                      "z": 0.5
                    }
                  }
                },
                {
                  "_$id": "kpk5e4a9",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_178",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -18.929219758965566,
                      "y": 1.4210854715202004e-14,
                      "z": -60.024151920117646
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "bp1ohurn",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_179",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -21.298841035821034,
                      "y": 8.881784197001252e-15,
                      "z": -60.08257782343796
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "em35bban",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_180",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -23.445306337334706,
                      "y": 1.4210854715202004e-14,
                      "z": -60.205968021191865
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "6dx64wr7",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_181",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -26.030732667901113,
                      "y": 8.881784197001252e-15,
                      "z": -60.22742950800827
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "uy0x12e7",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_182",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -28.530108964898183,
                      "y": 1.4210854715202004e-14,
                      "z": -60.24455749873093
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "jdyifxex",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_183",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -31.04438165471752,
                      "y": 2.4868995751603507e-14,
                      "z": -60.24117767695358
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "21hd6dax",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_184",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -33.58648637578683,
                      "y": 1.5987211554602254e-14,
                      "z": -60.126011966504365
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "y0e9ps94",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_185",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -36.11028627202707,
                      "y": 1.4210854715202004e-14,
                      "z": -60.166974185742646
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "clq99q8b",
                  "_$prefab": "f1033483-6f72-4507-90c2-04fc916d1043",
                  "name": "putong_xiaoxing05_11",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -72.43774346155584,
                      "y": 2.842170943040401e-14,
                      "z": 5.622128125154774
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "mj4a2llb",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_186",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 68.67870274848244,
                      "y": 7.212008767965017e-13,
                      "z": -47.89417839050293
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "24xxrcyf",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_187",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 74.16154424018166,
                      "y": 1.0800249583553523e-12,
                      "z": -47.922353744506836
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "o9wr2k9r",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_188",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 76.8991541034629,
                      "y": 2.842170943040401e-14,
                      "z": -44.73410606384277
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "9b3wdirt",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_189",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 82.38129369086522,
                      "y": 2.842170943040401e-14,
                      "z": -44.55574607849121
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "le1pwswy",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_190",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 135.02172846234637,
                      "z": -34.32754677692981
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7149630196905843,
                      "w": -0.699162270488705
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    },
                    {
                      "_$id": "3fogxx8u",
                      "_$type": "Sprite3D",
                      "name": "transport_4",
                      "layer": 3,
                      "transform": {
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.009999999776482582,
                          "y": 0.009999999776482582,
                          "z": 0.009999999776482582
                        }
                      },
                      "_$comp": [
                        {
                          "_$type": "MeshFilter",
                          "sharedMesh": {
                            "_$uuid": "e9ecfe86-c3a9-41ed-9d40-d904ffb486e3@lm0",
                            "_$type": "Mesh"
                          }
                        },
                        {
                          "_$type": "MeshRenderer",
                          "receiveShadow": true,
                          "castShadow": true,
                          "lightmapScaleOffset": {
                            "_$type": "Vector4"
                          },
                          "sharedMaterials": [
                            {
                              "_$uuid": "bc0cb067-38ae-43c7-a0bb-6b464fecddd7",
                              "_$type": "Material"
                            }
                          ]
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "1wuijooh",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_191",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 136.2637481156667,
                      "z": -34.03704995075793
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7149630196905843,
                      "w": -0.699162270488705
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "2zr7vour",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_192",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 135.58717340863544,
                      "z": -15.881353081861434
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7149630196905843,
                      "w": -0.699162270488705
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "zltjj3y7",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_193",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 139.68356317914322,
                      "y": -1.5987211554602254e-14,
                      "z": -28.55442589680284
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.699162270488705,
                      "w": 0.7149630196905843
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "etrgn3nu",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_31",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -112.13990419983816,
                      "y": 1.7053025658242404e-13,
                      "z": 30.728897760031685
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "accpc336",
                  "_$prefab": "219c3eda-1c3f-43d3-9641-fe2b5c2d1031",
                  "name": "putong_zhongxing02_31",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -107.5561029303069,
                      "y": 1.7053025658242404e-13,
                      "z": 30.54783696901606
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "cmmfb77m",
                  "_$prefab": "258dc9bb-50a4-491f-a294-bd76e27c51b4",
                  "name": "putong_zhongxing04_37",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -102.87714022278738,
                      "y": 1.8118839761882555e-13,
                      "z": 30.53057164919184
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "035zdkrz",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_32",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -98.07988375306081,
                      "y": 4.476419235288631e-13,
                      "z": 30.67944211733149
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "sexmmskl",
                  "_$prefab": "52ec65d3-4d22-43a9-a7b5-e3586a559883",
                  "name": "putong_zhongxing07",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -32.4915772897957,
                      "z": -35.735706396109045
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "o5618txs",
                  "_$prefab": "424b84e8-831d-410d-aeb8-2f678ec9a1b4",
                  "name": "putong_zhongxing08",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -40.061373610459256,
                      "y": 1.4210854715202004e-14,
                      "z": -35.76271645357376
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "y422vcsp",
                  "_$prefab": "e414f28c-a913-43c4-9590-7b1d49da04d4",
                  "name": "daxingjianzhu_fangxing",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -66.04758738218263,
                      "z": -34.62998072422297
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "7s5epdza",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_33",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -39.52987545833716,
                      "y": 3.197442310920451e-13,
                      "z": -29.438725598973633
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "dnl86ey5",
                  "_$prefab": "219c3eda-1c3f-43d3-9641-fe2b5c2d1031",
                  "name": "putong_zhongxing02_32",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -32.501616180437466,
                      "y": 2.6290081223123707e-13,
                      "z": -29.3812588088023
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "wid4kdr4",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_34",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 7.579992687237709,
                      "y": -7.105427357601002e-15,
                      "z": -37.550378860507124
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "l1ibll4u",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_35",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 13.675274007600358,
                      "y": -7.105427357601002e-15,
                      "z": -37.550378860507124
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "69awyucu",
                  "_$prefab": "708d6e64-2ee4-49a8-94a2-3c1bc1da9a21",
                  "name": "putong_dajianzhu04_24",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 8.148105392010137,
                      "y": 2.8421709430404007e-13,
                      "z": -27.786226080036002
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "335osq8t",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_194",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -3.3432029196823763,
                      "y": 2.842170943040401e-14,
                      "z": -30.549987292562605
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "kcwzbahy",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_195",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -3.2424949118698763,
                      "y": 2.842170943040401e-14,
                      "z": -28.435241198812605
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "3kb3c4sj",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_196",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -3.2814658591355013,
                      "y": 2.842170943040401e-14,
                      "z": -23.536124682699324
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "fl5rypqf",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_197",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -3.2814658591355013,
                      "y": 2.842170943040401e-14,
                      "z": -25.86831614998448
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "jlwdl92s",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_198",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -3.4171317526901888,
                      "y": 3.907985046680551e-14,
                      "z": -35.628722644125105
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "yzvtlpga",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_199",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -3.2743552634323763,
                      "y": 3.019806626980426e-14,
                      "z": -38.22379252937901
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "uj08s99b",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_200",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -3.3432029196823763,
                      "y": 2.842170943040401e-14,
                      "z": -33.2105326416837
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "s3jwbyu7",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_201",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -3.4171317526901888,
                      "y": 3.907985046680551e-14,
                      "z": -40.49272487190831
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "g6va3x4x",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_202",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 60.428369361304355,
                      "y": 2.842170943040401e-14,
                      "z": -30.549985885620117
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "24lwxh0u",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_203",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 60.529077369116855,
                      "y": 2.842170943040401e-14,
                      "z": -28.435239791870117
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "i5vgrv1h",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_204",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 60.49010642185123,
                      "y": 2.842170943040401e-14,
                      "z": -23.536123275756836
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "iw17id9s",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_205",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 60.49010642185123,
                      "y": 2.842170943040401e-14,
                      "z": -25.868314743041992
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "ltu3rjia",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_206",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 60.35444052829654,
                      "y": 3.907985046680551e-14,
                      "z": -35.62872123718262
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "7795lbag",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_207",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 60.497217017554355,
                      "y": 3.019806626980426e-14,
                      "z": -38.22379112243652
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.0805615514372846,
                          "z": 0.02114009661744376
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "5qt7nn8d",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_208",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 60.428369361304355,
                      "y": 2.842170943040401e-14,
                      "z": -33.21053123474121
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "d84ljuds",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_209",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 60.35444052829654,
                      "y": 3.907985046680551e-14,
                      "z": -40.492727279663086
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "loor4jm2",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_21",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 193.2886855548036,
                      "y": 2.842170943040401e-14,
                      "z": 3.7824344635009766
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "jqdggxbg",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_21",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -80.28691101074219,
                      "y": -1.3145040611561853e-13,
                      "z": -35.982025146484375
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "0xk05k4z",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_23",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -57.91266632080078,
                      "y": -1.3145040611561853e-13,
                      "z": -25.21872901916504
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "pwyqfpwf",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_22",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 39.85935181292352,
                      "y": 2.842170943040401e-14,
                      "z": 110.80555204171912
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "7jgekxki",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_23",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 32.36094635638056,
                      "y": 2.842170943040401e-14,
                      "z": 110.80555204171912
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "wqmw0u37",
                  "_$prefab": "258dc9bb-50a4-491f-a294-bd76e27c51b4",
                  "name": "putong_zhongxing04_38",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 36.07380646380243,
                      "y": 2.131628207280301e-14,
                      "z": 110.77385572213905
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "1yz3plss",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_24",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 26.2340380217982,
                      "y": 2.842170943040401e-14,
                      "z": 110.80555152893066
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "ygnozmid",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_25",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 18.73563256525523,
                      "y": 2.842170943040401e-14,
                      "z": 110.80555152893066
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "0o5i3nwx",
                  "_$prefab": "258dc9bb-50a4-491f-a294-bd76e27c51b4",
                  "name": "putong_zhongxing04_39",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 22.448492672677105,
                      "y": 2.1316282072803006e-14,
                      "z": 110.77385902404785
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "qqfbab43",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_26",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 39.859352111816406,
                      "y": 2.842170943040401e-14,
                      "z": 133.8524706397518
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "rl83dz9s",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_27",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 32.36094665527344,
                      "y": 2.842170943040401e-14,
                      "z": 133.8524706397518
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "dmam7otf",
                  "_$prefab": "258dc9bb-50a4-491f-a294-bd76e27c51b4",
                  "name": "putong_zhongxing04_40",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 36.07380676269531,
                      "y": 2.1316282072803006e-14,
                      "z": 133.820778134869
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "zkthtu1o",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_28",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 26.234037399291992,
                      "y": 2.842170943040401e-14,
                      "z": 133.8524706397518
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "wur5zv9s",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_29",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 18.735631942749023,
                      "y": 2.842170943040401e-14,
                      "z": 133.8524706397518
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "np54mtdw",
                  "_$prefab": "258dc9bb-50a4-491f-a294-bd76e27c51b4",
                  "name": "putong_zhongxing04_41",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 22.4484920501709,
                      "y": 2.1316282072803006e-14,
                      "z": 133.820778134869
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "v85o9wvj",
                  "_$prefab": "3d91bc88-a8d6-4a2b-9c88-9dab20e90bae",
                  "name": "putong_xiaoxing08_7",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 33.08087750292332,
                      "y": 1.7408297026122455e-13,
                      "z": 124.40115409904698
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3"
                        }
                      }
                    }
                  ]
                },
                {
                  "_$id": "zyjfqn4k",
                  "_$prefab": "4993fe3c-99a9-4f62-a149-80a95bb88940",
                  "name": "putong_xiaoxing07_7",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 40.06811352587254,
                      "y": 2.842170943040401e-14,
                      "z": 124.52782493644932
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.6992405622187761,
                      "w": 0.7148864498282018
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "ta8uq2dz",
                  "_$prefab": "f1033483-6f72-4507-90c2-04fc916d1043",
                  "name": "putong_xiaoxing05_12",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 39.72300015964605,
                      "y": 1.8687273950490635e-12,
                      "z": 119.04964867748643
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "dcdl7tt8",
                  "_$prefab": "f1033483-6f72-4507-90c2-04fc916d1043",
                  "name": "putong_xiaoxing05_13",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 32.92951261081792,
                      "y": 1.580957587066223e-12,
                      "z": 119.23809090771104
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "09e02ocz",
                  "_$prefab": "3d91bc88-a8d6-4a2b-9c88-9dab20e90bae",
                  "name": "putong_xiaoxing08_8",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 20.651288222429415,
                      "y": 1.7408297026122455e-13,
                      "z": 124.40115547180176
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3"
                        }
                      }
                    }
                  ]
                },
                {
                  "_$id": "ibbney8g",
                  "_$prefab": "4993fe3c-99a9-4f62-a149-80a95bb88940",
                  "name": "putong_xiaoxing07_8",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 27.638524245378633,
                      "y": 2.842170943040401e-14,
                      "z": 124.5278263092041
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.6992405622187761,
                      "w": 0.7148864498282018
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "0e7r6xbn",
                  "_$prefab": "f1033483-6f72-4507-90c2-04fc916d1043",
                  "name": "putong_xiaoxing05_14",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 27.29340858375754,
                      "y": 1.8687273950490635e-12,
                      "z": 119.04965400695801
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "6q2u62mq",
                  "_$prefab": "f1033483-6f72-4507-90c2-04fc916d1043",
                  "name": "putong_xiaoxing05_15",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 20.499921034929415,
                      "y": 1.580957587066223e-12,
                      "z": 119.23809242248535
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "s1rxn94j",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_211",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 14.228530037857169,
                      "y": 3.552713678800501e-14,
                      "z": 124.34209386525767
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "7kqtkkey",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_212",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 14.1466284875642,
                      "y": 3.552713678800501e-14,
                      "z": 122.1521372002186
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "9hyboxr8",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_213",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 14.071417916275138,
                      "y": 3.552713678800501e-14,
                      "z": 119.52918950734751
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "sm9aebfg",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_214",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 14.599166024185294,
                      "y": 4.618527782440651e-14,
                      "z": 117.2426141899647
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "9f74ei7t",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_217",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 14.121070015884513,
                      "y": 3.019806626980426e-14,
                      "z": 126.93625585256235
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.9999733145511742,
                      "w": -0.007305490095698992
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "65x9l1ev",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_218",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 44.184061266127586,
                      "y": 3.019806626980426e-14,
                      "z": 126.49697340949064
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.9999733145511744,
                      "w": -0.007305490095698993
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "77y8fzc6",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_219",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 44.29152128810024,
                      "y": 3.552713678800501e-14,
                      "z": 123.90281142218595
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "zxil28bc",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_220",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 44.20961973780727,
                      "y": 3.552713678800501e-14,
                      "z": 121.71285475714689
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "qhfed9js",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_221",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 44.13440916651821,
                      "y": 3.552713678800501e-14,
                      "z": 119.08990706427579
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "0fwh3d79",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_222",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 44.66215727442837,
                      "y": 4.618527782440651e-14,
                      "z": 116.80333174689298
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "7tpdo1ih",
              "_$type": "Sprite3D",
              "name": "NpcBorn",
              "_$child": [
                {
                  "_$id": "0i97c0hu",
                  "_$type": "Sprite3D",
                  "name": "Plane_4",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -117.9150161743164,
                      "y": -5.142553050063725e-13,
                      "z": 101.49174958502192
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "s8654e1x",
                  "_$type": "Sprite3D",
                  "name": "Plane_5",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -117.9150161743164,
                      "y": -5.142553050063725e-13,
                      "z": 88.55586701666255
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "m0tfsdgh",
                  "_$type": "Sprite3D",
                  "name": "Plane_6",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -117.9150161743164,
                      "y": -5.142553050063725e-13,
                      "z": 75.31828767095942
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "bgmkg0sj",
                  "_$type": "Sprite3D",
                  "name": "Plane_7",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -117.9150161743164,
                      "y": -5.142553050063725e-13,
                      "z": 62.382401287902766
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "grims1i0",
                  "_$type": "Sprite3D",
                  "name": "Plane_8",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -117.9150161743164,
                      "y": -5.142553050063725e-13,
                      "z": 49.61219591007577
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "rj8qgs1k",
                  "_$type": "Sprite3D",
                  "name": "Plane_9",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -117.9150161743164,
                      "y": -5.142553050063725e-13,
                      "z": 36.676313341716394
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "9oo5etti",
                  "_$type": "Sprite3D",
                  "name": "Plane_10",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -117.9150161743164,
                      "y": -5.142553050063725e-13,
                      "z": 23.43873399601327
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "k0305swp",
                  "_$type": "Sprite3D",
                  "name": "Plane_12",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -117.9150161743164,
                      "y": -5.142553050063725e-13,
                      "z": 10.15098891127392
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "40rkrpvh",
                  "_$type": "Sprite3D",
                  "name": "Plane_13",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -117.9150161743164,
                      "y": -5.142553050063725e-13,
                      "z": -2.7848936570854477
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "z11auapm",
                  "_$type": "Sprite3D",
                  "name": "Plane_14",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -117.9150161743164,
                      "y": -5.142553050063725e-13,
                      "z": -16.022473002788573
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "0ozgx219",
                  "_$type": "Sprite3D",
                  "name": "Plane_15",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -117.9150161743164,
                      "y": -5.142553050063725e-13,
                      "z": -28.95835938584522
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "7xyburi8",
                  "_$type": "Sprite3D",
                  "name": "Plane_16",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -117.9150161743164,
                      "y": -5.142553050063725e-13,
                      "z": -41.728565837261215
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "89rmz2v5",
                  "_$type": "Sprite3D",
                  "name": "Plane_17",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -117.9150161743164,
                      "y": -5.142553050063725e-13,
                      "z": -54.66444840562059
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ad27ls09",
                  "_$type": "Sprite3D",
                  "name": "Plane_18",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -117.9150161743164,
                      "y": -5.142553050063725e-13,
                      "z": -67.90202584397511
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "fx3b8zdd",
                  "_$type": "Sprite3D",
                  "name": "Plane_19",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -117.9150161743164,
                      "y": -5.142553050063725e-13,
                      "z": -80.8379131807061
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "s2xiybti",
                  "_$type": "Sprite3D",
                  "name": "Plane_20",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -104.92939127528294,
                      "y": -5.142553050063725e-13,
                      "z": 101.49175262451172
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "2lmsvzgb",
                  "_$type": "Sprite3D",
                  "name": "Plane_21",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -104.92939127528294,
                      "y": -5.142553050063725e-13,
                      "z": 88.55587005615234
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "0xawuwe5",
                  "_$type": "Sprite3D",
                  "name": "Plane_22",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -104.92939127528294,
                      "y": -5.142553050063725e-13,
                      "z": 75.31829071044922
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "19uuyhb2",
                  "_$type": "Sprite3D",
                  "name": "Plane_23",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -104.92939127528294,
                      "y": -5.142553050063725e-13,
                      "z": 62.38240051269531
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "1v8bly49",
                  "_$type": "Sprite3D",
                  "name": "Plane_24",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -104.92939127528294,
                      "y": -5.142553050063725e-13,
                      "z": 49.6121940612793
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "i9ya89ry",
                  "_$type": "Sprite3D",
                  "name": "Plane_25",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -104.92939127528294,
                      "y": -5.142553050063725e-13,
                      "z": 36.67631149291992
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "e5nnz4zg",
                  "_$type": "Sprite3D",
                  "name": "Plane_26",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -104.92939127528294,
                      "y": -5.142553050063725e-13,
                      "z": 23.43873405456543
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "nchhjhwm",
                  "_$type": "Sprite3D",
                  "name": "Plane_27",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -104.92939127528294,
                      "y": -5.142553050063725e-13,
                      "z": -80.8379135131836
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "gijz8v6g",
                  "_$type": "Sprite3D",
                  "name": "Plane_28",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -104.92939127528294,
                      "y": -5.142553050063725e-13,
                      "z": 10.150988578796387
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "x49xn9me",
                  "_$type": "Sprite3D",
                  "name": "Plane_29",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -104.92939127528294,
                      "y": -5.142553050063725e-13,
                      "z": -2.784893751144409
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "b5d4jkrb",
                  "_$type": "Sprite3D",
                  "name": "Plane_30",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -104.92939127528294,
                      "y": -5.142553050063725e-13,
                      "z": -16.022472381591797
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "lmi9wfn7",
                  "_$type": "Sprite3D",
                  "name": "Plane_31",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -104.92939127528294,
                      "y": -5.142553050063725e-13,
                      "z": -28.958358764648438
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "m1a74cfg",
                  "_$type": "Sprite3D",
                  "name": "Plane_32",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -104.92939127528294,
                      "y": -5.142553050063725e-13,
                      "z": -41.72856521606445
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "1ij01l3o",
                  "_$type": "Sprite3D",
                  "name": "Plane_33",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -104.92939127528294,
                      "y": -5.142553050063725e-13,
                      "z": -54.66444778442383
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "xfi2bi2v",
                  "_$type": "Sprite3D",
                  "name": "Plane_34",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -104.92939127528294,
                      "y": -5.142553050063725e-13,
                      "z": -67.90202331542969
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "0gypbz0p",
                  "_$type": "Sprite3D",
                  "name": "Plane_35",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -91.46525600216987,
                      "y": -5.142553050063725e-13,
                      "z": 101.49175262451172
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "c6u48twi",
                  "_$type": "Sprite3D",
                  "name": "Plane_36",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -91.46525600216987,
                      "y": -5.142553050063725e-13,
                      "z": 88.55587005615234
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "eatcbtg4",
                  "_$type": "Sprite3D",
                  "name": "Plane_37",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -91.46525600216987,
                      "y": -5.142553050063725e-13,
                      "z": 75.31829071044922
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "3esljry4",
                  "_$type": "Sprite3D",
                  "name": "Plane_38",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -91.46525600216987,
                      "y": -5.142553050063725e-13,
                      "z": 62.38240051269531
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "evew1rub",
                  "_$type": "Sprite3D",
                  "name": "Plane_39",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -91.46525600216987,
                      "y": -5.142553050063725e-13,
                      "z": 49.6121940612793
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "uri9isf4",
                  "_$type": "Sprite3D",
                  "name": "Plane_40",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -91.46525600216987,
                      "y": -5.142553050063725e-13,
                      "z": 36.67631149291992
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ncyi1dm0",
                  "_$type": "Sprite3D",
                  "name": "Plane_41",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -91.46525600216987,
                      "y": -5.142553050063725e-13,
                      "z": 23.43873405456543
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "rdzuke6u",
                  "_$type": "Sprite3D",
                  "name": "Plane_42",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -91.46525600216987,
                      "y": -5.142553050063725e-13,
                      "z": -80.8379135131836
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ld3jt5o9",
                  "_$type": "Sprite3D",
                  "name": "Plane_43",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -91.46525600216987,
                      "y": -5.142553050063725e-13,
                      "z": 10.150988578796387
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "9kf2atuc",
                  "_$type": "Sprite3D",
                  "name": "Plane_44",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -91.46525600216987,
                      "y": -5.142553050063725e-13,
                      "z": -2.784893751144409
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "sau70hcl",
                  "_$type": "Sprite3D",
                  "name": "Plane_45",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -91.46525600216987,
                      "y": -5.142553050063725e-13,
                      "z": -16.022472381591797
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "aqdzzb1o",
                  "_$type": "Sprite3D",
                  "name": "Plane_46",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -91.46525600216987,
                      "y": -5.142553050063725e-13,
                      "z": -28.958358764648438
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "thgh747q",
                  "_$type": "Sprite3D",
                  "name": "Plane_47",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -91.46525600216987,
                      "y": -5.142553050063725e-13,
                      "z": -41.72856521606445
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "4jss9s25",
                  "_$type": "Sprite3D",
                  "name": "Plane_48",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -91.46525600216987,
                      "y": -5.142553050063725e-13,
                      "z": -54.66444778442383
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "28oq0h8v",
                  "_$type": "Sprite3D",
                  "name": "Plane_49",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -91.46525600216987,
                      "y": -5.142553050063725e-13,
                      "z": -67.90202331542969
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "fhi2mrj5",
                  "_$type": "Sprite3D",
                  "name": "Plane_50",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -78.47962978146674,
                      "y": -5.142553050063725e-13,
                      "z": 101.49175262451172
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "hby5p70i",
                  "_$type": "Sprite3D",
                  "name": "Plane_51",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -78.47962978146674,
                      "y": -5.142553050063725e-13,
                      "z": 88.55587005615234
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "6n925rzn",
                  "_$type": "Sprite3D",
                  "name": "Plane_52",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -78.47962978146674,
                      "y": -5.142553050063725e-13,
                      "z": 75.31829071044922
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "hsp46bta",
                  "_$type": "Sprite3D",
                  "name": "Plane_53",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -78.47962978146674,
                      "y": -5.142553050063725e-13,
                      "z": 62.38240051269531
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "sqk939xt",
                  "_$type": "Sprite3D",
                  "name": "Plane_54",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -78.47962978146674,
                      "y": -5.142553050063725e-13,
                      "z": 49.6121940612793
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "e23xp1lh",
                  "_$type": "Sprite3D",
                  "name": "Plane_55",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -78.47962978146674,
                      "y": -5.142553050063725e-13,
                      "z": 36.67631149291992
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "4gol1w3t",
                  "_$type": "Sprite3D",
                  "name": "Plane_56",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -78.47962978146674,
                      "y": -5.142553050063725e-13,
                      "z": 23.43873405456543
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "36amipwq",
                  "_$type": "Sprite3D",
                  "name": "Plane_57",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -78.47962978146674,
                      "y": -5.142553050063725e-13,
                      "z": -80.8379135131836
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ll5h5xkb",
                  "_$type": "Sprite3D",
                  "name": "Plane_58",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -78.47962978146674,
                      "y": -5.142553050063725e-13,
                      "z": 10.150988578796387
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "lh5rk43y",
                  "_$type": "Sprite3D",
                  "name": "Plane_59",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -78.47962978146674,
                      "y": -5.142553050063725e-13,
                      "z": -2.784893751144409
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "zt17krgc",
                  "_$type": "Sprite3D",
                  "name": "Plane_60",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -78.47962978146674,
                      "y": -5.142553050063725e-13,
                      "z": -16.022472381591797
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "yziu7wqa",
                  "_$type": "Sprite3D",
                  "name": "Plane_61",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -78.47962978146674,
                      "y": -5.142553050063725e-13,
                      "z": -28.958358764648438
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "4d0thykn",
                  "_$type": "Sprite3D",
                  "name": "Plane_62",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -78.47962978146674,
                      "y": -5.142553050063725e-13,
                      "z": -41.72856521606445
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "96qulow1",
                  "_$type": "Sprite3D",
                  "name": "Plane_63",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -78.47962978146674,
                      "y": -5.142553050063725e-13,
                      "z": -54.66444778442383
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "u9tgwlkp",
                  "_$type": "Sprite3D",
                  "name": "Plane_64",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -78.47962978146674,
                      "y": -5.142553050063725e-13,
                      "z": -67.90202331542969
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "pty6hwe4",
                  "_$type": "Sprite3D",
                  "name": "Plane_69",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -64.89862948178592,
                      "y": -5.142553050063725e-13,
                      "z": 49.6121940612793
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "grpbk1sh",
                  "_$type": "Sprite3D",
                  "name": "Plane_70",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -64.89862948178592,
                      "y": -5.142553050063725e-13,
                      "z": 36.67631149291992
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ofvarmyu",
                  "_$type": "Sprite3D",
                  "name": "Plane_71",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -64.89862948178592,
                      "y": -5.142553050063725e-13,
                      "z": 23.43873405456543
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "twjvvj0u",
                  "_$type": "Sprite3D",
                  "name": "Plane_72",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -64.89862948178592,
                      "y": -5.142553050063725e-13,
                      "z": -80.8379135131836
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "6m0419g2",
                  "_$type": "Sprite3D",
                  "name": "Plane_73",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -64.89862948178592,
                      "y": -5.142553050063725e-13,
                      "z": 10.150988578796387
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "hoaat1pf",
                  "_$type": "Sprite3D",
                  "name": "Plane_74",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -64.89862948178592,
                      "y": -5.142553050063725e-13,
                      "z": -2.784893751144409
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "6qga35yn",
                  "_$type": "Sprite3D",
                  "name": "Plane_75",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -64.89862948178592,
                      "y": -5.142553050063725e-13,
                      "z": -16.022472381591797
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "96ohxk2w",
                  "_$type": "Sprite3D",
                  "name": "Plane_76",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -64.89862948178592,
                      "y": -5.142553050063725e-13,
                      "z": -28.958358764648438
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "cms7acmu",
                  "_$type": "Sprite3D",
                  "name": "Plane_77",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -64.89862948178592,
                      "y": -5.142553050063725e-13,
                      "z": -41.72856521606445
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "8jbwr5di",
                  "_$type": "Sprite3D",
                  "name": "Plane_78",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -64.89862948178592,
                      "y": -5.142553050063725e-13,
                      "z": -54.66444778442383
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "cyaji7um",
                  "_$type": "Sprite3D",
                  "name": "Plane_79",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -64.89862948178592,
                      "y": -5.142553050063725e-13,
                      "z": -67.90202331542969
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "80f4prab",
                  "_$type": "Sprite3D",
                  "name": "Plane_84",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -51.91300326108279,
                      "y": -5.142553050063725e-13,
                      "z": 49.6121940612793
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "7jo6v2yv",
                  "_$type": "Sprite3D",
                  "name": "Plane_85",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -51.91300326108279,
                      "y": -5.142553050063725e-13,
                      "z": 36.67631149291992
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "9slyrkwy",
                  "_$type": "Sprite3D",
                  "name": "Plane_86",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -51.91300326108279,
                      "y": -5.142553050063725e-13,
                      "z": 23.43873405456543
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "k34xf6t6",
                  "_$type": "Sprite3D",
                  "name": "Plane_87",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -51.91300326108279,
                      "y": -5.142553050063725e-13,
                      "z": -80.8379135131836
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "k1pw9l48",
                  "_$type": "Sprite3D",
                  "name": "Plane_88",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -51.91300326108279,
                      "y": -5.142553050063725e-13,
                      "z": 10.150988578796387
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "1wlg9aof",
                  "_$type": "Sprite3D",
                  "name": "Plane_89",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -51.91300326108279,
                      "y": -5.142553050063725e-13,
                      "z": -2.784893751144409
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "0mi33y7x",
                  "_$type": "Sprite3D",
                  "name": "Plane_90",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -51.91300326108279,
                      "y": -5.142553050063725e-13,
                      "z": -16.022472381591797
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "01u0j6tb",
                  "_$type": "Sprite3D",
                  "name": "Plane_91",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -51.91300326108279,
                      "y": -5.142553050063725e-13,
                      "z": -28.958358764648438
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "3kji58t9",
                  "_$type": "Sprite3D",
                  "name": "Plane_92",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -51.91300326108279,
                      "y": -5.142553050063725e-13,
                      "z": -41.72856521606445
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "1cxttu94",
                  "_$type": "Sprite3D",
                  "name": "Plane_93",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -51.91300326108279,
                      "y": -5.142553050063725e-13,
                      "z": -54.66444778442383
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "5v6ytbud",
                  "_$type": "Sprite3D",
                  "name": "Plane_94",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -51.91300326108279,
                      "y": -5.142553050063725e-13,
                      "z": -67.90202331542969
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "tpuu47g8",
                  "_$type": "Sprite3D",
                  "name": "Plane_99",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -38.32573613715685,
                      "y": -5.142553050063725e-13,
                      "z": 49.6121940612793
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "374ewbte",
                  "_$type": "Sprite3D",
                  "name": "Plane_100",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -38.32573613715685,
                      "y": -5.142553050063725e-13,
                      "z": 36.67631149291992
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "avuz8cxj",
                  "_$type": "Sprite3D",
                  "name": "Plane_101",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -38.32573613715685,
                      "y": -5.142553050063725e-13,
                      "z": 23.43873405456543
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "i9zj7enu",
                  "_$type": "Sprite3D",
                  "name": "Plane_102",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -38.32573613715685,
                      "y": -5.142553050063725e-13,
                      "z": -80.8379135131836
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "njw4hsds",
                  "_$type": "Sprite3D",
                  "name": "Plane_103",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -38.32573613715685,
                      "y": -5.142553050063725e-13,
                      "z": 10.150988578796387
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "le5wx2l3",
                  "_$type": "Sprite3D",
                  "name": "Plane_104",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -38.32573613715685,
                      "y": -5.142553050063725e-13,
                      "z": -2.784893751144409
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "wejfaq3a",
                  "_$type": "Sprite3D",
                  "name": "Plane_105",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -38.32573613715685,
                      "y": -5.142553050063725e-13,
                      "z": -16.022472381591797
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "y84qlbm9",
                  "_$type": "Sprite3D",
                  "name": "Plane_106",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -38.32573613715685,
                      "y": -5.142553050063725e-13,
                      "z": -28.958358764648438
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "2izx4do0",
                  "_$type": "Sprite3D",
                  "name": "Plane_107",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -38.32573613715685,
                      "y": -5.142553050063725e-13,
                      "z": -41.72856521606445
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "z7x373qn",
                  "_$type": "Sprite3D",
                  "name": "Plane_108",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -38.32573613715685,
                      "y": -5.142553050063725e-13,
                      "z": -54.66444778442383
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "8a7ffond",
                  "_$type": "Sprite3D",
                  "name": "Plane_109",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -38.32573613715685,
                      "y": -5.142553050063725e-13,
                      "z": -67.90202331542969
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "h8h8dc0p",
                  "_$type": "Sprite3D",
                  "name": "Plane_114",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -25.340109916453727,
                      "y": -5.142553050063725e-13,
                      "z": 49.6121940612793
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "25wih819",
                  "_$type": "Sprite3D",
                  "name": "Plane_115",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -25.340109916453727,
                      "y": -5.142553050063725e-13,
                      "z": 36.67631149291992
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "kexvh3b3",
                  "_$type": "Sprite3D",
                  "name": "Plane_116",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -25.340109916453727,
                      "y": -5.142553050063725e-13,
                      "z": 23.43873405456543
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "6cgbpd5g",
                  "_$type": "Sprite3D",
                  "name": "Plane_117",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -25.340109916453727,
                      "y": -5.142553050063725e-13,
                      "z": -80.8379135131836
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "v8s6y45a",
                  "_$type": "Sprite3D",
                  "name": "Plane_118",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -25.340109916453727,
                      "y": -5.142553050063725e-13,
                      "z": 10.150988578796387
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "l6m445c7",
                  "_$type": "Sprite3D",
                  "name": "Plane_119",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -25.340109916453727,
                      "y": -5.142553050063725e-13,
                      "z": -2.784893751144409
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "7qa74c89",
                  "_$type": "Sprite3D",
                  "name": "Plane_120",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -25.340109916453727,
                      "y": -5.142553050063725e-13,
                      "z": -16.022472381591797
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "n1p5ib4p",
                  "_$type": "Sprite3D",
                  "name": "Plane_121",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -25.340109916453727,
                      "y": -5.142553050063725e-13,
                      "z": -28.958358764648438
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "3avnku2t",
                  "_$type": "Sprite3D",
                  "name": "Plane_122",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -25.340109916453727,
                      "y": -5.142553050063725e-13,
                      "z": -41.72856521606445
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "c9ascyht",
                  "_$type": "Sprite3D",
                  "name": "Plane_123",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -25.340109916453727,
                      "y": -5.142553050063725e-13,
                      "z": -54.66444778442383
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "j6tp5l5m",
                  "_$type": "Sprite3D",
                  "name": "Plane_124",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -25.340109916453727,
                      "y": -5.142553050063725e-13,
                      "z": -67.90202331542969
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "wyzm7wkg",
                  "_$type": "Sprite3D",
                  "name": "Plane_125",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -13.407054235729792,
                      "y": -5.142553050063725e-13,
                      "z": 110.62179000137907
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "rqeeldlt",
                  "_$type": "Sprite3D",
                  "name": "Plane_126",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -14.034171178443149,
                      "y": -5.142553050063725e-13,
                      "z": 86.62063852746411
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "kw7ld3tc",
                  "_$type": "Sprite3D",
                  "name": "Plane_129",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -11.835741171170262,
                      "y": -5.142553050063725e-13,
                      "z": 49.6121940612793
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "yn8lqjxr",
                  "_$type": "Sprite3D",
                  "name": "Plane_130",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -11.835741171170262,
                      "y": -5.142553050063725e-13,
                      "z": 36.67631149291992
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "0m68ypns",
                  "_$type": "Sprite3D",
                  "name": "Plane_131",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -11.835741171170262,
                      "y": -5.142553050063725e-13,
                      "z": 23.43873405456543
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "3z5xcy2n",
                  "_$type": "Sprite3D",
                  "name": "Plane_132",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -11.835741171170262,
                      "y": -5.142553050063725e-13,
                      "z": -80.8379135131836
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "u9aarx7b",
                  "_$type": "Sprite3D",
                  "name": "Plane_133",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -11.835741171170262,
                      "y": -5.142553050063725e-13,
                      "z": 10.150988578796387
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "fg6rn9fz",
                  "_$type": "Sprite3D",
                  "name": "Plane_134",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -11.835741171170262,
                      "y": -5.142553050063725e-13,
                      "z": -2.784893751144409
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "9zuyolme",
                  "_$type": "Sprite3D",
                  "name": "Plane_135",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -11.835741171170262,
                      "y": -5.142553050063725e-13,
                      "z": -16.022472381591797
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "lbak71ow",
                  "_$type": "Sprite3D",
                  "name": "Plane_136",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -11.835741171170262,
                      "y": -5.142553050063725e-13,
                      "z": -28.958358764648438
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "16o5fvd0",
                  "_$type": "Sprite3D",
                  "name": "Plane_137",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -11.835741171170262,
                      "y": -5.142553050063725e-13,
                      "z": -41.72856521606445
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "qj5ain7t",
                  "_$type": "Sprite3D",
                  "name": "Plane_138",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -11.835741171170262,
                      "y": -5.142553050063725e-13,
                      "z": -54.66444778442383
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "gricdqwj",
                  "_$type": "Sprite3D",
                  "name": "Plane_139",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -11.835741171170262,
                      "y": -5.142553050063725e-13,
                      "z": -67.90202331542969
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "jhm7637m",
                  "_$type": "Sprite3D",
                  "name": "Plane_140",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 9.117007509240393,
                      "z": 109.28583320182483
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "myf8f032",
                  "_$type": "Sprite3D",
                  "name": "Plane_141",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 8.613784689465476,
                      "y": -5.142553050063725e-13,
                      "z": 88.55587005615234
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ikd7vrak",
                  "_$type": "Sprite3D",
                  "name": "Plane_142",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2.16094371074503,
                      "y": -5.142553050063725e-13,
                      "z": 75.31829071044922
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "quslwdcs",
                  "_$type": "Sprite3D",
                  "name": "Plane_143",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2.5817086135755427,
                      "y": -5.142553050063725e-13,
                      "z": 62.38240051269531
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "o0gjciwv",
                  "_$type": "Sprite3D",
                  "name": "Plane_144",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.1498850495328625,
                      "y": -5.142553050063725e-13,
                      "z": 49.6121940612793
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "i773kke3",
                  "_$type": "Sprite3D",
                  "name": "Plane_145",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.1498850495328625,
                      "y": -5.142553050063725e-13,
                      "z": 36.67631149291992
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "cmher3dh",
                  "_$type": "Sprite3D",
                  "name": "Plane_146",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.1498850495328625,
                      "y": -5.142553050063725e-13,
                      "z": 23.43873405456543
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "me1do3tw",
                  "_$type": "Sprite3D",
                  "name": "Plane_147",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.1498850495328625,
                      "y": -5.142553050063725e-13,
                      "z": -80.8379135131836
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "78g3kbld",
                  "_$type": "Sprite3D",
                  "name": "Plane_148",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.1498850495328625,
                      "y": -5.142553050063725e-13,
                      "z": 10.150988578796387
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "igrzww7q",
                  "_$type": "Sprite3D",
                  "name": "Plane_149",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.1498850495328625,
                      "y": -5.142553050063725e-13,
                      "z": -2.784893751144409
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "wwad48j1",
                  "_$type": "Sprite3D",
                  "name": "Plane_150",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.1498850495328625,
                      "y": -5.142553050063725e-13,
                      "z": -16.022472381591797
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "67s5d20f",
                  "_$type": "Sprite3D",
                  "name": "Plane_151",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.1498850495328625,
                      "y": -5.142553050063725e-13,
                      "z": -28.958358764648438
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "4jkvbcwu",
                  "_$type": "Sprite3D",
                  "name": "Plane_152",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.1498850495328625,
                      "y": -5.142553050063725e-13,
                      "z": -41.72856521606445
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "an6oq4e0",
                  "_$type": "Sprite3D",
                  "name": "Plane_153",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.1498850495328625,
                      "y": -5.142553050063725e-13,
                      "z": -54.66444778442383
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "64k941j3",
                  "_$type": "Sprite3D",
                  "name": "Plane_154",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.1498850495328625,
                      "y": -5.142553050063725e-13,
                      "z": -67.90202331542969
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "kmyrfdqz",
                  "_$type": "Sprite3D",
                  "name": "Plane_159",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 14.832201008092426,
                      "y": -5.142553050063725e-13,
                      "z": 49.6121940612793
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "1atzmunk",
                  "_$type": "Sprite3D",
                  "name": "Plane_160",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 14.832201008092426,
                      "y": -5.142553050063725e-13,
                      "z": 36.67631149291992
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "n2uop6ta",
                  "_$type": "Sprite3D",
                  "name": "Plane_161",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 14.832201008092426,
                      "y": -5.142553050063725e-13,
                      "z": 23.43873405456543
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "xj1kure9",
                  "_$type": "Sprite3D",
                  "name": "Plane_162",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 14.832201008092426,
                      "y": -5.142553050063725e-13,
                      "z": -80.8379135131836
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "idr4miaj",
                  "_$type": "Sprite3D",
                  "name": "Plane_163",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 14.832201008092426,
                      "y": -5.142553050063725e-13,
                      "z": 10.150988578796387
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "pejh3sac",
                  "_$type": "Sprite3D",
                  "name": "Plane_164",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 14.832201008092426,
                      "y": -5.142553050063725e-13,
                      "z": -2.784893751144409
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ou9dxssn",
                  "_$type": "Sprite3D",
                  "name": "Plane_165",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 14.832201008092426,
                      "y": -5.142553050063725e-13,
                      "z": -16.022472381591797
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "tpu1je09",
                  "_$type": "Sprite3D",
                  "name": "Plane_166",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 14.832201008092426,
                      "y": -5.142553050063725e-13,
                      "z": -28.958358764648438
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "irgrg2di",
                  "_$type": "Sprite3D",
                  "name": "Plane_167",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 14.832201008092426,
                      "y": -5.142553050063725e-13,
                      "z": -41.72856521606445
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "juql213e",
                  "_$type": "Sprite3D",
                  "name": "Plane_168",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 14.832201008092426,
                      "y": -5.142553050063725e-13,
                      "z": -54.66444778442383
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "j9h1btm5",
                  "_$type": "Sprite3D",
                  "name": "Plane_169",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 14.832201008092426,
                      "y": -5.142553050063725e-13,
                      "z": -67.90202331542969
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "yog6vqbt",
                  "_$type": "Sprite3D",
                  "name": "Plane_174",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 27.81782710958626,
                      "y": -5.142553050063725e-13,
                      "z": 49.6121940612793
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "f6vghjcd",
                  "_$type": "Sprite3D",
                  "name": "Plane_175",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 27.81782710958626,
                      "y": -5.142553050063725e-13,
                      "z": 36.67631149291992
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "hx5gnuje",
                  "_$type": "Sprite3D",
                  "name": "Plane_176",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 27.81782710958626,
                      "y": -5.142553050063725e-13,
                      "z": 23.43873405456543
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "5w7dguy5",
                  "_$type": "Sprite3D",
                  "name": "Plane_177",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 27.81782710958626,
                      "y": -5.142553050063725e-13,
                      "z": -80.8379135131836
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "gkodf6kc",
                  "_$type": "Sprite3D",
                  "name": "Plane_178",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 27.81782710958626,
                      "y": -5.142553050063725e-13,
                      "z": 10.150988578796387
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "b3ozfr0x",
                  "_$type": "Sprite3D",
                  "name": "Plane_179",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 27.81782710958626,
                      "y": -5.142553050063725e-13,
                      "z": -2.784893751144409
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "24d2ds56",
                  "_$type": "Sprite3D",
                  "name": "Plane_180",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 27.81782710958626,
                      "y": -5.142553050063725e-13,
                      "z": -16.022472381591797
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "rksh00sn",
                  "_$type": "Sprite3D",
                  "name": "Plane_181",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 27.81782710958626,
                      "y": -5.142553050063725e-13,
                      "z": -28.958358764648438
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "z507m1p7",
                  "_$type": "Sprite3D",
                  "name": "Plane_182",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 27.81782710958626,
                      "y": -5.142553050063725e-13,
                      "z": -41.72856521606445
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "gt5ffhcf",
                  "_$type": "Sprite3D",
                  "name": "Plane_183",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 27.81782710958626,
                      "y": -5.142553050063725e-13,
                      "z": -54.66444778442383
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "49ioenqa",
                  "_$type": "Sprite3D",
                  "name": "Plane_184",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 27.81782710958626,
                      "y": -5.142553050063725e-13,
                      "z": -67.90202331542969
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ij75vbrd",
                  "_$type": "Sprite3D",
                  "name": "Plane_189",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.500136058965836,
                      "y": -5.142553050063725e-13,
                      "z": 49.6121940612793
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "zd34ix55",
                  "_$type": "Sprite3D",
                  "name": "Plane_190",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.500136058965836,
                      "y": -5.142553050063725e-13,
                      "z": 36.67631149291992
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "a64r05j9",
                  "_$type": "Sprite3D",
                  "name": "Plane_191",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.500136058965836,
                      "y": -5.142553050063725e-13,
                      "z": 23.43873405456543
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "1tpwddzp",
                  "_$type": "Sprite3D",
                  "name": "Plane_192",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.500136058965836,
                      "y": -5.142553050063725e-13,
                      "z": -80.8379135131836
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "d54k4n6x",
                  "_$type": "Sprite3D",
                  "name": "Plane_193",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.500136058965836,
                      "y": -5.142553050063725e-13,
                      "z": 10.150988578796387
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "wfx8ur3p",
                  "_$type": "Sprite3D",
                  "name": "Plane_194",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.500136058965836,
                      "y": -5.142553050063725e-13,
                      "z": -2.784893751144409
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "kwh4d0ao",
                  "_$type": "Sprite3D",
                  "name": "Plane_195",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.500136058965836,
                      "y": -5.142553050063725e-13,
                      "z": -16.022472381591797
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "f74eialc",
                  "_$type": "Sprite3D",
                  "name": "Plane_196",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.500136058965836,
                      "y": -5.142553050063725e-13,
                      "z": -28.958358764648438
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "b5iqw7ns",
                  "_$type": "Sprite3D",
                  "name": "Plane_197",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.500136058965836,
                      "y": -5.142553050063725e-13,
                      "z": -41.72856521606445
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "qon4bsih",
                  "_$type": "Sprite3D",
                  "name": "Plane_198",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.500136058965836,
                      "y": -5.142553050063725e-13,
                      "z": -54.66444778442383
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ssuap9xn",
                  "_$type": "Sprite3D",
                  "name": "Plane_199",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.500136058965836,
                      "y": -5.142553050063725e-13,
                      "z": -67.90202331542969
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "elqsly8c",
                  "_$type": "Sprite3D",
                  "name": "Plane_204",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 54.48576227966896,
                      "y": -5.142553050063725e-13,
                      "z": 49.6121940612793
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "qpzsc3q2",
                  "_$type": "Sprite3D",
                  "name": "Plane_205",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 54.48576227966896,
                      "y": -5.142553050063725e-13,
                      "z": 36.67631149291992
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "pcpumywp",
                  "_$type": "Sprite3D",
                  "name": "Plane_206",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 54.48576227966896,
                      "y": -5.142553050063725e-13,
                      "z": 23.43873405456543
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "mmtbiolw",
                  "_$type": "Sprite3D",
                  "name": "Plane_207",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 54.48576227966896,
                      "y": -5.142553050063725e-13,
                      "z": -80.8379135131836
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "9yb7x5l9",
                  "_$type": "Sprite3D",
                  "name": "Plane_208",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 54.48576227966896,
                      "y": -5.142553050063725e-13,
                      "z": 10.150988578796387
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "o52q4hup",
                  "_$type": "Sprite3D",
                  "name": "Plane_209",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 54.48576227966896,
                      "y": -5.142553050063725e-13,
                      "z": -2.784893751144409
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "m5g04c1b",
                  "_$type": "Sprite3D",
                  "name": "Plane_210",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 54.48576227966896,
                      "y": -5.142553050063725e-13,
                      "z": -16.022472381591797
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "r1mt8ww8",
                  "_$type": "Sprite3D",
                  "name": "Plane_211",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 54.48576227966896,
                      "y": -5.142553050063725e-13,
                      "z": -28.958358764648438
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "h8cp9bj1",
                  "_$type": "Sprite3D",
                  "name": "Plane_212",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 54.48576227966896,
                      "y": -5.142553050063725e-13,
                      "z": -41.72856521606445
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "57t3w2hc",
                  "_$type": "Sprite3D",
                  "name": "Plane_213",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 54.48576227966896,
                      "y": -5.142553050063725e-13,
                      "z": -54.66444778442383
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "8bq8t90o",
                  "_$type": "Sprite3D",
                  "name": "Plane_214",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 54.48576227966896,
                      "y": -5.142553050063725e-13,
                      "z": -67.90202331542969
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "zvfgms8m",
                  "_$type": "Sprite3D",
                  "name": "Plane_217",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 68.83971887404746,
                      "y": -5.142553050063725e-13,
                      "z": 75.31829071044922
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "c2nxq854",
                  "_$type": "Sprite3D",
                  "name": "Plane_218",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 68.83971887404746,
                      "y": -5.142553050063725e-13,
                      "z": 62.38240051269531
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "hr2zqv5h",
                  "_$type": "Sprite3D",
                  "name": "Plane_219",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 68.83971887404746,
                      "y": -5.142553050063725e-13,
                      "z": 49.6121940612793
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "o30sbbnd",
                  "_$type": "Sprite3D",
                  "name": "Plane_220",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 68.83971887404746,
                      "y": -5.142553050063725e-13,
                      "z": 36.67631149291992
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "g47zyc05",
                  "_$type": "Sprite3D",
                  "name": "Plane_221",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 68.83971887404746,
                      "y": -5.142553050063725e-13,
                      "z": 23.43873405456543
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "n0kpax9g",
                  "_$type": "Sprite3D",
                  "name": "Plane_222",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 68.83971887404746,
                      "y": -5.142553050063725e-13,
                      "z": -79.17792528156698
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "2xuypzh0",
                  "_$type": "Sprite3D",
                  "name": "Plane_223",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 68.83971887404746,
                      "y": -5.142553050063725e-13,
                      "z": 10.150988578796387
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "kc286b6d",
                  "_$type": "Sprite3D",
                  "name": "Plane_224",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 68.83971887404746,
                      "y": -5.142553050063725e-13,
                      "z": -2.784893751144409
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "drw03aw2",
                  "_$type": "Sprite3D",
                  "name": "Plane_225",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 68.83971887404746,
                      "y": -5.142553050063725e-13,
                      "z": -16.022472381591797
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "iffoyjgm",
                  "_$type": "Sprite3D",
                  "name": "Plane_226",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 68.83971887404746,
                      "y": -5.142553050063725e-13,
                      "z": -28.958358764648438
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "sbafuue3",
                  "_$type": "Sprite3D",
                  "name": "Plane_227",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 68.83971887404746,
                      "y": -5.142553050063725e-13,
                      "z": -41.72856521606445
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "givqkgml",
                  "_$type": "Sprite3D",
                  "name": "Plane_228",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 68.83971887404746,
                      "y": -5.142553050063725e-13,
                      "z": -54.66444778442383
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "lcskzium",
                  "_$type": "Sprite3D",
                  "name": "Plane_229",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 68.83971887404746,
                      "y": -5.142553050063725e-13,
                      "z": -67.90202331542969
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "5luk64jk",
                  "_$type": "Sprite3D",
                  "name": "Plane_232",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 81.82534509475059,
                      "y": -5.142553050063725e-13,
                      "z": 75.31829071044922
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "1wmhqiip",
                  "_$type": "Sprite3D",
                  "name": "Plane_233",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 81.82534509475059,
                      "y": -5.142553050063725e-13,
                      "z": 62.38240051269531
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "e2wtqqa5",
                  "_$type": "Sprite3D",
                  "name": "Plane_234",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 81.82534509475059,
                      "y": -5.142553050063725e-13,
                      "z": 49.6121940612793
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "0flvygp0",
                  "_$type": "Sprite3D",
                  "name": "Plane_235",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 81.82534509475059,
                      "y": -5.142553050063725e-13,
                      "z": 36.67631149291992
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "yfgbzjs8",
                  "_$type": "Sprite3D",
                  "name": "Plane_236",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 81.82534509475059,
                      "y": -5.142553050063725e-13,
                      "z": 23.43873405456543
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "40ckoj6d",
                  "_$type": "Sprite3D",
                  "name": "Plane_237",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 81.82534509475059,
                      "y": -5.142553050063725e-13,
                      "z": -80.8379135131836
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "5pqq6m2f",
                  "_$type": "Sprite3D",
                  "name": "Plane_238",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 81.82534509475059,
                      "y": -5.142553050063725e-13,
                      "z": 10.150988578796387
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "6hxhgu19",
                  "_$type": "Sprite3D",
                  "name": "Plane_239",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 81.82534509475059,
                      "y": -5.142553050063725e-13,
                      "z": -2.784893751144409
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "qnuasisy",
                  "_$type": "Sprite3D",
                  "name": "Plane_240",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 81.82534509475059,
                      "y": -5.142553050063725e-13,
                      "z": -16.022472381591797
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "l8zb2b37",
                  "_$type": "Sprite3D",
                  "name": "Plane_241",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 81.82534509475059,
                      "y": -5.142553050063725e-13,
                      "z": -28.958358764648438
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "rvse5fjy",
                  "_$type": "Sprite3D",
                  "name": "Plane_242",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 81.82534509475059,
                      "y": -5.142553050063725e-13,
                      "z": -41.72856521606445
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "429tspr2",
                  "_$type": "Sprite3D",
                  "name": "Plane_243",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 81.82534509475059,
                      "y": -5.142553050063725e-13,
                      "z": -54.66444778442383
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "mhfnehfn",
                  "_$type": "Sprite3D",
                  "name": "Plane_244",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 81.82534509475059,
                      "y": -5.142553050063725e-13,
                      "z": -67.90202331542969
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "rtvofngl",
                  "_$type": "Sprite3D",
                  "name": "Plane_247",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.16671521841886,
                      "y": -5.142553050063725e-13,
                      "z": 75.31829071044922
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "p19klvqj",
                  "_$type": "Sprite3D",
                  "name": "Plane_248",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.16671521841886,
                      "y": -5.142553050063725e-13,
                      "z": 62.38240051269531
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "mprgsz7j",
                  "_$type": "Sprite3D",
                  "name": "Plane_249",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.16671521841886,
                      "y": -5.142553050063725e-13,
                      "z": 49.6121940612793
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "q4cu2dz6",
                  "_$type": "Sprite3D",
                  "name": "Plane_250",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.16671521841886,
                      "y": -5.142553050063725e-13,
                      "z": 36.67631149291992
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "di1s973c",
                  "_$type": "Sprite3D",
                  "name": "Plane_251",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.16671521841886,
                      "y": -5.142553050063725e-13,
                      "z": 23.43873405456543
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "mzbe8ax2",
                  "_$type": "Sprite3D",
                  "name": "Plane_252",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.16671521841886,
                      "y": -5.142553050063725e-13,
                      "z": -80.8379135131836
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "q2bfpvx3",
                  "_$type": "Sprite3D",
                  "name": "Plane_253",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.16671521841886,
                      "y": -5.142553050063725e-13,
                      "z": 10.150988578796387
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "5brten5s",
                  "_$type": "Sprite3D",
                  "name": "Plane_254",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.16671521841886,
                      "y": -5.142553050063725e-13,
                      "z": -2.784893751144409
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "hl4kxq26",
                  "_$type": "Sprite3D",
                  "name": "Plane_255",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.16671521841886,
                      "y": -5.142553050063725e-13,
                      "z": -16.022472381591797
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "mx53l6xt",
                  "_$type": "Sprite3D",
                  "name": "Plane_256",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.16671521841886,
                      "y": -5.142553050063725e-13,
                      "z": -28.958358764648438
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "jjy49f9g",
                  "_$type": "Sprite3D",
                  "name": "Plane_257",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.16671521841886,
                      "y": -5.142553050063725e-13,
                      "z": -41.72856521606445
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "gq654zwg",
                  "_$type": "Sprite3D",
                  "name": "Plane_258",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.16671521841886,
                      "y": -5.142553050063725e-13,
                      "z": -54.66444778442383
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "o5ug0p78",
                  "_$type": "Sprite3D",
                  "name": "Plane_259",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.16671521841886,
                      "y": -5.142553050063725e-13,
                      "z": -67.90202331542969
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "5v30rimj",
                  "_$type": "Sprite3D",
                  "name": "Plane_262",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 108.15234143912198,
                      "y": -5.142553050063725e-13,
                      "z": 75.31829071044922
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ri61s9pr",
                  "_$type": "Sprite3D",
                  "name": "Plane_263",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 108.15234143912198,
                      "y": -5.142553050063725e-13,
                      "z": 62.38240051269531
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "763re9wj",
                  "_$type": "Sprite3D",
                  "name": "Plane_264",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 108.15234143912198,
                      "y": -5.142553050063725e-13,
                      "z": 49.6121940612793
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "f17lw5ha",
                  "_$type": "Sprite3D",
                  "name": "Plane_265",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 108.15234143912198,
                      "y": -5.142553050063725e-13,
                      "z": 36.67631149291992
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "tx48ulyd",
                  "_$type": "Sprite3D",
                  "name": "Plane_266",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 108.15234143912198,
                      "y": -5.142553050063725e-13,
                      "z": 23.43873405456543
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "7nc85dj3",
                  "_$type": "Sprite3D",
                  "name": "Plane_267",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 108.15234143912198,
                      "y": -5.142553050063725e-13,
                      "z": -80.8379135131836
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "g0vsl5q7",
                  "_$type": "Sprite3D",
                  "name": "Plane_268",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 108.15234143912198,
                      "y": -5.142553050063725e-13,
                      "z": 10.150988578796387
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "uk4kddif",
                  "_$type": "Sprite3D",
                  "name": "Plane_269",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 108.15234143912198,
                      "y": -5.142553050063725e-13,
                      "z": -2.784893751144409
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "qgthzuao",
                  "_$type": "Sprite3D",
                  "name": "Plane_270",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 108.15234143912198,
                      "y": -5.142553050063725e-13,
                      "z": -16.022472381591797
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "xxxelvr1",
                  "_$type": "Sprite3D",
                  "name": "Plane_271",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 108.15234143912198,
                      "y": -5.142553050063725e-13,
                      "z": -28.958358764648438
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "v2ddl18b",
                  "_$type": "Sprite3D",
                  "name": "Plane_272",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 108.15234143912198,
                      "y": -5.142553050063725e-13,
                      "z": -41.72856521606445
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "7znvj567",
                  "_$type": "Sprite3D",
                  "name": "Plane_273",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 108.15234143912198,
                      "y": -5.142553050063725e-13,
                      "z": -54.66444778442383
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "932y99uu",
                  "_$type": "Sprite3D",
                  "name": "Plane_274",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 108.15234143912198,
                      "y": -5.142553050063725e-13,
                      "z": -67.90202331542969
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "qa17ffjf",
                  "_$type": "Sprite3D",
                  "name": "Plane_277",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 107.99583133082078,
                      "y": -5.142553050063725e-13,
                      "z": 88.22572321414796
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "c8gdfotd",
                  "_$type": "Sprite3D",
                  "name": "Plane_278",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 118.0262876223149,
                      "y": -5.142553050063725e-13,
                      "z": 62.38240051269531
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "xe17ik7v",
                  "_$type": "Sprite3D",
                  "name": "Plane_279",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 118.0262876223149,
                      "y": -5.142553050063725e-13,
                      "z": 49.6121940612793
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "yhdqawrp",
                  "_$type": "Sprite3D",
                  "name": "Plane_280",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 118.0262876223149,
                      "y": -5.142553050063725e-13,
                      "z": 36.67631149291992
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "8bjdlbzr",
                  "_$type": "Sprite3D",
                  "name": "Plane_281",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 118.0262876223149,
                      "y": -5.142553050063725e-13,
                      "z": 23.43873405456543
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "fhalzdws",
                  "_$type": "Sprite3D",
                  "name": "Plane_282",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 122.33128609635264,
                      "y": -5.142553050063725e-13,
                      "z": -80.8379135131836
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "jgdi3kxr",
                  "_$type": "Sprite3D",
                  "name": "Plane_283",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 122.33128609635264,
                      "y": -5.142553050063725e-13,
                      "z": 10.150988578796387
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "1pjjfbpb",
                  "_$type": "Sprite3D",
                  "name": "Plane_284",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 122.33128609635264,
                      "y": -5.142553050063725e-13,
                      "z": -2.784893751144409
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "avkypwpf",
                  "_$type": "Sprite3D",
                  "name": "Plane_285",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 122.33128609635264,
                      "y": -5.142553050063725e-13,
                      "z": -16.022472381591797
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "y3gsn99z",
                  "_$type": "Sprite3D",
                  "name": "Plane_286",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 118.29226576474301,
                      "y": -5.142553050063725e-13,
                      "z": -28.958358764648438
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "8ain9ysg",
                  "_$type": "Sprite3D",
                  "name": "Plane_287",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 118.29226576474301,
                      "y": -5.142553050063725e-13,
                      "z": -41.72856521606445
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "p4kuh93v",
                  "_$type": "Sprite3D",
                  "name": "Plane_288",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 118.29226576474301,
                      "y": -5.142553050063725e-13,
                      "z": -54.66444778442383
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "0kxrkgvq",
                  "_$type": "Sprite3D",
                  "name": "Plane_289",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 122.33128609635264,
                      "y": -5.142553050063725e-13,
                      "z": -67.90202331542969
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "m9f9fuaj",
                  "_$type": "Sprite3D",
                  "name": "Plane_297",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 135.31691231705577,
                      "y": -5.142553050063725e-13,
                      "z": -80.8379135131836
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "pa0k4ipp",
                  "_$type": "Sprite3D",
                  "name": "Plane_298",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 135.31691231705577,
                      "y": -5.142553050063725e-13,
                      "z": 10.150988578796387
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "9xl0ygx9",
                  "_$type": "Sprite3D",
                  "name": "Plane_299",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 135.31691231705577,
                      "y": -5.142553050063725e-13,
                      "z": -2.784893751144409
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "sef29aw3",
                  "_$type": "Sprite3D",
                  "name": "Plane_300",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 135.31691231705577,
                      "y": -5.142553050063725e-13,
                      "z": -16.022472381591797
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "2am3qxka",
                  "_$type": "Sprite3D",
                  "name": "Plane_304",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 135.31691231705577,
                      "y": -5.142553050063725e-13,
                      "z": -67.90202331542969
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "df7q21fa",
                  "_$type": "Sprite3D",
                  "name": "Plane_313",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 149.64586913190487,
                      "y": -5.142553050063725e-13,
                      "z": 10.150988578796387
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "946kdcua",
                  "_$type": "Sprite3D",
                  "name": "Plane_314",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 149.64586913190487,
                      "y": -5.142553050063725e-13,
                      "z": -2.784893751144409
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "7al05ly2",
                  "_$type": "Sprite3D",
                  "name": "Plane_315",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 149.64586913190487,
                      "y": -5.142553050063725e-13,
                      "z": -16.022472381591797
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "6bdiqdv1",
                  "_$type": "Sprite3D",
                  "name": "Plane_328",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 162.631495352608,
                      "y": -5.142553050063725e-13,
                      "z": 10.150988578796387
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "242nejjw",
                  "_$type": "Sprite3D",
                  "name": "Plane_329",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 162.631495352608,
                      "y": -5.142553050063725e-13,
                      "z": -2.784893751144409
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "w19r0qzh",
                  "_$type": "Sprite3D",
                  "name": "Plane_330",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 162.631495352608,
                      "y": -5.142553050063725e-13,
                      "z": -16.022472381591797
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ecwqshro",
                  "_$type": "Sprite3D",
                  "name": "Plane_341",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -145.58222673892362,
                      "y": -5.142553050063725e-13,
                      "z": 17.441648738186117
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "hyw14qvv",
                  "_$type": "Sprite3D",
                  "name": "Plane_344",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -142.3784833825494,
                      "y": -5.142553050063725e-13,
                      "z": -7.8089990909596025
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "k833mf2a",
                  "_$type": "Sprite3D",
                  "name": "Plane_356",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -132.5966005182205,
                      "y": -5.142553050063725e-13,
                      "z": 17.441648738186117
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "39xo9rnm",
                  "_$type": "Sprite3D",
                  "name": "Plane_357",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -132.5966005182205,
                      "y": -5.142553050063725e-13,
                      "z": -80.8379135131836
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "3q7ey40l",
                  "_$type": "Sprite3D",
                  "name": "Plane_359",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -132.5966005182205,
                      "y": -5.142553050063725e-13,
                      "z": -2.784893751144409
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "frdj572d",
                  "_$type": "Sprite3D",
                  "name": "Plane_360",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -132.5966005182205,
                      "y": -5.142553050063725e-13,
                      "z": -14.563488901550762
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "zu488kop",
                  "_$type": "Sprite3D",
                  "name": "Plane_361",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -132.5966005182205,
                      "y": -5.142553050063725e-13,
                      "z": -28.958358764648438
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "wgegxv7z",
                  "_$type": "Sprite3D",
                  "name": "Plane_362",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -132.5966005182205,
                      "y": -5.142553050063725e-13,
                      "z": -41.72856521606445
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "rpzor0i3",
                  "_$type": "Sprite3D",
                  "name": "Plane_363",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -132.5966005182205,
                      "y": -5.142553050063725e-13,
                      "z": -54.66444778442383
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "wzmtaeyg",
                  "_$type": "Sprite3D",
                  "name": "Plane_364",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -132.5966005182205,
                      "y": -5.142553050063725e-13,
                      "z": -67.90202331542969
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "w3w6pj8w",
                  "_$type": "Sprite3D",
                  "name": "Plane_365",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -151.93606074043623,
                      "y": -5.142553050063725e-13,
                      "z": -2.784893751144409
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "igxaff6w",
                  "_$type": "Sprite3D",
                  "name": "Plane_366",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -151.93606074043623,
                      "y": -5.142553050063725e-13,
                      "z": -14.563488960266113
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "qzevxak9",
                  "_$type": "Sprite3D",
                  "name": "Plane_367",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -164.92168696113936,
                      "y": -5.142553050063725e-13,
                      "z": -2.784893751144409
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "v4b77kr8",
                  "_$type": "Sprite3D",
                  "name": "Plane_368",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -164.92168696113936,
                      "y": -5.142553050063725e-13,
                      "z": -14.563488960266113
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "tbg3mhdj",
                  "_$type": "Sprite3D",
                  "name": "Plane_369",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -160.97417157364245,
                      "y": -5.142553050063725e-13,
                      "z": 10.428315806886808
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "hyg5fdyy",
                  "_$type": "Sprite3D",
                  "name": "Plane_370",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -160.97417157364245,
                      "y": -5.142553050063725e-13,
                      "z": 22.20691101600851
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ezry81qz",
                  "_$type": "Sprite3D",
                  "name": "Plane_371",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 54.48576354980469,
                      "y": 0.5352060183486289,
                      "z": -101.25310164455387
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "o6q9jijr",
                  "_$type": "Sprite3D",
                  "name": "Plane_372",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 44.94603996676969,
                      "y": -5.142553050063725e-13,
                      "z": -98.61883048449361
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ffmty6qm",
                  "_$type": "Sprite3D",
                  "name": "Plane_373",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 68.8397216796875,
                      "y": -5.142553050063725e-13,
                      "z": -101.25310164455387
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "qk3xcea2",
                  "_$type": "Sprite3D",
                  "name": "Plane_374",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 68.8397216796875,
                      "y": -5.142553050063725e-13,
                      "z": -88.31721144679996
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "kgxo3960",
                  "_$type": "Sprite3D",
                  "name": "Plane_376",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -61.12740310154363,
                      "y": -5.142553050063725e-13,
                      "z": -96.99111298568998
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "1qo5jkeh",
                  "_$type": "Sprite3D",
                  "name": "Plane_378",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -48.1417768808405,
                      "y": -5.142553050063725e-13,
                      "z": -96.99111298568998
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "p0otsu1d",
                  "_$type": "Sprite3D",
                  "name": "Plane_379",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -72.57523881603848,
                      "y": -5.142553050063725e-13,
                      "z": -96.9911117553711
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ui9fitpc",
                  "_$type": "Sprite3D",
                  "name": "Plane_380",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -119.10506011303778,
                      "y": 1.6768808563938364e-12,
                      "z": -66.05144510542416
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 7,
                      "y": 1,
                      "z": 7
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 3
                    }
                  ]
                },
                {
                  "_$id": "ikoc2fq3",
                  "_$type": "Sprite3D",
                  "name": "Plane_381",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -121.48131664174758,
                      "y": 1.6768808563938364e-12,
                      "z": 1.0778998440519878
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 7,
                      "y": 1,
                      "z": 7
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 3
                    }
                  ]
                },
                {
                  "_$id": "dtgetgtq",
                  "_$type": "Sprite3D",
                  "name": "Plane_382",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -101.28310664078754,
                      "y": 1.6768808563938364e-12,
                      "z": 46.22683971369521
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 7,
                      "y": 1,
                      "z": 7
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 3
                    }
                  ]
                },
                {
                  "_$id": "u62r86b1",
                  "_$type": "Sprite3D",
                  "name": "Plane_383",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -100.09497400334496,
                      "y": 1.6768808563938364e-12,
                      "z": 90.18765087557671
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 7,
                      "y": 1,
                      "z": 7
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 3
                    }
                  ]
                },
                {
                  "_$id": "klh50ryd",
                  "_$type": "Sprite3D",
                  "name": "Plane_384",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -60.292617728877204,
                      "y": 1.6768808563938364e-12,
                      "z": 23.058307736504176
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 7,
                      "y": 1,
                      "z": 7
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 3
                    }
                  ]
                },
                {
                  "_$id": "9eyn41q2",
                  "_$type": "Sprite3D",
                  "name": "Plane_385",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2.0742507608773053,
                      "y": 1.6768808563938364e-12,
                      "z": 2.2660326937389073
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 7,
                      "y": 1,
                      "z": 7
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 3
                    }
                  ]
                },
                {
                  "_$id": "mvdudwcb",
                  "_$type": "Sprite3D",
                  "name": "Plane_386",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2.0742506980896067,
                      "y": 1.6768808563938364e-12,
                      "z": -38.724452213483765
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 7,
                      "y": 1,
                      "z": 7
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 3
                    }
                  ]
                },
                {
                  "_$id": "6fni04mx",
                  "_$type": "Sprite3D",
                  "name": "Plane_387",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2.66831566785266,
                      "y": 1.6768808563938364e-12,
                      "z": 49.79123183160861
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 7,
                      "y": 1,
                      "z": 7
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 3
                    }
                  ]
                },
                {
                  "_$id": "em90v9jn",
                  "_$type": "Sprite3D",
                  "name": "Plane_388",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 66.24322084369723,
                      "y": 1.6768808563938364e-12,
                      "z": 33.75147809825565
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 7,
                      "y": 1,
                      "z": 7
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 3
                    }
                  ]
                },
                {
                  "_$id": "fu1fbz08",
                  "_$type": "Sprite3D",
                  "name": "Plane_389",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 67.43134740778785,
                      "y": 1.6768808563938364e-12,
                      "z": -10.209333614824295
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 7,
                      "y": 1,
                      "z": 7
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 3
                    }
                  ]
                },
                {
                  "_$id": "04e597sd",
                  "_$type": "Sprite3D",
                  "name": "Plane_390",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -66.82733245885301,
                      "y": 1.6768808563938364e-12,
                      "z": -39.3185183553545
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 7,
                      "y": 1,
                      "z": 7
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 3
                    }
                  ]
                },
                {
                  "_$id": "mxqslm5s",
                  "_$type": "Sprite3D",
                  "name": "Plane_391",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -44.858596098451784,
                      "y": 1.6768808563938364e-12,
                      "z": -67.65500582046973
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 7,
                      "y": 1,
                      "z": 7
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 3
                    }
                  ]
                },
                {
                  "_$id": "8dflhfo2",
                  "_$type": "Sprite3D",
                  "name": "Plane_392",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 105.28843637651131,
                      "y": 1.9042545318370685e-12,
                      "z": -66.13836963607952
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 7,
                      "y": 1,
                      "z": 7
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 3
                    }
                  ]
                },
                {
                  "_$id": "wf5p61f5",
                  "_$type": "Sprite3D",
                  "name": "Plane_393",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 106.80507358841399,
                      "y": 2.3590018827235326e-12,
                      "z": -6.989532567734457
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 7,
                      "y": 1,
                      "z": 7
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 3
                    }
                  ]
                },
                {
                  "_$id": "y8v989px",
                  "_$type": "Sprite3D",
                  "name": "Plane_394",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 107.56339494850388,
                      "y": 2.7000623958883807e-12,
                      "z": 72.63389809091076
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 7,
                      "y": 1,
                      "z": 7
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 3
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "aooignx1",
              "_$type": "Sprite3D",
              "name": "PlayerBorn",
              "_$child": [
                {
                  "_$id": "spxwg9ky",
                  "_$type": "Sprite3D",
                  "name": "Plane",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -101.38367212939427,
                      "y": 3.197442310920451e-14,
                      "z": 47.354458360852206
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 5,
                      "y": 1,
                      "z": 5
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "79983f09-e1ab-47b6-b3ad-c4a6f7fc5e7b",
                      "scriptPath": "../src/Game/Scene/Components/Point_PlayerBorn.ts"
                    }
                  ]
                },
                {
                  "_$id": "ydovuol7",
                  "_$type": "Sprite3D",
                  "name": "Plane_1",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -99.03387751264404,
                      "y": 3.197442310920451e-14,
                      "z": 2.3320442515006903
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 5,
                      "y": 1,
                      "z": 5
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "79983f09-e1ab-47b6-b3ad-c4a6f7fc5e7b",
                      "scriptPath": "../src/Game/Scene/Components/Point_PlayerBorn.ts"
                    }
                  ]
                },
                {
                  "_$id": "zzjakgcb",
                  "_$type": "Sprite3D",
                  "name": "Plane_2",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -58.789825439453125,
                      "y": 3.197442310920451e-14,
                      "z": 1.753211710282386
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 5,
                      "y": 1,
                      "z": 5
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "79983f09-e1ab-47b6-b3ad-c4a6f7fc5e7b",
                      "scriptPath": "../src/Game/Scene/Components/Point_PlayerBorn.ts"
                    }
                  ]
                },
                {
                  "_$id": "xvvr8v4c",
                  "_$type": "Sprite3D",
                  "name": "Plane_3",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -7.85764741897583,
                      "y": 6.039613253960852e-14,
                      "z": 0.7137600019081045
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 5,
                      "y": 1,
                      "z": 5
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "79983f09-e1ab-47b6-b3ad-c4a6f7fc5e7b",
                      "scriptPath": "../src/Game/Scene/Components/Point_PlayerBorn.ts"
                    }
                  ]
                },
                {
                  "_$id": "vv22xpcf",
                  "_$type": "Sprite3D",
                  "name": "Plane_4",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -44.59770556139666,
                      "y": 8.881784197001252e-14,
                      "z": -39.20781009331219
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 5,
                      "y": 1,
                      "z": 5
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "79983f09-e1ab-47b6-b3ad-c4a6f7fc5e7b",
                      "scriptPath": "../src/Game/Scene/Components/Point_PlayerBorn.ts"
                    }
                  ]
                },
                {
                  "_$id": "rh4numlx",
                  "_$type": "Sprite3D",
                  "name": "Plane_5",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -81.02402281960849,
                      "y": 2.0250467969162855e-13,
                      "z": -47.71912384033203
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 5,
                      "y": 1,
                      "z": 5
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "79983f09-e1ab-47b6-b3ad-c4a6f7fc5e7b",
                      "scriptPath": "../src/Game/Scene/Components/Point_PlayerBorn.ts"
                    }
                  ]
                },
                {
                  "_$id": "36u9oojl",
                  "_$type": "Sprite3D",
                  "name": "Plane_6",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -120.12654167311727,
                      "y": -7.243983191074221e-12,
                      "z": -50.99467849731445
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 5,
                      "y": 1,
                      "z": 5
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "79983f09-e1ab-47b6-b3ad-c4a6f7fc5e7b",
                      "scriptPath": "../src/Game/Scene/Components/Point_PlayerBorn.ts"
                    }
                  ]
                },
                {
                  "_$id": "xld2mcss",
                  "_$type": "Sprite3D",
                  "name": "Plane_7",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -32.19171831715645,
                      "y": 6.039613253960852e-14,
                      "z": 22.90157826343416
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 5,
                      "y": 1,
                      "z": 5
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "79983f09-e1ab-47b6-b3ad-c4a6f7fc5e7b",
                      "scriptPath": "../src/Game/Scene/Components/Point_PlayerBorn.ts"
                    }
                  ]
                },
                {
                  "_$id": "zu27pwsx",
                  "_$type": "Sprite3D",
                  "name": "Plane_8",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 66.72127852106243,
                      "y": 1.3109513474773848e-12,
                      "z": -22.363102764318384
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 5,
                      "y": 1,
                      "z": 5
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "79983f09-e1ab-47b6-b3ad-c4a6f7fc5e7b",
                      "scriptPath": "../src/Game/Scene/Components/Point_PlayerBorn.ts"
                    }
                  ]
                },
                {
                  "_$id": "27vlaq1v",
                  "_$type": "Sprite3D",
                  "name": "Plane_9",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 34.27730178833008,
                      "y": 1.4246381851990009e-12,
                      "z": -38.97931178520964
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 5,
                      "y": 1,
                      "z": 5
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "79983f09-e1ab-47b6-b3ad-c4a6f7fc5e7b",
                      "scriptPath": "../src/Game/Scene/Components/Point_PlayerBorn.ts"
                    }
                  ]
                },
                {
                  "_$id": "v0n8zlss",
                  "_$type": "Sprite3D",
                  "name": "Plane_10",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 34.462433855962686,
                      "y": 1.765698698363849e-12,
                      "z": 15.855631394058914
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 5,
                      "y": 1,
                      "z": 5
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "79983f09-e1ab-47b6-b3ad-c4a6f7fc5e7b",
                      "scriptPath": "../src/Game/Scene/Components/Point_PlayerBorn.ts"
                    }
                  ]
                },
                {
                  "_$id": "sg73pflu",
                  "_$type": "Sprite3D",
                  "name": "Plane_11",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 106.02775798861593,
                      "y": 1.538325022920617e-12,
                      "z": -61.38600128102101
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 5,
                      "y": 1,
                      "z": 5
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "79983f09-e1ab-47b6-b3ad-c4a6f7fc5e7b",
                      "scriptPath": "../src/Game/Scene/Components/Point_PlayerBorn.ts"
                    }
                  ]
                },
                {
                  "_$id": "kxgstj0t",
                  "_$type": "Sprite3D",
                  "name": "Plane_12",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 66.32032775878906,
                      "y": 2.220446049250313e-12,
                      "z": 49.432532743782055
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 5,
                      "y": 1,
                      "z": 5
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "79983f09-e1ab-47b6-b3ad-c4a6f7fc5e7b",
                      "scriptPath": "../src/Game/Scene/Components/Point_PlayerBorn.ts"
                    }
                  ]
                },
                {
                  "_$id": "bn57mi2w",
                  "_$type": "Sprite3D",
                  "name": "Plane_13",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 105.93348693847656,
                      "y": 2.675193400136777e-12,
                      "z": 31.552124437213344
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 5,
                      "y": 1,
                      "z": 5
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "79983f09-e1ab-47b6-b3ad-c4a6f7fc5e7b",
                      "scriptPath": "../src/Game/Scene/Components/Point_PlayerBorn.ts"
                    }
                  ]
                },
                {
                  "_$id": "71opa2h3",
                  "_$type": "Sprite3D",
                  "name": "Plane_14",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 106.28865427949337,
                      "y": 2.675193400136777e-12,
                      "z": -9.272432472579073
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 5,
                      "y": 1,
                      "z": 5
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "79983f09-e1ab-47b6-b3ad-c4a6f7fc5e7b",
                      "scriptPath": "../src/Game/Scene/Components/Point_PlayerBorn.ts"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "qp4uorih",
              "_$type": "Sprite3D",
              "name": "ItemBorn",
              "_$child": [
                {
                  "_$id": "7vj8onii",
                  "_$type": "Sprite3D",
                  "name": "Plane",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -18.27755815576861,
                      "y": 3.552713678800501e-15,
                      "z": 2.721954087214897
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 5,
                      "y": 1,
                      "z": 5
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "6kv55rok",
                  "_$type": "Sprite3D",
                  "name": "Plane_1",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -100.66625407872289,
                      "y": 3.552713678800501e-15,
                      "z": 76.55230712890625
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 5,
                      "y": 1,
                      "z": 5
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "ozfcj8mt",
                  "_$type": "Sprite3D",
                  "name": "Plane_2",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -80.77906332986467,
                      "y": 2.3092638912203256e-13,
                      "z": -66.81103515625
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 5,
                      "y": 1,
                      "z": 5
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "yh8rcl0v",
                  "_$type": "Sprite3D",
                  "name": "Plane_3",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 66.18720581494594,
                      "y": 5.719869022868806e-13,
                      "z": -66.96964596650261
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 5,
                      "y": 1,
                      "z": 5
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "4ocu6ewa",
                  "_$type": "Sprite3D",
                  "name": "Plane_4",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 106.02233195459382,
                      "y": 5.719869022868806e-13,
                      "z": 58.98531632214275
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 5,
                      "y": 1,
                      "z": 5
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "k9inl1fn",
                  "_$type": "Sprite3D",
                  "name": "Plane_5",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.6213430645986424,
                      "y": 5.719869022868806e-13,
                      "z": 33.06407413683405
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 5,
                      "y": 1,
                      "z": 5
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "t87pc8h4",
                  "_$type": "Sprite3D",
                  "name": "Plane_6",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2.9778909912566363,
                      "y": 5.719869022868806e-13,
                      "z": -16.97726058959961
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 5,
                      "y": 1,
                      "z": 5
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "x1dtzs1b",
                  "_$type": "Sprite3D",
                  "name": "Plane_7",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -44.631465911865234,
                      "y": 3.552713678800501e-15,
                      "z": 22.65062941430307
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 5,
                      "y": 1,
                      "z": 5
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
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
  ]
}