{
  "_$ver": 1,
  "_$id": "f8t87jy8",
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
      "fogStart": 0,
      "fogEnd": 300,
      "fogColor": {
        "_$type": "Color",
        "r": 0.7019607843137254,
        "g": 0.7019607843137254,
        "b": 0.7019607843137254
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
          "_$id": "85805c18",
          "_$type": "Sprite3D",
          "name": "liang_2",
          "_$comp": [
            {
              "_$type": "e8f192ec-d9e8-4176-864f-af4349fa93bd",
              "scriptPath": "../src/Game/Scene/Components/Level_Scene.ts",
              "owner": {
                "_$ref": "85805c18"
              },
              "npcBorns": [
                {
                  "_$ref": "t3nvm2ww",
                  "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138"
                }
              ],
              "playerBorns": [
                {
                  "_$ref": "4xuzn8mx",
                  "_$type": "79983f09-e1ab-47b6-b3ad-c4a6f7fc5e7b"
                }
              ],
              "itemBorns": [
                {
                  "_$ref": "4dpdr3pk"
                }
              ],
              "buildings": [
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
                null,
                null
              ]
            }
          ],
          "_$child": [
            {
              "_$id": "qmq7welc",
              "_$type": "Sprite3D",
              "name": "Light",
              "_$child": [
                {
                  "_$id": "4u4ip5kc",
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
                      "x": -0.39713126196710286,
                      "y": 0.30997551921944466,
                      "z": 0.144543958452599,
                      "w": 0.8516507396391465
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.0000000124717343,
                      "y": 1.0000000081998608,
                      "z": 1.000000004743117
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
              "_$id": "xoa1nufj",
              "_$type": "Sprite3D",
              "name": "Range",
              "_$child": [
                {
                  "_$id": "tqtv5zos",
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
                              "x": 10.321496894587114,
                              "z": 1.307352493208441
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 198.3764595910352,
                              "y": 1,
                              "z": 188.39338325501757
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": -52.25248375665911,
                              "z": -97.6695137149905
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 73.8142195214992,
                              "y": 1,
                              "z": 13.058786425073507
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": 71.48369158135482,
                              "z": -98.3537064776858
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 76.08250759417828,
                              "y": 1,
                              "z": 13.79702197312318
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": 113.20639150150627,
                              "z": 24.04495612024669
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 10.617421471930555,
                              "y": 1,
                              "z": 44.746527553029075
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": 47.80591712613734,
                              "z": 99.7340364981035
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 27.070874151199675,
                              "y": 1,
                              "z": 11.881985402374355
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": -48.08625512272866,
                              "z": 98.47708310019962
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 27.231467973966772,
                              "y": 1,
                              "z": 12.861977920991038
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": -103.02257654764132,
                              "z": -61.93268236202243
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 31.671117683200265,
                              "y": 1,
                              "z": 45.943913810535086
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": -103.35792610859791,
                              "z": 82.30953554901998
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 32.639390093993,
                              "y": 1,
                              "z": 27.262467682595016
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
              "_$id": "akxxv2xy",
              "_$type": "Sprite3D",
              "name": "Ground",
              "isStatic": true,
              "_$child": [
                {
                  "_$id": "3pmmypud",
                  "_$type": "Sprite3D",
                  "name": "caodi",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": -0.09570576194475344
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "x48hnnn3",
                      "_$prefab": "9a0d994f-9681-4515-95c1-87ea2d675397",
                      "name": "Common_xiaolu_58",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 69.80858809065211,
                          "z": 46.16396713256836
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.5,
                          "y": 1,
                          "z": 1.8
                        }
                      }
                    },
                    {
                      "_$id": "7e8e039u",
                      "_$prefab": "29435cd6-dc2d-4fc9-a11a-afcfe0032750",
                      "name": "Common_xiaolu_59",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -71.880615234375,
                          "z": 40.975077312919595
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": -0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.4948106861426107,
                          "y": 1,
                          "z": 0.9223057243364245
                        }
                      }
                    },
                    {
                      "_$id": "vzklclwq",
                      "_$prefab": "29435cd6-dc2d-4fc9-a11a-afcfe0032750",
                      "name": "Common_xiaolu_63",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 19.88644027709961,
                          "z": -21.047433853149414
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.09,
                          "y": 1,
                          "z": 0.86
                        }
                      }
                    },
                    {
                      "_$id": "4raya9wh",
                      "_$prefab": "29435cd6-dc2d-4fc9-a11a-afcfe0032750",
                      "name": "Common_xiaolu_65",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -7.629395961761475,
                          "z": 58.54514694213867
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": -0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.8702820415879012,
                          "y": 1,
                          "z": 0.89
                        }
                      }
                    },
                    {
                      "_$id": "v6qqs8t8",
                      "_$prefab": "da7a493d-b90d-47f6-895c-e2a3e65fd873",
                      "name": "Common_chaodi03",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 25.86726713740605,
                          "z": 58.4656940763856
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.29,
                          "y": 1,
                          "z": 0.7099996
                        }
                      }
                    },
                    {
                      "_$id": "nlke6fbv",
                      "_$prefab": "3cfd2bb9-6a4e-4408-8157-027cb8c588db",
                      "name": "Common_chaodi04",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -47.863712310791016,
                          "y": -0.13798566042901858,
                          "z": 93.22099706057087
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.5,
                          "y": 1,
                          "z": 1.5
                        }
                      }
                    },
                    {
                      "_$id": "kdodqc7c",
                      "_$prefab": "5ce7b121-2e1e-4f66-be6c-4474e23261a2",
                      "name": "Common_xiaolu_67",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -21.877269741492064,
                          "z": 18.703060150146484
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.3399998,
                          "y": 1,
                          "z": 1.0699999
                        }
                      }
                    },
                    {
                      "_$id": "gb0m1f8k",
                      "_$prefab": "b3591dd7-8f65-4867-a7c2-3d38d905d193",
                      "name": "Common_chaodi009_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 10.527681350708008,
                          "z": -80.50583498782963
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.4799998,
                          "y": 1,
                          "z": 1.0599999
                        }
                      }
                    },
                    {
                      "_$id": "b2mwh344",
                      "_$prefab": "230d4888-0c4d-48e3-a346-bfc1e9210828",
                      "name": "Common_xiaolu_71",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 69.80858809065211,
                          "z": 4.617518901824951
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.1899998,
                          "y": 1,
                          "z": 1.8
                        }
                      }
                    },
                    {
                      "_$id": "irbwsx3o",
                      "_$prefab": "9a0d994f-9681-4515-95c1-87ea2d675397",
                      "name": "Common_xiaolu_72",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -53.03928756713867,
                          "z": -86.16793060302734
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.8665055248618783,
                          "y": 1,
                          "z": 1.822857142857143
                        }
                      }
                    },
                    {
                      "_$id": "gannj90h",
                      "_$prefab": "9a0d994f-9681-4515-95c1-87ea2d675397",
                      "name": "Common_xiaolu_74",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 69.80224806379664,
                          "z": -32.59207534790039
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.2799999,
                          "y": 1,
                          "z": 1.8
                        }
                      }
                    },
                    {
                      "_$id": "7bx2htfv",
                      "_$prefab": "da7a493d-b90d-47f6-895c-e2a3e65fd873",
                      "name": "Common_chaodi03_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -26.401473507392268,
                          "z": -51.40680905102855
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
                      }
                    },
                    {
                      "_$id": "cfte3kk8",
                      "_$prefab": "da7a493d-b90d-47f6-895c-e2a3e65fd873",
                      "name": "Common_chaodi03_3",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 24.109840647620814,
                          "z": -51.378616235686515
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
                          "z": 1.2899998
                        }
                      }
                    },
                    {
                      "_$id": "xtprleh0",
                      "_$prefab": "5ce7b121-2e1e-4f66-be6c-4474e23261a2",
                      "name": "Common_xiaolu_75",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 20.9269274,
                          "z": 18.703060150146484
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.3399998,
                          "y": 1,
                          "z": 1.0699999
                        }
                      }
                    },
                    {
                      "_$id": "6dwflw64",
                      "_$prefab": "29435cd6-dc2d-4fc9-a11a-afcfe0032750",
                      "name": "Common_xiaolu_76",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 55.57685089111328,
                          "z": -85.84712982177734
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.055299539170507,
                          "y": 1,
                          "z": 0.9193678665496047
                        }
                      }
                    },
                    {
                      "_$id": "yefpvtk9",
                      "_$prefab": "29435cd6-dc2d-4fc9-a11a-afcfe0032750",
                      "name": "Common_xiaolu_77",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -71.59237948228487,
                          "z": -43.00006103515625
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.9028925619834711,
                          "y": 1,
                          "z": 0.76
                        }
                      }
                    },
                    {
                      "_$id": "l6yv297w",
                      "_$prefab": "3cfd2bb9-6a4e-4408-8157-027cb8c588db",
                      "name": "Common_chaodi04_1",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 46.5435676574707,
                          "y": -0.001635697079425541,
                          "z": 93.20772532206651
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.5,
                          "y": 1,
                          "z": 1.5
                        }
                      }
                    },
                    {
                      "_$id": "033lr2x6",
                      "_$prefab": "29435cd6-dc2d-4fc9-a11a-afcfe0032750",
                      "name": "Common_xiaolu_79",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -22.403516552222776,
                          "z": -21.047433853149414
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.09,
                          "y": 1,
                          "z": 0.86
                        }
                      }
                    },
                    {
                      "_$id": "tubhgcn3",
                      "_$prefab": "da7a493d-b90d-47f6-895c-e2a3e65fd873",
                      "name": "Common_chaodi03_4",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -72.0077195621104,
                          "z": -21.084159156169417
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
                      }
                    }
                  ]
                },
                {
                  "_$id": "p9go984e",
                  "_$type": "Sprite3D",
                  "name": "tree",
                  "_$child": [
                    {
                      "_$id": "nxcsbhaq",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_6",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -24.6180054106881,
                          "y": -6.750155989720952e-13,
                          "z": 74.5548405035592
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.4,
                          "y": 1.4,
                          "z": 1.4
                        }
                      }
                    },
                    {
                      "_$id": "kzu64xj2",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_7",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 68.91809961326173,
                          "y": -1.1439738045737613e-12,
                          "z": 74.4522835274129
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
                      "_$id": "ei2czjnj",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_8",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 41.03996943021225,
                          "y": 4.760636329592671e-13,
                          "z": -21.178972007681697
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.2000000476837158,
                          "y": 1.2000000476837158,
                          "z": 1.2000000476837158
                        }
                      }
                    },
                    {
                      "_$id": "c8l4c4w8",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_9",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 1.322453547817048,
                          "y": 4.618527782440651e-13,
                          "z": 30.45905548786792
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
                      "_$id": "0l83kseg",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_10",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -88.14375255474889,
                          "y": -1.4495071809506044e-12,
                          "z": 50.85959223277013
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.399999976158142,
                          "y": 1.5,
                          "z": 1.5
                        }
                      }
                    },
                    {
                      "_$id": "z1zx4gyy",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_11",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 53.33787230168343,
                          "y": -8.597567102697212e-13,
                          "z": -40.345923540860696
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.2000000476837158,
                          "y": 1.2000000476837158,
                          "z": 1.2000000476837158
                        }
                      }
                    },
                    {
                      "_$id": "lim3d9k3",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_12",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 87.55210659587952,
                          "y": 4.121147867408581e-13,
                          "z": 18.122558342139477
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.2000000476837158,
                          "y": 1.2000000476837158,
                          "z": 1.2000000476837158
                        }
                      }
                    },
                    {
                      "_$id": "68z3sxab",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_13",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 53.06938511349771,
                          "y": 9.166001291305292e-13,
                          "z": 60.254933396967786
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
                      }
                    },
                    {
                      "_$id": "icu2nmpz",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_14",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -42.106890437732176,
                          "y": 3.055333763768431e-13,
                          "z": 56.57718028080075
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
                      }
                    },
                    {
                      "_$id": "zrl9v78x",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_15",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 86.7112437378764,
                          "y": -4.902744876744691e-13,
                          "z": 58.718299865722656
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.2000000476837158,
                          "y": 1.2000000476837158,
                          "z": 1.2000000476837158
                        }
                      }
                    },
                    {
                      "_$id": "3aan22f1",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_18",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -33.28852081298828,
                          "y": -1.2008172234345693e-12,
                          "z": -102.71759295128186
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
                      "_$id": "z30ba4d0",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_19",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -61.8976092201554,
                          "y": -1.3287149158713873e-12,
                          "z": -103.23848288445197
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
                      "_$id": "ab726z0z",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_20",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -41.705475713848685,
                          "y": -4.384048679639818e-12,
                          "z": -23.316582433214673
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
                      }
                    },
                    {
                      "_$id": "ukoexlg1",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_21",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 62.19525909423828,
                          "y": 4.618527782440651e-13,
                          "z": -103.25299274171557
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
                      "_$id": "e3cijfqn",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_22",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 75.08541358593217,
                          "y": -1.8189894035458565e-12,
                          "z": -86.73027088949136
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.9,
                          "y": 0.9,
                          "z": 0.9
                        }
                      }
                    },
                    {
                      "_$id": "3qgk4day",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_23",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 87.19802856445312,
                          "y": -9.663381206337363e-13,
                          "z": -44.349424867547164
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
                      }
                    },
                    {
                      "_$id": "lqol1jex",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_24",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 61.112131785514116,
                          "y": -1.4992451724538114e-12,
                          "z": -69.34995514836805
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
                      "_$id": "lmx3rdf8",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_25",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 87.47810179785664,
                          "y": -6.892264536872972e-13,
                          "z": -15.674677909363432
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
                      }
                    },
                    {
                      "_$id": "ibb2591p",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_26",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 69.52030450278234,
                          "y": -2.7711166694643907e-13,
                          "z": -56.90914946683544
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
                      "_$id": "jp5iw3x9",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_27",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -17.035031277498355,
                          "y": -1.4068746168049984e-12,
                          "z": -82.30037689208984
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
                      }
                    },
                    {
                      "_$id": "dt66nm8r",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_28",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -42.33536007392858,
                          "z": 17.838775634765625
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.9,
                          "y": 0.9,
                          "z": 0.9
                        }
                      }
                    },
                    {
                      "_$id": "nimwm838",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_29",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 22.35943170191166,
                          "y": -1.5916157281026244e-12,
                          "z": -5.133291410730033
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
                      "_$id": "uxfnw686",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_30",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 23.296982904025164,
                          "y": -1.5489831639570184e-12,
                          "z": -36.60454861489488
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
                      "_$id": "c6cisscb",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_31",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -75.7381671698153,
                          "y": -7.176481631177012e-13,
                          "z": -69.1774686104849
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
                      "_$id": "7dtck0kh",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_32",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -71.28215139769118,
                          "y": 4.405364961712621e-13,
                          "z": 12.381201295950877
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.2999999523162842,
                          "y": 1.2999999523162842,
                          "z": 1.2999999523162842
                        }
                      }
                    },
                    {
                      "_$id": "q94ae73x",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_33",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -68.92930174346375,
                          "y": -4.476419235288631e-13,
                          "z": 70.04639352202065
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
                      "_$id": "yabi690m",
                      "_$prefab": "5a01a4f5-a340-40fb-9f8c-f46a61d30809",
                      "name": "Common_tree04",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -88.85504150390625,
                          "y": 7.815970093361102e-14,
                          "z": -35.23713621021279
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
                      }
                    },
                    {
                      "_$id": "e3zn0goa",
                      "_$prefab": "5a01a4f5-a340-40fb-9f8c-f46a61d30809",
                      "name": "Common_tree04_1",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -26.628769686473184,
                          "y": 2.5579538487363607e-13,
                          "z": 30.85266255793835
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
                      "_$id": "vb76r3a7",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_1",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 28.047776342587213,
                          "y": -7.318590178329032e-13,
                          "z": 6.6316184224125045
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
                      "_$id": "s7j66k1s",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_21",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -0.7920919126210713,
                          "z": 9.79675970544043
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
                      }
                    },
                    {
                      "_$id": "8qomj57u",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 16.393131672718198,
                          "y": -9.734435479913373e-13,
                          "z": -70.17114304996824
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
                      "_$id": "04aksy09",
                      "_$prefab": "a66f424e-5467-41b9-b345-0d904e44273f",
                      "name": "Common_tree02",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 23.84344825629411,
                          "y": 7.176481631177012e-13,
                          "z": -51.083520904818975
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
                      "_$id": "3qvaaosg",
                      "_$prefab": "66eafcaf-076f-4ab3-9584-c7b8e89da08d",
                      "name": "Common_tree01_1",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.04059841111302376,
                          "z": -6.01994514465332
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
                      "_$id": "yhsc1zot",
                      "_$prefab": "66eafcaf-076f-4ab3-9584-c7b8e89da08d",
                      "name": "Common_tree01_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -6.606313705444336,
                          "z": -6.01994514465332
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
                      "_$id": "xt6tk9y1",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_1",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 22.600221024964753,
                          "y": 2.984279490192421e-13,
                          "z": -20.840798724028065
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
                      }
                    },
                    {
                      "_$id": "9d264iuj",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -69.49455046409633,
                          "y": 1.4921397450962104e-13,
                          "z": -31.917433019095235
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
                      "_$id": "3kd07sa1",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_4",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 48.932950684217175,
                          "y": 3.836930773104541e-13,
                          "z": 91.76149894519777
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
                      }
                    },
                    {
                      "_$id": "0on9kcp9",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_6",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 84.84802252107036,
                          "y": 6.039613253960852e-13,
                          "z": -50.60676953169392
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
                      }
                    },
                    {
                      "_$id": "t9586h2e",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_7",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 56.2942965186731,
                          "y": -2.1316282072803006e-14,
                          "z": -72.62034952847266
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
                      }
                    },
                    {
                      "_$id": "f218lqae",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_8",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 40.396959699137625,
                          "y": 5.400124791776761e-13,
                          "z": -74.21330740100339
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
                      }
                    },
                    {
                      "_$id": "yw4946i8",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_9",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 83.21331586348315,
                          "y": 6.536993168992922e-13,
                          "z": -35.86948013675095
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
                      }
                    },
                    {
                      "_$id": "7tmouq0f",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_10",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 40.283764585977984,
                          "y": 1.0658141036401503e-12,
                          "z": 89.77922780085451
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
                      }
                    },
                    {
                      "_$id": "092zvfsq",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_11",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 70.07048265742378,
                          "y": 5.684341886080801e-13,
                          "z": -32.47991127610564
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
                      }
                    },
                    {
                      "_$id": "n0swi22n",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_12",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 38.72424820126593,
                          "y": 5.968558980384842e-13,
                          "z": -91.3969438081826
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
                      }
                    },
                    {
                      "_$id": "wmk3po9t",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_13",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -26.01044903929395,
                          "y": 6.679101716144942e-13,
                          "z": -50.712437216333825
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
                      }
                    },
                    {
                      "_$id": "6sj2qclb",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_14",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -0.3658831361841397,
                          "y": 6.110667527536862e-13,
                          "z": -76.2722136401211
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
                      }
                    },
                    {
                      "_$id": "njvr7gw6",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_15",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -79.67120176166098,
                          "y": 7.105427357601002e-13,
                          "z": -77.80080743578829
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
                      }
                    },
                    {
                      "_$id": "aj3vlafj",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_16",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 26.2767295254527,
                          "y": 9.308109838457312e-13,
                          "z": -26.79999410614658
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
                      }
                    },
                    {
                      "_$id": "stbqjze9",
                      "_$prefab": "66eafcaf-076f-4ab3-9584-c7b8e89da08d",
                      "name": "Common_tree01_32",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 74.79266772484695,
                          "y": -0.9087843298908638,
                          "z": -1.0792288179988203
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
                      "_$id": "re2tql43",
                      "_$prefab": "66eafcaf-076f-4ab3-9584-c7b8e89da08d",
                      "name": "Common_tree01_36",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 10.848866009719089,
                          "y": 1.0658141036401503e-13,
                          "z": -48.121460746120974
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
                      "_$id": "5eny0n10",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_18",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 60.24420613868813,
                          "y": 1.1368683772161603e-13,
                          "z": 16.245760848848626
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
                      }
                    },
                    {
                      "_$id": "gi7uc66s",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_19",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -42.932658936983366,
                          "y": -4.902744876744691e-13,
                          "z": 90.08856525962602
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
                      }
                    },
                    {
                      "_$id": "2wfa0q59",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_34",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.09095821342246779,
                          "y": 1.4921397450962104e-13,
                          "z": 6.592585798682485
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
                      "_$id": "ylepqxx3",
                      "_$prefab": "5a01a4f5-a340-40fb-9f8c-f46a61d30809",
                      "name": "Common_tree04_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -88.5911167510665,
                          "y": -2.7711166694643907e-13,
                          "z": -50.5982353588547
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
                      }
                    },
                    {
                      "_$id": "br1660t3",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_35",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -10.212806465136573,
                          "y": 3.197442310920451e-13,
                          "z": 42.45323581925
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
                      "_$id": "tsxtpitt",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_36",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 28.427289122779236,
                          "y": -4.334310688136611e-13,
                          "z": 30.152068456748164
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
                      "_$id": "pbk8477v",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_37",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 53.239607372686635,
                          "y": -2.3590018827235326e-12,
                          "z": -3.3742857079026365
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
                      }
                    },
                    {
                      "_$id": "2nj50syw",
                      "_$prefab": "5a01a4f5-a340-40fb-9f8c-f46a61d30809",
                      "name": "Common_tree04_4",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -48.95856783689669,
                          "y": -2.3447910280083306e-13,
                          "z": -69.19299143163346
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
                      "_$id": "tybulks4",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_38",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 53.29758180983643,
                          "y": 5.186961971048731e-13,
                          "z": 26.492625376773265
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
                      }
                    },
                    {
                      "_$id": "gdv82jp5",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_40",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 8.179435729980469,
                          "y": -1.7763568394002505e-13,
                          "z": 57.797977076424026
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.2000000476837158,
                          "y": 1.2000000476837158,
                          "z": 1.2000000476837158
                        }
                      }
                    },
                    {
                      "_$id": "7daeoxx0",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_41",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -87.96813888635373,
                          "y": -4.767741756950272e-12,
                          "z": -88.7501804195017
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
                      }
                    },
                    {
                      "_$id": "0rsr8wq0",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_42",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -28.94536706098471,
                          "y": -1.5347723092418164e-12,
                          "z": -5.234851612212317
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
                      "_$id": "jlbnky1b",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_43",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -9.512900482910787,
                          "y": -1.5916157281026244e-12,
                          "z": -36.701252997595404
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
                      "_$id": "36dpbyk7",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_44",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 36.21508935601997,
                          "y": -1.8189894035458565e-12,
                          "z": -81.26505964045776
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.9,
                          "y": 0.9,
                          "z": 0.9
                        }
                      }
                    },
                    {
                      "_$id": "207j24tq",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_45",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 16.393131256103516,
                          "y": -9.734435479913373e-13,
                          "z": -90.33603168163857
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
                      "_$id": "cak9ctg6",
                      "_$prefab": "5a01a4f5-a340-40fb-9f8c-f46a61d30809",
                      "name": "Common_tree04_5",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -9.857197579032942,
                          "y": -3.055333763768431e-13,
                          "z": -76.36800354996095
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
                      }
                    },
                    {
                      "_$id": "0pa2swzi",
                      "_$prefab": "5a01a4f5-a340-40fb-9f8c-f46a61d30809",
                      "name": "Common_tree04_6",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 30.010879421676293,
                          "y": -9.237055564881302e-14,
                          "z": -80.11221555983208
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
                      }
                    },
                    {
                      "_$id": "6i9e3ob0",
                      "_$prefab": "5a01a4f5-a340-40fb-9f8c-f46a61d30809",
                      "name": "Common_tree04_7",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 30.010879421676293,
                          "y": -9.237055564881302e-14,
                          "z": -80.11221555983208
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
                      }
                    },
                    {
                      "_$id": "j0cklj32",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_46",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -73.05958347515848,
                          "y": -4.142464149481384e-12,
                          "z": -42.84661532568869
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
                      }
                    },
                    {
                      "_$id": "uz1niyu4",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_47",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -67.21700842686607,
                          "y": -4.305888978706207e-12,
                          "z": -56.929449522989735
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
                      "_$id": "jbiex7aj",
                      "_$prefab": "5a01a4f5-a340-40fb-9f8c-f46a61d30809",
                      "name": "Common_tree04_8",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -54.631590793760395,
                          "y": 6.750155989720952e-13,
                          "z": -45.4202995300293
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
                      }
                    },
                    {
                      "_$id": "4f4mm5fh",
                      "_$prefab": "5a01a4f5-a340-40fb-9f8c-f46a61d30809",
                      "name": "Common_tree04_9",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -30.01155910157424,
                          "y": 5.755396159656812e-13,
                          "z": -69.02853154470496
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
                      "_$id": "9w372mf1",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_48",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -53.52928393077333,
                          "y": 7.460698725481052e-13,
                          "z": 51.94951050333174
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
                      }
                    },
                    {
                      "_$id": "6bys9nz0",
                      "_$prefab": "5a01a4f5-a340-40fb-9f8c-f46a61d30809",
                      "name": "Common_tree04_10",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -53.818857886020616,
                          "y": 3.481659405224491e-13,
                          "z": 27.82111933437949
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
                      }
                    },
                    {
                      "_$id": "ilfsef5i",
                      "_$prefab": "5a01a4f5-a340-40fb-9f8c-f46a61d30809",
                      "name": "Common_tree04_11",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -48.47020951874029,
                          "y": 2.5579538487363607e-13,
                          "z": 86.4629900625709
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
                      "_$id": "uwl6430c",
                      "_$prefab": "5a01a4f5-a340-40fb-9f8c-f46a61d30809",
                      "name": "Common_tree04_12",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 46.68334541473689,
                          "y": 2.5579538487363607e-13,
                          "z": 86.4629898071289
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
                      "_$id": "4344753v",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_22",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -72.84556864209515,
                          "y": 6.679101716144942e-13,
                          "z": -20.582836601416982
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
                      }
                    }
                  ]
                },
                {
                  "_$id": "ccy739p0",
                  "_$type": "Sprite3D",
                  "name": "shitou",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": -0.09152698555967476
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "kbyk5p1e",
                      "_$prefab": "251e1529-1dc9-4214-a466-70e3fbe1ba6b",
                      "name": "shitou6_5",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 121.92645259729035,
                          "y": -2.951727387058135,
                          "z": 4.761658089413499
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.699999988079071,
                          "y": 0.699999988079071,
                          "z": 0.699999988079071
                        }
                      },
                      "_$child": [
                        {
                          "_$override": "#45",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "y": 2.7853275241795927e-12
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "xx0ecciw",
                      "_$prefab": "251e1529-1dc9-4214-a466-70e3fbe1ba6b",
                      "name": "shitou6_6",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -108.06947445134583,
                          "y": -0.7144835043341118,
                          "z": 97.88795240144933
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": -0.13482854498340396,
                          "w": 0.9908689436336463
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.6999999886510911,
                          "y": 0.699999988079071,
                          "z": 0.6999999886510911
                        }
                      },
                      "_$child": [
                        {
                          "_$override": "#45",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "y": 2.7853275241795927e-12
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "z4hci9kd",
                      "_$prefab": "808d1d85-d39d-4b3e-9318-375e49bc13e1",
                      "name": "shitou-3",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -20.338808059692383,
                          "y": -3.9996294942969044,
                          "z": -113.66099548339844
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
                      }
                    },
                    {
                      "_$id": "mnnulp7y",
                      "_$prefab": "251e1529-1dc9-4214-a466-70e3fbe1ba6b",
                      "name": "shitou6",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -104.19369551411742,
                          "y": -3.2601809469335663,
                          "z": -88.94839603763829
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": -0.07131489926666573,
                          "w": 0.9974538511342694
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
                      "_$id": "2h2qiedz",
                      "_$prefab": "2fcb8846-524f-4def-8c84-488b4ef62edf",
                      "name": "shitou5",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -107.4202023291773,
                          "y": -1.6485362949222733,
                          "z": 61.474195041705805
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
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "y": -1.0597391985201199
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "20are8pj",
                      "_$prefab": "b13672d1-a560-42c9-b297-6ed93d289c6b",
                      "name": "shitou4",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 51.8584963579203,
                          "y": 0.10413450325787466,
                          "z": 109.34799616219767
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
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": 1.4210854715202004e-14,
                              "y": -2.473990631956756,
                              "z": 1.4210854715202004e-14
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "g8chn240",
                      "_$prefab": "251e1529-1dc9-4214-a466-70e3fbe1ba6b",
                      "name": "shitou6_1",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -92.728050429315,
                          "y": -1.63826584815979,
                          "z": -22.57422637939453
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.6708735287378047,
                          "w": 0.7415717823912167
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.699999988079071,
                          "y": 0.699999988079071,
                          "z": 0.699999988079071
                        }
                      },
                      "_$child": [
                        {
                          "_$override": "#45",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "y": 2.7853275241795927e-12
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "qtibrq9i",
                      "_$prefab": "2fcb8846-524f-4def-8c84-488b4ef62edf",
                      "name": "shitou5_1",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -81.89969609859664,
                          "y": -2.356136795627471,
                          "z": 101.65171791908521
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
                      "_$id": "0298gwcs",
                      "_$prefab": "b13672d1-a560-42c9-b297-6ed93d289c6b",
                      "name": "shitou4_1",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 112.37371826171875,
                          "y": -1.4960901635133865,
                          "z": -87.60864596506198
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
                      }
                    },
                    {
                      "_$id": "ryeyd6q1",
                      "_$prefab": "2fcb8846-524f-4def-8c84-488b4ef62edf",
                      "name": "shitou5_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 115.24378388389147,
                          "y": -1.7378367082433073,
                          "z": 71.4557624822558
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
                      }
                    },
                    {
                      "_$id": "lskao26y",
                      "_$prefab": "2fcb8846-524f-4def-8c84-488b4ef62edf",
                      "name": "shitou5_3",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 83.47126870336919,
                          "y": -3.1089968649023447,
                          "z": 101.17716646372125
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
                      "_$id": "vp5vev2i",
                      "_$prefab": "2fcb8846-524f-4def-8c84-488b4ef62edf",
                      "name": "shitou5_4",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -105.82965464613072,
                          "y": -3.2928053448885457,
                          "z": 6.317927360534668
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
                      }
                    },
                    {
                      "_$id": "y8d64a4g",
                      "_$prefab": "251e1529-1dc9-4214-a466-70e3fbe1ba6b",
                      "name": "shitou6_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -102.68257782810417,
                          "y": -2.0550901857489308,
                          "z": -34.80446129929495
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
                      "_$id": "qyai6kxy",
                      "_$prefab": "2fcb8846-524f-4def-8c84-488b4ef62edf",
                      "name": "shitou5_5",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -95.55684744060585,
                          "y": -3.1088452306860646,
                          "z": 33.800387477889046
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.800000011920929,
                          "y": 0.800000011920929,
                          "z": 0.800000011920929
                        }
                      }
                    },
                    {
                      "_$id": "ju4866a7",
                      "_$prefab": "251e1529-1dc9-4214-a466-70e3fbe1ba6b",
                      "name": "shitou6_3",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -123.14518163147216,
                          "y": -2.6403171983832365,
                          "z": -49.74443442411223
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.680746953367313,
                          "w": 0.7325186587938369
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
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "y": 2.7853275241795927e-12
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "9xtzfmqn",
                      "_$prefab": "251e1529-1dc9-4214-a466-70e3fbe1ba6b",
                      "name": "shitou6_4",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -125.17091282711932,
                          "y": -2.652455803501006,
                          "z": 76.84410082305435
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
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "y": 2.7853275241795927e-12
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "f9dh47ve",
                      "_$prefab": "2fcb8846-524f-4def-8c84-488b4ef62edf",
                      "name": "shitou5_7",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -122.46439044455865,
                          "y": -1.7253469316181085,
                          "z": -75.06729875271354
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.6807357741777061,
                          "w": 0.7325290477207571
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.6000000238418579,
                          "y": 0.6000000238418579,
                          "z": 0.6000000238418579
                        }
                      },
                      "_$child": [
                        {
                          "_$override": "#45",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": 0.000009369427914407424,
                              "z": 4.9103590527010965e-8
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "qh2leswm",
                      "_$prefab": "cd3a0112-20ab-4ad8-8a1b-76f7937fb6f0",
                      "name": "shitou02",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 113.65031779683014,
                          "y": -3.2631511587486486,
                          "z": -36.006248474121094
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
                      }
                    },
                    {
                      "_$id": "56gej4gf",
                      "_$prefab": "b5f4ad04-fd9c-4945-b436-cc1da529e24f",
                      "name": "shitou01",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.8456670754237194,
                          "y": -2.4665446470908137,
                          "z": 98.7331918494172
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.9,
                          "y": 0.9,
                          "z": 0.9
                        }
                      },
                      "_$child": [
                        {
                          "_$override": "#45",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3"
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "ao19dewq",
                      "_$prefab": "2fcb8846-524f-4def-8c84-488b4ef62edf",
                      "name": "shitou5_8",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 123.70576080238044,
                          "y": -3.066407532086515,
                          "z": 31.473800659179688
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
                      }
                    },
                    {
                      "_$id": "5swcq9vu",
                      "_$prefab": "b13672d1-a560-42c9-b297-6ed93d289c6b",
                      "name": "shitou4_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 11.165382385253906,
                          "y": -2.276151657104492,
                          "z": -101.1618375232581
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
                      "_$id": "vn9ht4h2",
                      "_$prefab": "cd3a0112-20ab-4ad8-8a1b-76f7937fb6f0",
                      "name": "shitou02_1",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 70.62915802001953,
                          "y": -3.195876489918092,
                          "z": -108.52000878588277
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
                      "_$id": "8wxo48f1",
                      "_$prefab": "cd3a0112-20ab-4ad8-8a1b-76f7937fb6f0",
                      "name": "shitou02_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -57.39183357889336,
                          "y": -2.0029101659809125,
                          "z": -108.13606589462715
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
                      "_$id": "o1tiwfeb",
                      "_$prefab": "2fcb8846-524f-4def-8c84-488b4ef62edf",
                      "name": "shitou5_9",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -46.532487186034935,
                          "y": -2.3561367988586426,
                          "z": 109.31213172756713
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.98,
                          "y": 0.8,
                          "z": 0.8
                        }
                      }
                    },
                    {
                      "_$id": "ikenb821",
                      "_$prefab": "251e1529-1dc9-4214-a466-70e3fbe1ba6b",
                      "name": "shitou6_7",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -3.2332919129923865,
                          "y": -1.7182770837553534,
                          "z": -98.03781339269058
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.9940051330508243,
                          "w": 0.10933341423651342
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 1,
                          "z": 1
                        }
                      }
                    }
                  ]
                },
                {
                  "_$id": "wqk1wyte",
                  "_$type": "Sprite3D",
                  "name": "shui",
                  "_$child": [
                    {
                      "_$id": "s6ayt5d6",
                      "_$prefab": "2bd86be0-2d31-4b59-8b3e-f108ec8aaec5",
                      "name": "shui02",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "y": -1.7458044590682253
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        }
                      }
                    },
                    {
                      "_$id": "8z1ozhyw",
                      "_$prefab": "2bd86be0-2d31-4b59-8b3e-f108ec8aaec5",
                      "name": "shui02_1",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 115.44630308821056,
                          "y": -1.7458044590682253
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        }
                      }
                    },
                    {
                      "_$id": "tqbu5uac",
                      "_$prefab": "2bd86be0-2d31-4b59-8b3e-f108ec8aaec5",
                      "name": "shui02_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -86.5564756603428,
                          "y": -1.7458044590682253
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        }
                      }
                    },
                    {
                      "_$id": "kwkpo3kc",
                      "_$prefab": "2bd86be0-2d31-4b59-8b3e-f108ec8aaec5",
                      "name": "shui02_3",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -86.5564756603428,
                          "y": -1.7458044590682253,
                          "z": -50
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        }
                      }
                    },
                    {
                      "_$id": "q1uw3caj",
                      "_$prefab": "2bd86be0-2d31-4b59-8b3e-f108ec8aaec5",
                      "name": "shui02_4",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 100,
                          "y": -1.7458044590682253,
                          "z": -50
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        }
                      }
                    },
                    {
                      "_$id": "r7yghzjz",
                      "_$prefab": "2bd86be0-2d31-4b59-8b3e-f108ec8aaec5",
                      "name": "shui02_5",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "y": -1.7458044590682253,
                          "z": -50
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        }
                      }
                    },
                    {
                      "_$id": "9qudoouv",
                      "_$prefab": "2bd86be0-2d31-4b59-8b3e-f108ec8aaec5",
                      "name": "shui02_6",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -100,
                          "y": -1.7458044590682253,
                          "z": -100
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        }
                      }
                    },
                    {
                      "_$id": "5xgixrex",
                      "_$prefab": "2bd86be0-2d31-4b59-8b3e-f108ec8aaec5",
                      "name": "shui02_7",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 100,
                          "y": -1.7458044590682253,
                          "z": -100
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        }
                      }
                    },
                    {
                      "_$id": "dvmmldlx",
                      "_$prefab": "2bd86be0-2d31-4b59-8b3e-f108ec8aaec5",
                      "name": "shui02_8",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "y": -1.7458044590682253,
                          "z": -100
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        }
                      }
                    },
                    {
                      "_$id": "738ew4yh",
                      "_$prefab": "2bd86be0-2d31-4b59-8b3e-f108ec8aaec5",
                      "name": "shui02_9",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -86.5564756603428,
                          "y": -1.7458044590682253,
                          "z": 50
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        }
                      }
                    },
                    {
                      "_$id": "xiql3wu2",
                      "_$prefab": "2bd86be0-2d31-4b59-8b3e-f108ec8aaec5",
                      "name": "shui02_10",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 115.44630308821056,
                          "y": -1.7458044590682253,
                          "z": 50
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        }
                      }
                    },
                    {
                      "_$id": "bcnhnng2",
                      "_$prefab": "2bd86be0-2d31-4b59-8b3e-f108ec8aaec5",
                      "name": "shui02_11",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "y": -1.7458044590682253,
                          "z": 50
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        }
                      }
                    },
                    {
                      "_$id": "ttv6vyoc",
                      "_$prefab": "2bd86be0-2d31-4b59-8b3e-f108ec8aaec5",
                      "name": "shui02_12",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -100,
                          "y": -1.7458044590682253,
                          "z": 100
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        }
                      }
                    },
                    {
                      "_$id": "zystcmz3",
                      "_$prefab": "2bd86be0-2d31-4b59-8b3e-f108ec8aaec5",
                      "name": "shui02_13",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 100,
                          "y": -1.7458044590682253,
                          "z": 100
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        }
                      }
                    },
                    {
                      "_$id": "6ofio4l1",
                      "_$prefab": "2bd86be0-2d31-4b59-8b3e-f108ec8aaec5",
                      "name": "shui02_14",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "y": -1.7458044650693267,
                          "z": 100
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        }
                      }
                    }
                  ]
                },
                {
                  "_$id": "k0fitvem",
                  "_$type": "Sprite3D",
                  "name": "langan",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": -0.19784662569945227
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "oago8k0q",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_6",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -40.418479919433594,
                          "z": 8.802766557073808
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": -0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 2,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "3tjs1bmw",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_7",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 38.947120666503906,
                          "z": 8.846761236967279
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 1,
                          "w": 6.123233995736766e-17
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 2,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "hmetm97h",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_8",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 5.961737968582421,
                          "z": 72.7601547241211
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 2,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "yzd3s6ei",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_9",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 84.85678914752374,
                          "z": 72.8961984002557
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 2,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "nudd2zoc",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_10",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 38.87833648004629,
                          "y": -2.2737367544323206e-13,
                          "z": 28.715862274169922
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 2,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "dq2lsq0b",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_11",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 73.57008361816406,
                          "z": -70.74284821679814
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 2,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "ak9udf29",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_12",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 54.813033089946835,
                          "y": 1.0658141036401503e-14,
                          "z": 72.9092277486853
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 2,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "25ko3y78",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_13",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 37.465172453999536,
                          "z": -70.71585369157135
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 2,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "ltrt5vvw",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_14",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 6.029718399047852,
                          "z": 44.56164450781161
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 1,
                          "w": 6.123233995736766e-17
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 2,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "08fv3acs",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_15",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 38.75202783451231,
                          "z": -34.583980560302734
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 1,
                          "w": 6.123233995736766e-17
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 2,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "fvv0nvn6",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_16",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 84.92259281093669,
                          "z": -55.13335418701172
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 1,
                          "w": 6.123233995736766e-17
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 2,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "fc5vtzjr",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_17",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 73.86471557617188,
                          "z": -101.1878489589396
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 1,
                          "w": 6.123233995736766e-17
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 2,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "6nkqfptw",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_18",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -18.739401259678658,
                          "z": -100.76963806152344
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 1,
                          "w": 6.123233995736766e-17
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 2,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "z5ujdwqp",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_19",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 38.78825610162252,
                          "z": -6.807041700957897
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 2,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "03ise3pz",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_20",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -56.164464260487456,
                          "z": -6.873536105322975
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 2,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "4u73ojj8",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_21",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -18.67982292175293,
                          "z": -70.9681542514351
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 2,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "zabxmv4x",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_24",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -40.500227494069904,
                          "y": 7.105427357601002e-15,
                          "z": -6.816617477632837
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 2,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "lryh3o3d",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_26",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -87.31495536682586,
                          "y": 7.105427357601002e-15,
                          "z": -70.96561685860125
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 2,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "ul9sp9el",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_28",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -87.21314867815269,
                          "y": 3.552713678800501e-15,
                          "z": 68.0414654685925
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 2,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "k4x2l12k",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_30",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -87.28859137351192,
                          "z": 13.975757598876953
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": -0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 2,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "lzc47euo",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_31",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 54.68894950582359,
                          "z": -55.00535202026367
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": -0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 2,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "1hh0zbnw",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_32",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -40.36860656738281,
                          "z": 28.867085975834307
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 2,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "v9naj4ds",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_34",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -56.323355801057446,
                          "z": 13.96708059160789
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 1,
                          "w": 6.123233995736766e-17
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 2,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "9aaomwzj",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_35",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -40.4560102221487,
                          "z": -34.320023122635035
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": -0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 2,
                          "z": 1
                        }
                      }
                    }
                  ]
                },
                {
                  "_$id": "3z27xd5h",
                  "_$type": "Sprite3D",
                  "name": "HaTan",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": -0.20011219073763908
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "r7ktvkt7",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 23.409950256347656,
                          "z": 1.031685261632063
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
                      "_$id": "chl4iz11",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_3",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -19.175220489501953,
                          "z": 1.0576859544292816
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
                      "_$id": "dbbovvpu",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_4",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -79.83497619628906,
                          "z": -62.84073104157251
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
                      "_$id": "9lf9pkgh",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_5",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -15.047178268432617,
                          "z": -62.81421050557978
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
                      "_$id": "dbhwl6s1",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_6",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 18.90104103088379,
                          "z": -62.85349807271845
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
                      "_$id": "lbl11zic",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_7",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 69.18689727783203,
                          "z": -62.87017780309213
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
                      "_$id": "ljaqlord",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_8",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -18.997602462768555,
                          "z": 80.76010742654857
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
                          "_$override": "#41",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3"
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "nldkx28m",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_9",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 25.016237258911133,
                          "z": 80.7699188279169
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
                      "_$id": "svjjp0so",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_10",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 24.192718505859375,
                          "z": 36.78161316852795
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
                      "_$id": "qhbxeio8",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_11",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 70.84835815429688,
                          "z": 80.76989899382677
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
                      "_$id": "omxyx71b",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_12",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 92.63884430815959,
                          "z": 25.65114974975586
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
                      }
                    },
                    {
                      "_$id": "2lhb90jf",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_13",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 92.80227203958574,
                          "z": -5.943606376647949
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
                      }
                    },
                    {
                      "_$id": "c3a7vesj",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_14",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 92.7667598804501,
                          "z": -46.048377990722656
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
                      }
                    },
                    {
                      "_$id": "49d36g4g",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_18",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 92.69855194976003,
                          "z": 58.657142639160156
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
                      }
                    },
                    {
                      "_$id": "s3aj9f66",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_20",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -63.50948635899515,
                          "z": -5.598598797723085
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
                      "_$id": "tfburta8",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_21",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -82.82524614033443,
                          "z": -5.598598957061768
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
                    }
                  ]
                },
                {
                  "_$id": "e3jqpeue",
                  "_$prefab": "91959672-80f7-40a6-b7d9-228d311a9963",
                  "name": "liang",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.4249400198459625,
                      "y": -0.2621280550956726,
                      "z": 0.21094678342342377
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
                      "_$override": "#41",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3"
                        }
                      }
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "iiefiaf6",
              "_$type": "Sprite3D",
              "name": "Npcs"
            },
            {
              "_$id": "x6y5f4zd",
              "_$type": "Sprite3D",
              "name": "Players"
            },
            {
              "_$id": "f6wzz70w",
              "_$type": "Sprite3D",
              "name": "Building",
              "layer": 3,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -58.05586776861193,
                  "y": 5.684341886080802e-14,
                  "z": -10.559245803398994
                }
              },
              "_$child": [
                {
                  "_$id": "19ad6hdo",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_10",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 47.20367890171134,
                      "y": 2.0463630789890885e-12,
                      "z": -21.464728970882916
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "dclimlm6",
                  "_$prefab": "e697fcaa-edb4-4f83-bc82-6480ad1ed034",
                  "name": "daxingjianzhu_yuanxing_1",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 56.71959822628861,
                      "z": -40.66005028214054
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.7,
                      "y": 0.7,
                      "z": 0.7
                    }
                  }
                },
                {
                  "_$id": "o1scqy7t",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_11",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 47.04633026889884,
                      "y": 2.0463630789890885e-12,
                      "z": 1.0709346338534136
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "tnzuxm04",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_12",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 120.3214917460615,
                      "y": 1.5631940186722204e-13,
                      "z": -11.722088157692149
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "fna2yy30",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_13",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 98.73005071193505,
                      "z": -79.81342901049882
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "aju9sb0z",
                  "_$prefab": "8430c7a4-b5b2-4b22-9296-20e57bb5f3de",
                  "name": "daxingjianzhu_zuqiuchang",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 83.8247159824123,
                      "y": -1.5916157281026244e-12,
                      "z": 68.92322363217588
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
                  "_$id": "8fxs62jg",
                  "_$prefab": "9726d308-e0eb-4e08-a2ce-46315d7f644e",
                  "name": "daxingjianzhu_yuanhu",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -48.90976731313772,
                      "y": 4.263256414560601e-14,
                      "z": 92.38395433574905
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.7,
                      "y": 0.7,
                      "z": 0.7
                    }
                  }
                },
                {
                  "_$id": "eiy61y25",
                  "_$prefab": "e414f28c-a913-43c4-9590-7b1d49da04d4",
                  "name": "daxingjianzhu_fangxing",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -40.650555024358795,
                      "z": -37.16423005570732
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.7,
                      "y": 0.7,
                      "z": 0.7
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -15.989570546382936,
                          "z": -1.4759424523548574
                        }
                      }
                    }
                  ]
                },
                {
                  "_$id": "zcpxxt8f",
                  "_$prefab": "931a193d-28a0-45d6-92ad-6d8bdd24109c",
                  "name": "putong_zhongxing16",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 113.28261235153025,
                      "z": -33.696790039100854
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
                  "_$id": "p2f2x8ej",
                  "_$prefab": "b874a152-89cd-4701-9521-e7aa643651f4",
                  "name": "putong_zhongxing15",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 113.28261235153025,
                      "z": -29.781445800819604
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
                  "_$id": "rxwd6acx",
                  "_$prefab": "1385bc70-85bd-4db8-b2bb-45be7ceaa6c1",
                  "name": "putong_zhongxing14",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 113.28261235153025,
                      "z": -25.52854663089773
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
                  "_$id": "qlzfejgr",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_29",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 113.28261235153025,
                      "z": -21.20766192630788
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
                  "_$id": "c6uuh07m",
                  "_$prefab": "8d384534-cb12-4904-8380-24d2281612a9",
                  "name": "putong_zhongxing12",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 117.59489872848337,
                      "z": -25.808446228065698
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
                  "_$id": "x8gzwj24",
                  "_$prefab": "56e5ee0e-3110-4a2c-b1d1-0eed3160eb3b",
                  "name": "putong_zhongxing11",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 117.59489872848337,
                      "z": -20.779530822792253
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
                  "_$id": "v9fcz58q",
                  "_$prefab": "15022849-e8d6-404c-af6b-620e9c7bfbe9",
                  "name": "putong_zhongxing10",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 117.59489872848337,
                      "z": -33.80399829105398
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
                  "_$id": "kfk8gogi",
                  "_$prefab": "6312d869-f268-44f5-92ae-6bae3af203cf",
                  "name": "putong_zhongxing09",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 117.59489872848337,
                      "z": -29.35815173343679
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
                  "_$id": "k4bm7fdj",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_14",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 120.84849980270212,
                      "z": 51.78229779048898
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "coeili9q",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_15",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 120.84849980270212,
                      "z": 62.464140594444075
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "d7qzn3fy",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_16",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 120.84849980270212,
                      "z": 82.17231625362376
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "sx8xdxbh",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_17",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 120.84849980270212,
                      "z": 70.89718502803782
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "ub5683ty",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_18",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -18.164190704025202,
                      "z": -65.1458937576723
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "fypn9jp7",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_19",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -18.164190704025202,
                      "z": -85.84012669834613
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "rvqqcado",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_20",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -18.164190704025202,
                      "z": -75.15828389439103
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "y5s1gneq",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_22",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.192590301834173,
                      "z": -65.1458937576723
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "8pxmwy2d",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_23",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.192590301834173,
                      "z": -85.84012669834613
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "kzarmqc2",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_24",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.192590301834173,
                      "z": -75.15828389439103
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "ypzgb90i",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_26",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 27.142297333084166,
                      "z": -65.1458937576723
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "pkpmspv5",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_27",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 27.142297333084166,
                      "z": -85.84012669834613
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "f9tkldj4",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_28",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 27.142297333084166,
                      "z": -75.15828389439103
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "4p4sz3s8",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_14",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 110.03626409084131,
                      "z": -79.81342901049882
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "lxvaw396",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_15",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 119.76575627834131,
                      "z": -79.81342901049882
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "1bdy37xk",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_30",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 103.72141572243103,
                      "z": -65.18538535891801
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "nqqwdymy",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_16",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 47.20367890171134,
                      "y": 2.0463630789890885e-12,
                      "z": -10.24549068963292
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "biikhthw",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_17",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 25.296879585305092,
                      "y": 2.0463630789890885e-12,
                      "z": 1.0709346338534136
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "4wbvck4e",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_18",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 25.454228218117592,
                      "y": 2.0463630789890885e-12,
                      "z": -10.24549068963292
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "fkyntciw",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_19",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 25.454228218117592,
                      "y": 2.0463630789890885e-12,
                      "z": -21.464728970882916
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "z3nelv4b",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_23",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 138.35925215077629,
                      "y": -1.9326762412674725e-12,
                      "z": 52.476215571108995
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "zz50vdhk",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_31",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 42.81849297934193,
                      "z": 69.04881546218728
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "xwhefooj",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_32",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 42.81849297934193,
                      "z": 59.353028032377715
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "popioc7c",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_34",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 31.82564469005122,
                      "z": -40.66211109473345
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "t0ee0jpu",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_25",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 57.006455497008375,
                      "z": 57.6814074510599
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
                  }
                },
                {
                  "_$id": "jdo6g0rr",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_26",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 57.006455497008375,
                      "z": 63.419223307993484
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
                  }
                },
                {
                  "_$id": "qrf1e0zk",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_27",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 57.006455497008375,
                      "z": 69.04578161182648
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
                  }
                },
                {
                  "_$id": "kh6uvjgn",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_26",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 74.05917059881688,
                      "z": -69.897830486972
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "k0imb9bv",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_30",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 53.0234345148325,
                      "z": -69.897830486972
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "7tyr9uos",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_31",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 64.32967841131689,
                      "z": -69.897830486972
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "jkl8g3ju",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_32",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 74.60137186636305,
                      "z": 28.424311032072954
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "gav6svrw",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_33",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 85.9075852452693,
                      "z": 28.424311032072954
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "mtlnmfp4",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_34",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.63707743276929,
                      "z": 28.424311032072954
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "lwv7aaq9",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_35",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 60.872520548003685,
                      "z": 24.659784664885454
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "7esu9u2f",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_36",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 60.872520548003685,
                      "z": 35.19093548275655
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "ynohgehs",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_35",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 120.3214917460615,
                      "z": -42.23445635990164
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "rr4j4bur",
                  "_$prefab": "6312d869-f268-44f5-92ae-6bae3af203cf",
                  "name": "putong_zhongxing09_1",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 127.02458622848334,
                      "z": -29.35815173343679
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
                  "_$id": "4on4u6h7",
                  "_$prefab": "15022849-e8d6-404c-af6b-620e9c7bfbe9",
                  "name": "putong_zhongxing10_1",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 127.02458622848334,
                      "z": -33.80399829105398
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
                  "_$id": "hmpmim05",
                  "_$prefab": "56e5ee0e-3110-4a2c-b1d1-0eed3160eb3b",
                  "name": "putong_zhongxing11_1",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 127.02458622848334,
                      "z": -20.779530822792253
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
                  "_$id": "vi3fpdff",
                  "_$prefab": "8d384534-cb12-4904-8380-24d2281612a9",
                  "name": "putong_zhongxing12_1",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 127.02458622848334,
                      "z": -25.808446228065698
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
                  "_$id": "atnoda4z",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_30",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 122.71229985153025,
                      "z": -21.20766192630788
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
                  "_$id": "c3cth0ii",
                  "_$prefab": "1385bc70-85bd-4db8-b2bb-45be7ceaa6c1",
                  "name": "putong_zhongxing14_1",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 122.71229985153025,
                      "z": -25.52854663089773
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
                  "_$id": "qebw3en5",
                  "_$prefab": "b874a152-89cd-4701-9521-e7aa643651f4",
                  "name": "putong_zhongxing15_1",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 122.71229985153025,
                      "z": -29.781445800819604
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
                  "_$id": "lakr85bg",
                  "_$prefab": "931a193d-28a0-45d6-92ad-6d8bdd24109c",
                  "name": "putong_zhongxing16_1",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 122.71229985153025,
                      "z": -33.696790039100854
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
                  "_$id": "yj7uc034",
                  "_$prefab": "6312d869-f268-44f5-92ae-6bae3af203cf",
                  "name": "putong_zhongxing09_4",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 36.390892130034935,
                      "z": 26.38836132504171
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
                  "_$id": "nqealu12",
                  "_$prefab": "15022849-e8d6-404c-af6b-620e9c7bfbe9",
                  "name": "putong_zhongxing10_4",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 36.390892130034935,
                      "z": 21.942514767424516
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
                  "_$id": "uw4ibc54",
                  "_$prefab": "56e5ee0e-3110-4a2c-b1d1-0eed3160eb3b",
                  "name": "putong_zhongxing11_4",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 36.390892130034935,
                      "z": 34.96697460629171
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
                  "_$id": "sr8spylk",
                  "_$prefab": "8d384534-cb12-4904-8380-24d2281612a9",
                  "name": "putong_zhongxing12_4",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 36.390892130034935,
                      "z": 29.93805920101827
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
                  "_$id": "8cdelkf8",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_33",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 32.0786057530818,
                      "z": 34.53884350277608
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
                  "_$id": "gs24zmro",
                  "_$prefab": "1385bc70-85bd-4db8-b2bb-45be7ceaa6c1",
                  "name": "putong_zhongxing14_4",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 32.0786057530818,
                      "z": 30.21796642758077
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
                  "_$id": "ykmyg6qp",
                  "_$prefab": "b874a152-89cd-4701-9521-e7aa643651f4",
                  "name": "putong_zhongxing15_4",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 32.0786057530818,
                      "z": 25.965067257658898
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
                  "_$id": "cv3as9qq",
                  "_$prefab": "931a193d-28a0-45d6-92ad-6d8bdd24109c",
                  "name": "putong_zhongxing16_4",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 32.0786057530818,
                      "z": 22.04972301937764
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
                  "_$id": "dcrq3q8z",
                  "_$prefab": "6312d869-f268-44f5-92ae-6bae3af203cf",
                  "name": "putong_zhongxing09_5",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 45.820579630034935,
                      "z": 26.38836132504171
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
                  "_$id": "mq3ud1td",
                  "_$prefab": "15022849-e8d6-404c-af6b-620e9c7bfbe9",
                  "name": "putong_zhongxing10_5",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 45.820579630034935,
                      "z": 21.942514767424516
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
                  "_$id": "kolm00ja",
                  "_$prefab": "56e5ee0e-3110-4a2c-b1d1-0eed3160eb3b",
                  "name": "putong_zhongxing11_5",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 45.820579630034935,
                      "z": 34.96697460629171
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
                  "_$id": "sqdsx0za",
                  "_$prefab": "8d384534-cb12-4904-8380-24d2281612a9",
                  "name": "putong_zhongxing12_5",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 45.820579630034935,
                      "z": 29.93805920101827
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
                  "_$id": "184cvu0u",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_34",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.5082932530818,
                      "z": 34.53884350277608
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
                  "_$id": "ijgbh7bz",
                  "_$prefab": "1385bc70-85bd-4db8-b2bb-45be7ceaa6c1",
                  "name": "putong_zhongxing14_5",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.5082932530818,
                      "z": 30.21796642758077
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
                  "_$id": "ol9914db",
                  "_$prefab": "b874a152-89cd-4701-9521-e7aa643651f4",
                  "name": "putong_zhongxing15_5",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.5082932530818,
                      "z": 25.965067257658898
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
                  "_$id": "l0x700z0",
                  "_$prefab": "931a193d-28a0-45d6-92ad-6d8bdd24109c",
                  "name": "putong_zhongxing16_5",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.5082932530818,
                      "z": 22.04972301937764
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
                  "_$id": "1h7o6xan",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_41",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 120.33427861129587,
                      "y": 1.4210854715202004e-14,
                      "z": 40.390448272666724
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "sdifvnko",
                  "_$prefab": "6312d869-f268-44f5-92ae-6bae3af203cf",
                  "name": "putong_zhongxing09_6",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 117.60765507613962,
                      "y": 1.4210854715202004e-14,
                      "z": 22.75438565059643
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
                  "_$id": "rla4rcj8",
                  "_$prefab": "15022849-e8d6-404c-af6b-620e9c7bfbe9",
                  "name": "putong_zhongxing10_6",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 117.60765507613962,
                      "y": 1.4210854715202004e-14,
                      "z": 18.30853909297924
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
                  "_$id": "ikw81ii4",
                  "_$prefab": "56e5ee0e-3110-4a2c-b1d1-0eed3160eb3b",
                  "name": "putong_zhongxing11_6",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 117.60765507613962,
                      "y": 1.4210854715202004e-14,
                      "z": 31.33299893184641
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
                  "_$id": "nofog8zk",
                  "_$prefab": "8d384534-cb12-4904-8380-24d2281612a9",
                  "name": "putong_zhongxing12_6",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 117.60765507613962,
                      "y": 1.4210854715202004e-14,
                      "z": 26.30408352657298
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
                  "_$id": "7wjpfjvu",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_35",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 113.29539921676462,
                      "y": 1.4210854715202004e-14,
                      "z": 30.904867828330786
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
                  "_$id": "u8vx86yr",
                  "_$prefab": "1385bc70-85bd-4db8-b2bb-45be7ceaa6c1",
                  "name": "putong_zhongxing14_6",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 113.29539921676462,
                      "y": 1.4210854715202004e-14,
                      "z": 26.58399075313548
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
                  "_$id": "hjmn1ek7",
                  "_$prefab": "b874a152-89cd-4701-9521-e7aa643651f4",
                  "name": "putong_zhongxing15_6",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 113.29539921676462,
                      "y": 1.4210854715202004e-14,
                      "z": 22.331091583213617
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
                  "_$id": "2yie5qzv",
                  "_$prefab": "931a193d-28a0-45d6-92ad-6d8bdd24109c",
                  "name": "putong_zhongxing16_6",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 113.29539921676462,
                      "y": 1.4210854715202004e-14,
                      "z": 18.415747344932367
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
                  "_$id": "k11zelws",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_42",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 120.33427861129587,
                      "y": 1.4210854715202004e-14,
                      "z": 9.878073394737047
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "9em06vnr",
                  "_$prefab": "6312d869-f268-44f5-92ae-6bae3af203cf",
                  "name": "putong_zhongxing09_7",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 127.0373425761396,
                      "y": 1.4210854715202004e-14,
                      "z": 22.75438565059643
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
                  "_$id": "lqrxzs0h",
                  "_$prefab": "15022849-e8d6-404c-af6b-620e9c7bfbe9",
                  "name": "putong_zhongxing10_7",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 127.0373425761396,
                      "y": 1.4210854715202004e-14,
                      "z": 18.30853909297924
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
                  "_$id": "blivk2i3",
                  "_$prefab": "56e5ee0e-3110-4a2c-b1d1-0eed3160eb3b",
                  "name": "putong_zhongxing11_7",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 127.0373425761396,
                      "y": 1.4210854715202004e-14,
                      "z": 31.33299893184641
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
                  "_$id": "y4onwnb0",
                  "_$prefab": "8d384534-cb12-4904-8380-24d2281612a9",
                  "name": "putong_zhongxing12_7",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 127.0373425761396,
                      "y": 1.4210854715202004e-14,
                      "z": 26.30408352657298
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
                  "_$id": "rptjdqnp",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_36",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 122.7250561991865,
                      "y": 1.4210854715202004e-14,
                      "z": 30.904867828330786
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
                  "_$id": "c58lyu1l",
                  "_$prefab": "1385bc70-85bd-4db8-b2bb-45be7ceaa6c1",
                  "name": "putong_zhongxing14_7",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 122.7250561991865,
                      "y": 1.4210854715202004e-14,
                      "z": 26.58399075313548
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
                  "_$id": "qb3gisdi",
                  "_$prefab": "b874a152-89cd-4701-9521-e7aa643651f4",
                  "name": "putong_zhongxing15_7",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 122.7250561991865,
                      "y": 1.4210854715202004e-14,
                      "z": 22.331091583213617
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
                  "_$id": "kbgjcde6",
                  "_$prefab": "931a193d-28a0-45d6-92ad-6d8bdd24109c",
                  "name": "putong_zhongxing16_7",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 122.7250561991865,
                      "y": 1.4210854715202004e-14,
                      "z": 18.415747344932367
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
                  "_$id": "4g7lkzc1",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_108",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 7.805618390459422,
                      "z": -13.135369023718106
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7149630196905843,
                      "w": 0.699162270488705
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.2,
                      "y": 1.2,
                      "z": 1.2
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
                  "_$id": "7xd2gqme",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_109",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 7.886062726396922,
                      "z": 23.488390245996257
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7149630196905843,
                      "w": 0.699162270488705
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
                    },
                    {
                      "_$id": "lpvo8m9e",
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
                  "_$id": "65qrft98",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_110",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 9.128067120928172,
                      "z": 23.778887072168132
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7149630196905843,
                      "w": 0.699162270488705
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
                  "_$id": "4n5g5i7m",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_111",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 8.479873761553172,
                      "z": 48.01172761019299
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7149630196905843,
                      "w": 0.699162270488705
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.2,
                      "y": 1.2,
                      "z": 1.2
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
                  "_$id": "xycp7sa8",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_112",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 11.897689923662547,
                      "z": 38.78498200472427
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.699162270488705,
                      "w": 0.7149630196905843
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
                  "_$id": "qm55gh36",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_120",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 7.862945660967235,
                      "y": -5.684341886080802e-14,
                      "z": -49.21894904080799
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7149630196905843,
                      "w": 0.699162270488705
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
                    },
                    {
                      "_$id": "i158iwpp",
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
                  "_$id": "5og16pd7",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_121",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 8.36999522151411,
                      "y": -5.684341886080802e-14,
                      "z": -43.705597600378326
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7149630196905843,
                      "w": 0.699162270488705
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
                  "_$id": "0h1fb8ik",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_49",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 129.149818256809,
                      "z": -79.79189169292772
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#119",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.000003814697265625,
                          "y": -0.22013092041015625,
                          "z": 4.284099578857422
                        }
                      }
                    }
                  ]
                },
                {
                  "_$id": "bwbomndu",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_50",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 138.35925215077629,
                      "y": -1.9326762412674725e-12,
                      "z": 75.43304035061945
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "971tkks5",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_191",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 8.292739972490672,
                      "z": 75.93185738619398
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7149630196905843,
                      "w": 0.699162270488705
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.2,
                      "y": 1.2,
                      "z": 1.2
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
                  "_$id": "opov7h17",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_204",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 134.92926850376028,
                      "y": 5.684341886080802e-14,
                      "z": 93.0954790841863
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
                  "_$id": "lrxmq5hg",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_205",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 129.44712128696338,
                      "y": 5.684341886080802e-14,
                      "z": 92.91711909883473
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
                  "_$id": "bvwqzxyp",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_206",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 126.70951142368213,
                      "y": 5.684341886080802e-14,
                      "z": 89.72887141817067
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
                  "_$id": "nhttrnva",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_207",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 121.2266928201665,
                      "y": 5.684341886080802e-14,
                      "z": 89.7570544015691
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
                  "_$id": "357t5zoa",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_208",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 87.74524750766649,
                      "y": 5.684341886080802e-14,
                      "z": 92.68872554414723
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
                  "_$id": "0tleu6ex",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_209",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 82.26310029086963,
                      "y": 5.684341886080802e-14,
                      "z": 92.5103503000066
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
                  "_$id": "ytgdrcc2",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_210",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 79.52549042758838,
                      "y": 5.684341886080802e-14,
                      "z": 89.3221178781316
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
                  "_$id": "m9lcfl6b",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_211",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 74.04264130649463,
                      "y": 5.684341886080802e-14,
                      "z": 89.35028560274098
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
                  "_$id": "vw59ovob",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_212",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 68.43692841586963,
                      "z": 92.90457637422536
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
                  "_$id": "3inodpfl",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_213",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 62.95478119907275,
                      "z": 92.72620113008473
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
                  "_$id": "fz8svjoc",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_214",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 60.2171713357915,
                      "z": 89.53795344942067
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
                  "_$id": "w332hhjb",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_215",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 54.73435273227588,
                      "z": 89.5661364328191
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
                  "_$id": "fj4kcpeg",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_216",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 21.252907419775937,
                      "z": 92.49780757539723
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
                  "_$id": "9lo4g0qr",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_217",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 15.770760202979062,
                      "z": 92.31944759004567
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
                  "_$id": "hx87mo3y",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_218",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 13.033150339697812,
                      "z": 89.1311999093816
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
                  "_$id": "90cam7m7",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_219",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 7.550301218604076,
                      "z": 89.15938289278004
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
                  "_$id": "7py169yb",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_4",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -23.142383575439453,
                      "y": -5.471179065352771e-13,
                      "z": 84.93919372558594
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
                  "_$id": "t88hc3m4",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_3",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -18.347240447998047,
                      "y": -5.471179065352771e-13,
                      "z": 85.05903625488281
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
                  "_$id": "tf6as193",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_7",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -8.757770538330078,
                      "y": 2.4868995751603507e-13,
                      "z": 85.19306945800781
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
                  "_$id": "w21ebr9d",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_8",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -13.602603912353516,
                      "y": -5.471179065352771e-13,
                      "z": 85.22137451171875
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
                  "_$id": "03mlvpgs",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_9",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 90.11976623535156,
                      "y": -7.176481631177012e-13,
                      "z": 56.880672454833984
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
                  "_$id": "kflq00yf",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_10",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.52491760253906,
                      "y": -6.963318810448982e-13,
                      "z": 53.0955924987793
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
                  "_$id": "lq9g3b01",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_11",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 75.748779296875,
                      "y": -7.247535904753022e-13,
                      "z": 56.82513427734375
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
                  "_$id": "r4j50jz0",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_12",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 78.34827423095703,
                      "y": -7.247535904753022e-13,
                      "z": 52.957706451416016
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
                  "_$id": "3rwwiris",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_13",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 73.21160125732422,
                      "y": -7.247535904753022e-13,
                      "z": 52.93609619140625
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.2000000476837158,
                      "y": 1.2000000476837158,
                      "z": 1.2000000476837158
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "hsxqjvkj",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_14",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 83.12420654296875,
                      "y": 7.105427357601002e-14,
                      "z": 56.74650955200195
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
                  "_$id": "o1c0ysu3",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_15",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 83.20941162109375,
                      "y": 7.105427357601002e-14,
                      "z": 53.17066955566406
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
                  "_$id": "odyqpb6o",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_16",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 87.98687744140625,
                      "y": 7.105427357601002e-14,
                      "z": 53.13121795654297
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
                  "_$id": "1ny6urnw",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_18",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -6.287082672119141,
                      "y": 3.126388037344441e-13,
                      "z": 85.04635620117188
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
                  "_$id": "drpz89a2",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_19",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -20.512699127197266,
                      "y": 3.765876499528531e-13,
                      "z": 85.01171875
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
                  "_$id": "3f1r2kr4",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_20",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -11.177921295166016,
                      "y": 3.197442310920451e-13,
                      "z": 85.05992126464844
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
                  "_$id": "2bgsczme",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_29",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 81.22688293457031,
                      "y": 1.4210854715202004e-13,
                      "z": 81.68246459960938
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.2000000476837158,
                      "y": 1.2000000476837158,
                      "z": 1.2000000476837158
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3"
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "lkzrv3le",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_30",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 78.41021728515625,
                      "y": 9.308109838457312e-13,
                      "z": 81.22396850585938
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
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3"
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "zpme3s2i",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_31",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 75.89004516601562,
                      "y": 9.308109838457312e-13,
                      "z": 81.24043273925781
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
                  "_$id": "1h307nnz",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_32",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 85.64324188232422,
                      "y": 1.3500311979441904e-13,
                      "z": 81.45606994628906
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
                  "_$id": "ziia00a6",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_33",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.6814956665039,
                      "y": 1.9184653865522705e-13,
                      "z": 85.14717102050781
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
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3"
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "irvbaiqh",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_34",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 90.26588439941406,
                      "y": 1.7763568394002505e-13,
                      "z": 85.16854858398438
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
                  "_$id": "95zgerf2",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_35",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 75.72470092773438,
                      "y": 1.7763568394002505e-13,
                      "z": 84.92495727539062
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
                  "_$id": "mjjnko56",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_36",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 85.42130279541016,
                      "y": 9.734435479913373e-13,
                      "z": 84.92544555664062
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
                  "_$id": "r7gzds18",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_38",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -18.610912322998047,
                      "y": -0.4687836170196533,
                      "z": 17.746044158935547
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
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3"
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "y305i9in",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_39",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 90.39635467529297,
                      "y": 6.892264536872972e-13,
                      "z": 81.55183410644531
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
                  "_$id": "6pni6wy2",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_40",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -3.8771133422851562,
                      "y": -0.26513323187828064,
                      "z": 17.84746551513672
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.2000000476837158,
                      "y": 1.2000000476837158,
                      "z": 1.2000000476837158
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "94vqgcm9",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_41",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 88.06048583984375,
                      "y": 9.308109838457312e-13,
                      "z": 81.62693786621094
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
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3"
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "czrlhq09",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_42",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -20.977771759033203,
                      "y": -0.31523624062538147,
                      "z": 17.821613311767578
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
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3"
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "pq0ch8cg",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_43",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -8.502666473388672,
                      "y": -0.46795862913131714,
                      "z": 17.770687103271484
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
                  "_$id": "3wvcyzpy",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_44",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -15.951862335205078,
                      "y": -0.26768338680267334,
                      "z": 17.89188003540039
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
                  "_$id": "52nz0z32",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_45",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -23.502986907958984,
                      "y": -0.2901192903518677,
                      "z": 17.870269775390625
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.2000000476837158,
                      "y": 1.2000000476837158,
                      "z": 1.2000000476837158
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "3z6mveh6",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_46",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -11.265789031982422,
                      "y": -0.35964125394821167,
                      "z": 17.649675369262695
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
                  "_$id": "k4e53bg0",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_47",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -6.103176116943359,
                      "y": -0.3595690131187439,
                      "z": 17.925338745117188
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
                  "_$id": "knpypdqz",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_48",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 157.06484985351562,
                      "y": -0.294179230928421,
                      "z": 42.21402359008789
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
                  "_$id": "kmrdswcd",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_49",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 160.5923309326172,
                      "y": -0.33107081055641174,
                      "z": 39.725982666015625
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
                  "_$id": "iesw4zhj",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_50",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 160.91490173339844,
                      "y": -0.3325933814048767,
                      "z": 44.55154800415039
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
                  "_$id": "8ckuizqf",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_51",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 160.89370727539062,
                      "y": -0.3683876395225525,
                      "z": 30.039628982543945
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
                  "_$id": "1mqiek0t",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_52",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 160.76287841796875,
                      "y": -0.5237388014793396,
                      "z": 35.18463897705078
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
                  "_$id": "h9ln0ubb",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_53",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 160.59312438964844,
                      "y": -0.3109881281852722,
                      "z": 27.707534790039062
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
                  "_$id": "mpmyu3ja",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_54",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 160.0081024169922,
                      "y": -7.247535904753022e-13,
                      "z": 37.660888671875
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
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.30857250207942855,
                          "y": 7.401257955473421e-16,
                          "z": 0.031225479943465473
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "4ycnroyx",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_55",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 156.46299743652344,
                      "y": -0.24705104529857635,
                      "z": 32.67765808105469
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.2000000476837158,
                      "y": 1.2000000476837158,
                      "z": 1.2000000476837158
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "y80uiixi",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_54",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 84.23791454715763,
                      "z": -69.89783096313477
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "ia24g5aw",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_55",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 120.32149505615234,
                      "y": 1.5631940186722204e-13,
                      "z": -0.37660621381898807
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "5sq2d6yz",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_56",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 138.35925674438477,
                      "y": -1.9326762412674725e-12,
                      "z": 8.194045820331993
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "7vowcjfh",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_57",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 138.35925674438477,
                      "y": -1.9326762412674725e-12,
                      "z": 31.15087107667965
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "6jrwtdi9",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_58",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 138.35925674438477,
                      "y": -1.9326762412674725e-12,
                      "z": -36.93066725047327
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "jwpfi4x5",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_59",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 138.35925674438477,
                      "y": -1.9326762412674725e-12,
                      "z": -13.973841994125618
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "hyk61u8r",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_60",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 22.313522198376553,
                      "z": 28.909580647220523
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "2pmh6vfw",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_41",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 123.92229885700912,
                      "z": -65.18538776215212
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "vvhv6xxn",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_61",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 89.1773723986091,
                      "y": 2.0463630789890885e-12,
                      "z": -21.46472930908203
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "uekm8dk0",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_62",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 67.42792171501534,
                      "y": 2.0463630789890885e-12,
                      "z": -21.46472930908203
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "s21e77dp",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_63",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 67.42792171501534,
                      "y": 2.0463630789890885e-12,
                      "z": -10.245491027832031
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "puec9u5r",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_64",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 67.27057308220284,
                      "y": 2.0463630789890885e-12,
                      "z": 1.0709342956542969
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "8rqinikh",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_65",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 89.1773723986091,
                      "y": 2.0463630789890885e-12,
                      "z": -10.245491027832031
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "46tm0ntt",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_66",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 89.0200237657966,
                      "y": 2.0463630789890885e-12,
                      "z": 1.0709342956542969
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "sga4v00d",
                  "_$prefab": "6b019b59-2b62-452a-ab80-6ddb5074b33d",
                  "name": "daxingjianzhu_shuita",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -11.55149596946407,
                      "z": 54.41445600592948
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "xo0vvln1",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_37",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 64.18068786276817,
                      "z": 69.0457827778611
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
                  }
                },
                {
                  "_$id": "vklg8o9m",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_38",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 64.18068786276817,
                      "z": 63.41922256667947
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
                  }
                },
                {
                  "_$id": "w5h6yfg5",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_39",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 64.18068786276817,
                      "z": 57.68140670974588
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
                  }
                },
                {
                  "_$id": "x70n9lhp",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_41",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 57.00645446777344,
                      "z": 81.56598027859083
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
                  }
                },
                {
                  "_$id": "lzpswfbq",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_42",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 57.00645446777344,
                      "z": 75.82816442165732
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
                  }
                },
                {
                  "_$id": "7plhgvqs",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_42",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 42.8184928894043,
                      "z": 77.49978383694052
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "y8wkri9q",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_44",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 64.1806869506836,
                      "z": 81.56598027859083
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
                  }
                },
                {
                  "_$id": "dg9jjfbe",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_45",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 64.1806869506836,
                      "z": 75.82816442165732
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
                  }
                },
                {
                  "_$id": "096pn2uh",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_67",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.9690528689391158,
                      "y": -1.3073986337985843e-12,
                      "z": -32.47798544357306
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "yi3m324f",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_43",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -19.479806500530913,
                      "y": 6.252776074688883e-13,
                      "z": -33.529874403049284
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "8kkvlkje",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_44",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -19.479806500530913,
                      "y": 6.252776074688883e-13,
                      "z": -22.254746992160612
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "xii74pjk",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_45",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -19.479806500530913,
                      "y": 6.252776074688883e-13,
                      "z": -41.96291883664303
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "ss04b0nn",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_224",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 102.73565991632282,
                      "z": 25.608261258758816
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7149630196905843,
                      "w": 0.699162270488705
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
                    },
                    {
                      "_$id": "iz4nwemi",
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
                  "_$id": "qx6hr5vn",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_225",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 102.65521558038532,
                      "z": -11.015497057281234
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7149630196905843,
                      "w": 0.699162270488705
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.2,
                      "y": 1.2,
                      "z": 1.2
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
                  "_$id": "dqvlnkmm",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_226",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 103.97766431085407,
                      "z": 25.89875808493069
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7149630196905843,
                      "w": 0.699162270488705
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
                  "_$id": "2m3amaa7",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_227",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 102.71254285089313,
                      "y": -5.684341886080802e-14,
                      "z": -47.09907707437105
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7149630196905843,
                      "w": 0.699162270488705
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
                    },
                    {
                      "_$id": "czkct23m",
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
                  "_$id": "jf7gigk7",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_228",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 103.32947095147907,
                      "z": 50.13159766928129
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7149630196905843,
                      "w": 0.699162270488705
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.2,
                      "y": 1.2,
                      "z": 1.2
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
                  "_$id": "a6851ssr",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_229",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 106.74728711358844,
                      "z": 40.90485206381251
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.699162270488705,
                      "w": 0.7149630196905843
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
                  "_$id": "9x6blb1i",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_230",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 103.21959241144,
                      "y": -5.684341886080802e-14,
                      "z": -41.585725633941365
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7149630196905843,
                      "w": 0.699162270488705
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
                  "_$id": "9cq4xs3t",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_231",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 103.14233716241657,
                      "z": 78.05172172323644
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7149630196905843,
                      "w": 0.699162270488705
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.2,
                      "y": 1.2,
                      "z": 1.2
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
                  "_$id": "geklmobe",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_232",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 149.00773566971242,
                      "z": 26.642433887572032
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7149630196905843,
                      "w": 0.699162270488705
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
                    },
                    {
                      "_$id": "uosxzxfz",
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
                  "_$id": "7xmmxeg0",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_233",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 148.92729133377492,
                      "z": -9.981324428467996
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7149630196905843,
                      "w": 0.699162270488705
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.2,
                      "y": 1.2,
                      "z": 1.2
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
                  "_$id": "lw2wg04f",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_234",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 150.24974006424367,
                      "z": 26.93293071374391
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7149630196905843,
                      "w": 0.699162270488705
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
                  "_$id": "wfd2fkw4",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_235",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 148.98461860428273,
                      "y": -5.684341886080802e-14,
                      "z": -46.06490444555782
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7149630196905843,
                      "w": 0.699162270488705
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
                    },
                    {
                      "_$id": "l0bgl1a4",
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
                  "_$id": "jjkfteqw",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_236",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 149.60154670486867,
                      "z": 51.16577029809452
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7149630196905843,
                      "w": 0.699162270488705
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.2,
                      "y": 1.2,
                      "z": 1.2
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
                  "_$id": "igb747nj",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_237",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 153.01936286697804,
                      "z": 41.93902469262575
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.699162270488705,
                      "w": 0.7149630196905843
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
                  "_$id": "01izos8z",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_238",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 149.4916681648296,
                      "y": -5.684341886080802e-14,
                      "z": -40.551553005128135
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7149630196905843,
                      "w": 0.699162270488705
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
                  "_$id": "fenj0wfi",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_239",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 149.41441291580617,
                      "z": 79.08589435204959
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7149630196905843,
                      "w": 0.699162270488705
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.2,
                      "y": 1.2,
                      "z": 1.2
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
                  "_$id": "80ebjddf",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_240",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 101.82267693066433,
                      "y": 5.684341886080802e-14,
                      "z": 13.540045656351479
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
                  "_$id": "olmoxx6f",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_241",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 96.34052971386745,
                      "y": 5.684341886080802e-14,
                      "z": 13.361685670999917
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
                  "_$id": "9f2f846w",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_242",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 93.60290459179711,
                      "y": 5.684341886080802e-14,
                      "z": 10.173437990335854
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
                  "_$id": "mn6kpzpr",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_243",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 88.12008980297878,
                      "y": 5.684341886080802e-14,
                      "z": 10.201620973734292
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
                  "_$id": "4b3vu0ru",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_244",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 54.63864449047877,
                      "y": 5.684341886080802e-14,
                      "z": 13.133292116312417
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
                  "_$id": "23mdmzwe",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_245",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 49.15649727368189,
                      "y": 5.684341886080802e-14,
                      "z": 12.954916872171792
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
                  "_$id": "10alg7rj",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_246",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 46.41888741040064,
                      "y": 5.684341886080802e-14,
                      "z": 9.766684450296792
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
                  "_$id": "nduie5qd",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_247",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 40.93603828930689,
                      "y": 5.684341886080802e-14,
                      "z": 9.794852174906167
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
                  "_$id": "yf94huxa",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_248",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 35.33032539868189,
                      "z": 13.349142946390542
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
                  "_$id": "gyk9ojn0",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_249",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 29.848178181885014,
                      "z": 13.170767702249917
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
                  "_$id": "bbpnjr7r",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_250",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 27.110568318603764,
                      "z": 9.982520021585854
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
                  "_$id": "uw14xzf1",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_251",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 21.62774971508815,
                      "z": 10.010703004984292
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
                  "_$id": "m5olt5h3",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_252",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -11.853695597411829,
                      "z": 12.942374147562417
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
                  "_$id": "zbhilx76",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_253",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -17.335842814208704,
                      "z": 12.764014162210854
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
                  "_$id": "qs124st5",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_254",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -20.073452677489954,
                      "z": 9.575766481546792
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
                  "_$id": "xcfjhx2l",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_255",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -25.556301798583732,
                      "z": 9.603949464945229
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
                  "_$id": "trto4t4f",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_256",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 101.82267761230469,
                      "y": 5.684341886080802e-14,
                      "z": -50.3238483374049
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
                  "_$id": "1bxm076v",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_257",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 96.34053039550781,
                      "y": 5.684341886080802e-14,
                      "z": -50.50220832275646
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
                  "_$id": "su5w2tk5",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_258",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 93.6029052734375,
                      "y": 5.684341886080802e-14,
                      "z": -53.69045600342052
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
                  "_$id": "8tfxocmx",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_259",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 88.12008666992188,
                      "y": 5.684341886080802e-14,
                      "z": -53.662273020022084
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
                  "_$id": "30yi1rl0",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_260",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 54.63864517211914,
                      "y": 5.684341886080802e-14,
                      "z": -50.73060187744396
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
                  "_$id": "fovw463b",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_261",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 49.156497955322266,
                      "y": 5.684341886080802e-14,
                      "z": -50.908977121584584
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
                  "_$id": "kky0iaz3",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_262",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 46.418888092041016,
                      "y": 5.684341886080802e-14,
                      "z": -54.09720954345957
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
                  "_$id": "mtbppo4n",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_263",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 40.936038970947266,
                      "y": 5.684341886080802e-14,
                      "z": -54.069041818850195
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
                  "_$id": "11nff63d",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_264",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 35.330326080322266,
                      "z": -50.514751047365834
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
                  "_$id": "iv7vnbyp",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_265",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 29.84817886352539,
                      "z": -50.69312629150646
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
                  "_$id": "qu3xxqom",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_266",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 27.11056900024414,
                      "z": -53.88137397217052
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
                  "_$id": "l10d03yo",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_267",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 21.627750396728516,
                      "z": -53.853190988772084
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
                  "_$id": "nn4zdqzu",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_268",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -11.853694915771484,
                      "z": -50.92151984619396
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
                  "_$id": "ymcnpz2u",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_269",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -17.33584213256836,
                      "z": -51.09987983154552
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
                  "_$id": "85g22rny",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_270",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -20.07345199584961,
                      "z": -54.28812751220957
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
                  "_$id": "ph8xiguv",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_271",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -25.55630111694336,
                      "z": -54.25994452881113
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
                  "_$id": "7yms4l2b",
                  "_$prefab": "15022849-e8d6-404c-af6b-620e9c7bfbe9",
                  "name": "putong_zhongxing10_12",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -10.232403097008628,
                      "z": 25.599151322483998
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
                  "_$id": "ooyt8dbv",
                  "_$prefab": "56e5ee0e-3110-4a2c-b1d1-0eed3160eb3b",
                  "name": "putong_zhongxing11_8",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -10.232403097008628,
                      "z": 38.62361306869982
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
                  "_$id": "gyd4ccg7",
                  "_$prefab": "8d384534-cb12-4904-8380-24d2281612a9",
                  "name": "putong_zhongxing12_8",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -10.232403097008628,
                      "z": 33.59469575607775
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
                  "_$id": "qrb2h0g1",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_46",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -14.544689473961768,
                      "z": 38.19548196518419
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
                  "_$id": "ky4wdrux",
                  "_$prefab": "1385bc70-85bd-4db8-b2bb-45be7ceaa6c1",
                  "name": "putong_zhongxing14_8",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -14.544689473961768,
                      "z": 33.87460298264025
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
                  "_$id": "355qv7k7",
                  "_$prefab": "b874a152-89cd-4701-9521-e7aa643651f4",
                  "name": "putong_zhongxing15_12",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -14.544689473961768,
                      "z": 29.621703812718373
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
                  "_$id": "in9p4o10",
                  "_$prefab": "931a193d-28a0-45d6-92ad-6d8bdd24109c",
                  "name": "putong_zhongxing16_12",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -14.544689473961768,
                      "z": 25.706359574437123
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
                  "_$id": "rvbr6l9y",
                  "_$prefab": "6312d869-f268-44f5-92ae-6bae3af203cf",
                  "name": "putong_zhongxing09_12",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.8027155970086355,
                      "z": 30.044997880101185
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
                  "_$id": "3yoad3j8",
                  "_$prefab": "15022849-e8d6-404c-af6b-620e9c7bfbe9",
                  "name": "putong_zhongxing10_13",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.8027155970086355,
                      "z": 25.599151322483998
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
                  "_$id": "je5nfonl",
                  "_$prefab": "56e5ee0e-3110-4a2c-b1d1-0eed3160eb3b",
                  "name": "putong_zhongxing11_9",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.8027155970086355,
                      "z": 38.62361306869982
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
                  "_$id": "z74n1rz5",
                  "_$prefab": "8d384534-cb12-4904-8380-24d2281612a9",
                  "name": "putong_zhongxing12_9",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.8027155970086355,
                      "z": 33.59469575607775
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
                  "_$id": "0kq9jdh2",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_47",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -5.1150019739617605,
                      "z": 38.19548196518419
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
                  "_$id": "5tmwenbo",
                  "_$prefab": "1385bc70-85bd-4db8-b2bb-45be7ceaa6c1",
                  "name": "putong_zhongxing14_9",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -5.1150019739617605,
                      "z": 33.87460298264025
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
                  "_$id": "bnhbvyrb",
                  "_$prefab": "b874a152-89cd-4701-9521-e7aa643651f4",
                  "name": "putong_zhongxing15_13",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -5.1150019739617605,
                      "z": 29.621703812718373
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
                  "_$id": "2v1jg8p3",
                  "_$prefab": "931a193d-28a0-45d6-92ad-6d8bdd24109c",
                  "name": "putong_zhongxing16_13",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -5.1150019739617605,
                      "z": 25.706359574437123
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
                  "_$id": "wd662v99",
                  "_$prefab": "6312d869-f268-44f5-92ae-6bae3af203cf",
                  "name": "putong_zhongxing09_13",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -10.232403097008628,
                      "z": 30.044997880101185
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
                  "_$id": "i1anph7a",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_68",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -24.30977278695005,
                      "z": 32.566217133641224
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "16pr0z7p",
                  "_$prefab": "15022849-e8d6-404c-af6b-620e9c7bfbe9",
                  "name": "putong_zhongxing10_14",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -10.232402801513672,
                      "z": 63.647107617435545
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
                  "_$id": "4qfp3lo2",
                  "_$prefab": "56e5ee0e-3110-4a2c-b1d1-0eed3160eb3b",
                  "name": "putong_zhongxing11_10",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -10.232402801513672,
                      "z": 76.67156745630272
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
                  "_$id": "n7w2sn1y",
                  "_$prefab": "8d384534-cb12-4904-8380-24d2281612a9",
                  "name": "putong_zhongxing12_10",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -10.232402801513672,
                      "z": 71.6426520510293
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
                  "_$id": "p6w91ndd",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_48",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -14.544689178466797,
                      "z": 76.24343635278711
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
                  "_$id": "aahwgree",
                  "_$prefab": "1385bc70-85bd-4db8-b2bb-45be7ceaa6c1",
                  "name": "putong_zhongxing14_10",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -14.544689178466797,
                      "z": 71.9225592775918
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
                  "_$id": "obw29swq",
                  "_$prefab": "b874a152-89cd-4701-9521-e7aa643651f4",
                  "name": "putong_zhongxing15_14",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -14.544689178466797,
                      "z": 67.66966010766993
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
                  "_$id": "mysqol97",
                  "_$prefab": "931a193d-28a0-45d6-92ad-6d8bdd24109c",
                  "name": "putong_zhongxing16_14",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -14.544689178466797,
                      "z": 63.75431586938867
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
                  "_$id": "ngxde75f",
                  "_$prefab": "6312d869-f268-44f5-92ae-6bae3af203cf",
                  "name": "putong_zhongxing09_14",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.8027153015136719,
                      "z": 68.09295417505274
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
                  "_$id": "1lxvsdm6",
                  "_$prefab": "15022849-e8d6-404c-af6b-620e9c7bfbe9",
                  "name": "putong_zhongxing10_15",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.8027153015136719,
                      "z": 63.647107617435545
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
                  "_$id": "t07dt43u",
                  "_$prefab": "56e5ee0e-3110-4a2c-b1d1-0eed3160eb3b",
                  "name": "putong_zhongxing11_11",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.8027153015136719,
                      "z": 76.67156745630272
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
                  "_$id": "nmy0sfgq",
                  "_$prefab": "8d384534-cb12-4904-8380-24d2281612a9",
                  "name": "putong_zhongxing12_11",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.8027153015136719,
                      "z": 71.6426520510293
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
                  "_$id": "xzrhh0d0",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_49",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -5.115001678466797,
                      "z": 76.24343635278711
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
                  "_$id": "dh0er3f5",
                  "_$prefab": "1385bc70-85bd-4db8-b2bb-45be7ceaa6c1",
                  "name": "putong_zhongxing14_11",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -5.115001678466797,
                      "z": 71.9225592775918
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
                  "_$id": "w8zhqbbv",
                  "_$prefab": "b874a152-89cd-4701-9521-e7aa643651f4",
                  "name": "putong_zhongxing15_15",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -5.115001678466797,
                      "z": 67.66966010766993
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
                  "_$id": "4b73igo9",
                  "_$prefab": "931a193d-28a0-45d6-92ad-6d8bdd24109c",
                  "name": "putong_zhongxing16_15",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -5.115001678466797,
                      "z": 63.75431586938867
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
                  "_$id": "h6u35w5e",
                  "_$prefab": "6312d869-f268-44f5-92ae-6bae3af203cf",
                  "name": "putong_zhongxing09_15",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -10.232402801513672,
                      "z": 68.09295417505274
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
                  "_$id": "tnm2cnct",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_69",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -24.309772491455078,
                      "z": 70.61417152124415
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "oeq2clpq",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_53",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 162.62703664350087,
                      "z": -76.18321593853203
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
                  "_$id": "3ae574go",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_54",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 162.62703664350087,
                      "z": -68.15927489849297
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
                  "_$id": "pdevaxdn",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_55",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 162.62703664350087,
                      "y": -1.2647660696529783e-12,
                      "z": -84.20717223736014
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
                  "_$id": "kaa1plqn",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_70",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 150.23963320099358,
                      "y": -1.9326762412674725e-12,
                      "z": -74.35359936984321
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "2dok7z81",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_46",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 83.13561023836675,
                      "z": -40.662109375
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "epiph24o",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_47",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -13.83571365814322,
                      "y": 6.252776074688882e-13,
                      "z": -9.46139987832294
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "cm1vmkgk",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_272",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -18.610912322998047,
                      "y": -0.46878361701971016,
                      "z": 0.3903928174230167
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
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3"
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "anf0wlkk",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_273",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -3.8771133422851562,
                      "y": -0.2651332318783375,
                      "z": 0.49181417362418856
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.2000000476837158,
                      "y": 1.2000000476837158,
                      "z": 1.2000000476837158
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "901ykczs",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_274",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -20.977771759033203,
                      "y": -0.3152362406254383,
                      "z": 0.46596197025504793
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
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3"
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "un6iamyv",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_275",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -8.502666473388672,
                      "y": -0.467958629131374,
                      "z": 0.4150357617589542
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
                  "_$id": "893aodqn",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_276",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -15.951862335205078,
                      "y": -0.2676833868027302,
                      "z": 0.5362286938878604
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
                  "_$id": "zekrhcrs",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_277",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -23.502986907958984,
                      "y": -0.2901192903519245,
                      "z": 0.5146184338780948
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.2000000476837158,
                      "y": 1.2000000476837158,
                      "z": 1.2000000476837158
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "vsf2igck",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_278",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -11.265789031982422,
                      "y": -0.3596412539482685,
                      "z": 0.2940240277501651
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
                  "_$id": "vhp4lou7",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_279",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -6.103176116943359,
                      "y": -0.35956901311880074,
                      "z": 0.5696874036046573
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
                  "_$id": "uk1xmfxb",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_280",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 27.456074949484975,
                      "y": -0.2651332318783375,
                      "z": 54.88419096484156
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.2000000476837158,
                      "y": 1.2000000476837158,
                      "z": 1.2000000476837158
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "wy4m2ihz",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_281",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 22.83052181838147,
                      "y": -0.467958629131374,
                      "z": 54.807412552976324
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
                  "_$id": "hk7k9t9b",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_282",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 20.06739925978772,
                      "y": -0.3596412539482685,
                      "z": 54.686400818967535
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
                  "_$id": "3ho59x1z",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_283",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 25.230012174826783,
                      "y": -0.35956901311880074,
                      "z": 54.96206419482203
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
                  "_$id": "uhtecl2k",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_284",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 27.45607566833496,
                      "y": -0.2651332318783375,
                      "z": 81.54294165308602
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.2000000476837158,
                      "y": 1.2000000476837158,
                      "z": 1.2000000476837158
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "tbcmj5ft",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_285",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 22.830524444580078,
                      "y": -0.467958629131374,
                      "z": 81.46616324122078
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
                  "_$id": "48fiusvd",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_286",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 20.067401885986328,
                      "y": -0.3596412539482685,
                      "z": 81.34515341456063
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
                  "_$id": "980v4ul7",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_287",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 25.23001480102539,
                      "y": -0.35956901311880074,
                      "z": 81.62081488306649
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
                  "_$id": "dnys3bri",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_288",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 97.4260564832831,
                      "y": -7.247535904753022e-13,
                      "z": 69.20883113324285
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
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.30857250207942855,
                          "y": 7.401257955473421e-16,
                          "z": 0.031225479943465473
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "lf2gne3z",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_289",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 98.0102849989081,
                      "y": -0.3310708105564686,
                      "z": 71.27392512738348
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
                  "_$id": "vtg5zfzn",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_290",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 98.33285579968936,
                      "y": -0.33259338140493355,
                      "z": 76.09949046551827
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
                  "_$id": "og7a6svf",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_291",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 98.31166134168154,
                      "y": -0.36838763952260933,
                      "z": 61.587571443911806
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
                  "_$id": "5hmo0xza",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_292",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 98.18083248425967,
                      "y": -0.5237388014793964,
                      "z": 66.73258143841863
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
                  "_$id": "pzw64nnd",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_293",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 98.01107845593936,
                      "y": -0.31098812818532906,
                      "z": 59.25547725140692
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
                  "_$id": "aeo8rvwf",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_71",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 105.36906043329029,
                      "y": 2.0463630789890885e-12,
                      "z": 106.06398067360152
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "6a98gpaz",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_72",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 10.440414773758938,
                      "y": 2.0463630789890885e-12,
                      "z": 106.0639762878418
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "vm237ggg",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_48",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -47.07576215355624,
                      "z": -69.19810794049738
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                },
                {
                  "_$id": "s9q7za7k",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_294",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -51.63035616218798,
                      "y": -0.4687836170189428,
                      "z": -60.95675760717883
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
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3"
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "i49mui20",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_295",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -36.89655718147509,
                      "y": -0.2651332318775701,
                      "z": -60.85533625097766
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.2000000476837158,
                      "y": 1.2000000476837158,
                      "z": 1.2000000476837158
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "1pmqs82e",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_296",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -53.997215598223136,
                      "y": -0.3152362406246709,
                      "z": -60.8811884543468
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
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3"
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "808xtum3",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_297",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -41.522110312578604,
                      "y": -0.4679586291306066,
                      "z": -60.93211466284289
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
                  "_$id": "6x19su8g",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_298",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -48.97130617439501,
                      "y": -0.2676833868019628,
                      "z": -60.810921730713986
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
                  "_$id": "a58o2375",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_299",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -56.52243074714892,
                      "y": -0.29011929035115713,
                      "z": -60.83253199072375
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.2000000476837158,
                      "y": 1.2000000476837158,
                      "z": 1.2000000476837158
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "rpi7m0e6",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_300",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -44.285232871172354,
                      "y": -0.3596412539475011,
                      "z": -61.05312639685168
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
                  "_$id": "g6cwd2mt",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_301",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -39.12261995613329,
                      "y": -0.35956901311803335,
                      "z": -60.77746302099719
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
                  "_$id": "wm84y76g",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_302",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -53.81728682093977,
                      "y": -0.46878361701971016,
                      "z": 82.70438684431912
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
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3"
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "iwm0gnlh",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_303",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -39.083491654924146,
                      "y": -0.2651332318783375,
                      "z": 82.80581201521755
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.2000000476837158,
                      "y": 1.2000000476837158,
                      "z": 1.2000000476837158
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "of7yh5m4",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_304",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -56.18415388636946,
                      "y": -0.3152362406254383,
                      "z": 82.77996362654568
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
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3"
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "66wwhla5",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_305",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -43.709040971330396,
                      "y": -0.467958629131374,
                      "z": 82.72902978865505
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
                  "_$id": "5x9plsno",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_306",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -51.15824446254133,
                      "y": -0.2676833868027302,
                      "z": 82.85023035017849
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
                  "_$id": "u3l38o6n",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_307",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -58.70936140590071,
                      "y": -0.2901192903519245,
                      "z": 82.82861627547146
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.2000000476837158,
                      "y": 1.2000000476837158,
                      "z": 1.2000000476837158
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "7anrnkiz",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_308",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -46.472163529924146,
                      "y": -0.3596412539482685,
                      "z": 82.6080199619949
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
                  "_$id": "fatomatk",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_309",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -41.30955061488508,
                      "y": -0.35956901311880074,
                      "z": 82.88368524519802
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
                  "_$id": "t6tjojgm",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_310",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -34.91057654973605,
                      "y": -7.247535904753022e-13,
                      "z": -36.25377694078264
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
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.30857250207942855,
                          "y": 7.401257955473421e-16,
                          "z": 0.031225479943465473
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "mfukwepx",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_311",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -34.32634803411105,
                      "y": -0.3310708105564686,
                      "z": -34.18868294664202
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
                  "_$id": "m47stuy8",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_312",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -34.0037772333298,
                      "y": -0.33259338140493355,
                      "z": -29.363125237901784
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
                  "_$id": "tym9aaob",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_313",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -34.02497169133761,
                      "y": -0.36838763952260933,
                      "z": -43.87503853746233
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
                  "_$id": "yax8ek19",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_314",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -34.15580054875949,
                      "y": -0.5237388014793964,
                      "z": -38.73002663560686
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
                  "_$id": "1cnjnarr",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_315",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -34.3255545770798,
                      "y": -0.31098812818532906,
                      "z": -46.20713082261858
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
                  "_$id": "oj41hb2c",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_316",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -38.46915817260742,
                      "y": -7.247535904753022e-13,
                      "z": -43.4626266822972
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
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.30857250207942855,
                          "y": 7.401257955473421e-16,
                          "z": 0.031225479943465473
                        }
                      },
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "ap0lbpxn",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_317",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -37.88492965698242,
                      "y": -0.3310708105564686,
                      "z": -41.39753268815657
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
                  "_$id": "fs7i8ir1",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_318",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -37.56235885620117,
                      "y": -0.33259338140493355,
                      "z": -39.814776096301664
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
                  "_$id": "jb6tmibs",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_319",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -37.58355282480197,
                      "y": -0.36838763952260933,
                      "z": -35.400529670147534
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
                  "_$id": "0ypfmjj8",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_320",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -37.71438217163086,
                      "y": -0.5237388014793964,
                      "z": -45.93887637712141
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
                  "_$id": "n31h1kzm",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_321",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -37.88413571054416,
                      "y": -0.31098812818532906,
                      "z": -37.732621955303784
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
                  "_$id": "szx6lebt",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_73",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 24.052776110902514,
                      "z": 67.85221444006504
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6,
                      "y": 0.6,
                      "z": 0.6
                    }
                  }
                }
              ]
            },
            {
              "_$id": "uu6sf9ic",
              "_$type": "Sprite3D",
              "name": "NpcBorn",
              "_$child": [
                {
                  "_$id": "t3nvm2ww",
                  "_$type": "Sprite3D",
                  "name": "Plane",
                  "transform": {
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "2xp2kjoy",
                  "_$type": "Sprite3D",
                  "name": "Plane_1",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -110.4680763827301,
                      "y": 5.684341886080802e-14,
                      "z": 89.32675705489817
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 15.6299991,
                      "y": 1,
                      "z": 11.4499993
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "y2o2ows6",
                  "_$type": "Sprite3D",
                  "name": "Plane_4",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -98.95267551083056,
                      "y": 5.684341886080802e-14,
                      "z": -75.45561875345469
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "eojui009",
                  "_$type": "Sprite3D",
                  "name": "Plane_5",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -98.93209903377978,
                      "y": 1.1368683772161603e-13,
                      "z": -60.81152619364023
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "kb8g4zjt",
                  "_$type": "Sprite3D",
                  "name": "Plane_6",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -98.95267551083056,
                      "y": 5.684341886080802e-14,
                      "z": -46.008215799353124
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "tb9jwmw0",
                  "_$type": "Sprite3D",
                  "name": "Plane_9",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -94.10557360629117,
                      "y": 5.684341886080802e-14,
                      "z": -2.010618510968735
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "qemdsh0d",
                  "_$type": "Sprite3D",
                  "name": "Plane_14",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -97.2618408203125,
                      "y": 1.1368683772161603e-13,
                      "z": 74.79666438008165
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "t2d0xtbp",
                  "_$type": "Sprite3D",
                  "name": "Plane_15",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -97.28241729736328,
                      "y": 5.684341886080802e-14,
                      "z": 90.24797358418321
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "0t0wxyl1",
                  "_$type": "Sprite3D",
                  "name": "Plane_17",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -83.07740977258841,
                      "y": 5.684341886080802e-14,
                      "z": -97.60215203063265
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "oo0lrxsb",
                  "_$type": "Sprite3D",
                  "name": "Plane_18",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -83.54542306861893,
                      "y": 1.1368683772161603e-13,
                      "z": -87.40576934814453
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ul5s94qx",
                  "_$type": "Sprite3D",
                  "name": "Plane_19",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -83.56599954566971,
                      "y": 5.684341886080802e-14,
                      "z": -71.95446014404297
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "pt981afe",
                  "_$type": "Sprite3D",
                  "name": "Plane_20",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -83.54542306861893,
                      "y": 1.1368683772161603e-13,
                      "z": -57.310367584228516
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "yo3n2x8g",
                  "_$type": "Sprite3D",
                  "name": "Plane_21",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -83.56599954566971,
                      "y": 5.684341886080802e-14,
                      "z": -42.507057189941406
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "1rxucztv",
                  "_$type": "Sprite3D",
                  "name": "Plane_22",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -83.54542306861893,
                      "y": 1.1368683772161603e-13,
                      "z": -27.86296272277832
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "2w734e5u",
                  "_$type": "Sprite3D",
                  "name": "Plane_23",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -83.56599954566971,
                      "y": 5.684341886080802e-14,
                      "z": -12.411653518676758
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "eyjqxr84",
                  "_$type": "Sprite3D",
                  "name": "Plane_24",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -83.56599954566971,
                      "y": 5.684341886080802e-14,
                      "z": 0.6097613573074341
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "99bt2hgw",
                  "_$type": "Sprite3D",
                  "name": "Plane_25",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -83.54542306861893,
                      "y": 1.1368683772161603e-13,
                      "z": 15.253857612609863
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "wf7c60de",
                  "_$type": "Sprite3D",
                  "name": "Plane_26",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -83.56599954566971,
                      "y": 5.684341886080802e-14,
                      "z": 30.705167770385742
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "j6ptsbcz",
                  "_$type": "Sprite3D",
                  "name": "Plane_27",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -83.54542306861893,
                      "y": 1.1368683772161603e-13,
                      "z": 45.34925842285156
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "l7rs0u4h",
                  "_$type": "Sprite3D",
                  "name": "Plane_28",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -83.56599954566971,
                      "y": 5.684341886080802e-14,
                      "z": 60.15256881713867
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "xat93olj",
                  "_$type": "Sprite3D",
                  "name": "Plane_29",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -83.54542306861893,
                      "y": 1.1368683772161603e-13,
                      "z": 74.79666137695312
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "d896us4v",
                  "_$type": "Sprite3D",
                  "name": "Plane_30",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -83.56599954566971,
                      "y": 5.684341886080802e-14,
                      "z": 90.24797058105469
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "gqo1e21h",
                  "_$type": "Sprite3D",
                  "name": "Plane_32",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -67.56470683069388,
                      "y": 5.684341886080802e-14,
                      "z": -97.60215203063265
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "4cdg8h2d",
                  "_$type": "Sprite3D",
                  "name": "Plane_33",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -68.032725234339,
                      "y": 1.1368683772161603e-13,
                      "z": -87.40576934814453
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "2h2ij5bl",
                  "_$type": "Sprite3D",
                  "name": "Plane_34",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -68.05330171138978,
                      "y": 5.684341886080802e-14,
                      "z": -71.95446014404297
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "vmbtw4qn",
                  "_$type": "Sprite3D",
                  "name": "Plane_35",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -68.032725234339,
                      "y": 1.1368683772161603e-13,
                      "z": -57.310367584228516
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "howjwfxk",
                  "_$type": "Sprite3D",
                  "name": "Plane_36",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -68.05330171138978,
                      "y": 5.684341886080802e-14,
                      "z": -42.507057189941406
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "pyd8bn7v",
                  "_$type": "Sprite3D",
                  "name": "Plane_37",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -68.032725234339,
                      "y": 1.1368683772161603e-13,
                      "z": -27.86296272277832
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "1cusctxa",
                  "_$type": "Sprite3D",
                  "name": "Plane_38",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -68.05330171138978,
                      "y": 5.684341886080802e-14,
                      "z": -12.411653518676758
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "32gm49bu",
                  "_$type": "Sprite3D",
                  "name": "Plane_40",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -68.05330171138978,
                      "y": 5.684341886080802e-14,
                      "z": 0.6097613573074341
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "su36x81h",
                  "_$type": "Sprite3D",
                  "name": "Plane_41",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -68.032725234339,
                      "y": 1.1368683772161603e-13,
                      "z": 15.253857612609863
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "pqf2kf7y",
                  "_$type": "Sprite3D",
                  "name": "Plane_42",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -68.05330171138978,
                      "y": 5.684341886080802e-14,
                      "z": 30.705167770385742
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "6qsqy7qg",
                  "_$type": "Sprite3D",
                  "name": "Plane_43",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -68.032725234339,
                      "y": 1.1368683772161603e-13,
                      "z": 45.34925842285156
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "jm4xlbkm",
                  "_$type": "Sprite3D",
                  "name": "Plane_44",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -68.05330171138978,
                      "y": 5.684341886080802e-14,
                      "z": 60.15256881713867
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "8wdqombj",
                  "_$type": "Sprite3D",
                  "name": "Plane_45",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -68.032725234339,
                      "y": 1.1368683772161603e-13,
                      "z": 74.79666137695312
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "d7c45sho",
                  "_$type": "Sprite3D",
                  "name": "Plane_46",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -68.05330171138978,
                      "y": 5.684341886080802e-14,
                      "z": 90.24797058105469
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "0b0rnf8h",
                  "_$type": "Sprite3D",
                  "name": "Plane_47",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -53.84829524011771,
                      "y": 5.684341886080802e-14,
                      "z": -97.60215203063265
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "zpft0oca",
                  "_$type": "Sprite3D",
                  "name": "Plane_48",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -54.31630982906553,
                      "y": 1.1368683772161603e-13,
                      "z": -87.40576934814453
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "erfiwp97",
                  "_$type": "Sprite3D",
                  "name": "Plane_49",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -54.33688630611631,
                      "y": 5.684341886080802e-14,
                      "z": -71.95446014404297
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "hkuakxmh",
                  "_$type": "Sprite3D",
                  "name": "Plane_50",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -54.31630982906553,
                      "y": 1.1368683772161603e-13,
                      "z": -57.310367584228516
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "dpdujx9e",
                  "_$type": "Sprite3D",
                  "name": "Plane_51",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -54.33688630611631,
                      "y": 5.684341886080802e-14,
                      "z": -42.507057189941406
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "jy0ju4mu",
                  "_$type": "Sprite3D",
                  "name": "Plane_52",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -54.31630982906553,
                      "y": 1.1368683772161603e-13,
                      "z": -27.86296272277832
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ylrfm3av",
                  "_$type": "Sprite3D",
                  "name": "Plane_53",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -54.33688630611631,
                      "y": 5.684341886080802e-14,
                      "z": -12.411653518676758
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "f4gjh8c5",
                  "_$type": "Sprite3D",
                  "name": "Plane_54",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -54.33688630611631,
                      "y": 5.684341886080802e-14,
                      "z": 0.6097613573074341
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "y6urds8q",
                  "_$type": "Sprite3D",
                  "name": "Plane_55",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -54.31630982906553,
                      "y": 1.1368683772161603e-13,
                      "z": 15.253857612609863
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "nmvtijuj",
                  "_$type": "Sprite3D",
                  "name": "Plane_56",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -54.33688630611631,
                      "y": 5.684341886080802e-14,
                      "z": 30.705167770385742
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "kngnpdqy",
                  "_$type": "Sprite3D",
                  "name": "Plane_57",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -54.31630982906553,
                      "y": 1.1368683772161603e-13,
                      "z": 45.34925842285156
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "nqlnujql",
                  "_$type": "Sprite3D",
                  "name": "Plane_58",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -54.33688630611631,
                      "y": 5.684341886080802e-14,
                      "z": 60.15256881713867
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "hz9ae2zd",
                  "_$type": "Sprite3D",
                  "name": "Plane_59",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -54.31630982906553,
                      "y": 1.1368683772161603e-13,
                      "z": 74.79666137695312
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "nvhepv43",
                  "_$type": "Sprite3D",
                  "name": "Plane_60",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -53.821148774405266,
                      "y": 5.684341886080802e-14,
                      "z": 85.65575757591964
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "xmrrnmnl",
                  "_$type": "Sprite3D",
                  "name": "Plane_62",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -36.9282856270806,
                      "y": 5.684341886080802e-14,
                      "z": -97.60215203063265
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "2hbohrhq",
                  "_$type": "Sprite3D",
                  "name": "Plane_63",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -37.396302992182534,
                      "y": 1.1368683772161603e-13,
                      "z": -87.40576934814453
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "iahgqeio",
                  "_$type": "Sprite3D",
                  "name": "Plane_64",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -37.416879469233315,
                      "y": 5.684341886080802e-14,
                      "z": -71.95446014404297
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "w5ya16zp",
                  "_$type": "Sprite3D",
                  "name": "Plane_65",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -37.396302992182534,
                      "y": 1.1368683772161603e-13,
                      "z": -57.310367584228516
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "0zqu29j8",
                  "_$type": "Sprite3D",
                  "name": "Plane_66",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -37.416879469233315,
                      "y": 5.684341886080802e-14,
                      "z": -42.507057189941406
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "7a66dqrd",
                  "_$type": "Sprite3D",
                  "name": "Plane_67",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -37.396302992182534,
                      "y": 1.1368683772161603e-13,
                      "z": -27.86296272277832
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "d0tkb6za",
                  "_$type": "Sprite3D",
                  "name": "Plane_68",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -37.416879469233315,
                      "y": 5.684341886080802e-14,
                      "z": -12.411653518676758
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "xkw55x3w",
                  "_$type": "Sprite3D",
                  "name": "Plane_70",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -37.416879469233315,
                      "y": 5.684341886080802e-14,
                      "z": 0.6097613573074341
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "7e3wsz9d",
                  "_$type": "Sprite3D",
                  "name": "Plane_71",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -37.396302992182534,
                      "y": 1.1368683772161603e-13,
                      "z": 15.253857612609863
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "3vez58wm",
                  "_$type": "Sprite3D",
                  "name": "Plane_72",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -37.416879469233315,
                      "y": 5.684341886080802e-14,
                      "z": 30.705167770385742
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "5hbw43pk",
                  "_$type": "Sprite3D",
                  "name": "Plane_73",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -37.396302992182534,
                      "y": 1.1368683772161603e-13,
                      "z": 45.34925842285156
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "zhuofujo",
                  "_$type": "Sprite3D",
                  "name": "Plane_74",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -37.416879469233315,
                      "y": 5.684341886080802e-14,
                      "z": 60.15256881713867
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "7ili6u7q",
                  "_$type": "Sprite3D",
                  "name": "Plane_75",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -39.89675086776842,
                      "y": 1.1368683772161603e-13,
                      "z": 73.17859075907194
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "k1y0wb6b",
                  "_$type": "Sprite3D",
                  "name": "Plane_76",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -43.73296711883295,
                      "y": 1.1368683772161603e-13,
                      "z": 83.87528896557355
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "6szfl3hb",
                  "_$type": "Sprite3D",
                  "name": "Plane_77",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -23.2118721291558,
                      "y": 5.684341886080802e-14,
                      "z": -97.60215203063265
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "czcu5d1i",
                  "_$type": "Sprite3D",
                  "name": "Plane_78",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -23.679887586909082,
                      "y": 1.1368683772161603e-13,
                      "z": -87.40576934814453
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "glxz6v6s",
                  "_$type": "Sprite3D",
                  "name": "Plane_79",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -23.700464063959863,
                      "y": 5.684341886080802e-14,
                      "z": -71.95446014404297
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "xz4d4o6b",
                  "_$type": "Sprite3D",
                  "name": "Plane_80",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -23.679887586909082,
                      "y": 1.1368683772161603e-13,
                      "z": -57.310367584228516
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "oqv49vbq",
                  "_$type": "Sprite3D",
                  "name": "Plane_81",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -23.700464063959863,
                      "y": 5.684341886080802e-14,
                      "z": -42.507057189941406
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "jc8risp0",
                  "_$type": "Sprite3D",
                  "name": "Plane_82",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -23.679887586909082,
                      "y": 1.1368683772161603e-13,
                      "z": -27.86296272277832
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "1vis2onp",
                  "_$type": "Sprite3D",
                  "name": "Plane_83",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -23.700464063959863,
                      "y": 5.684341886080802e-14,
                      "z": -12.411653518676758
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "dfcyjxxh",
                  "_$type": "Sprite3D",
                  "name": "Plane_84",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -23.700464063959863,
                      "y": 5.684341886080802e-14,
                      "z": 0.6097613573074341
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "vz6j1m1f",
                  "_$type": "Sprite3D",
                  "name": "Plane_85",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -23.679887586909082,
                      "y": 1.1368683772161603e-13,
                      "z": 15.253857612609863
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ibl38430",
                  "_$type": "Sprite3D",
                  "name": "Plane_86",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -23.700464063959863,
                      "y": 5.684341886080802e-14,
                      "z": 30.705167770385742
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "vteboaqr",
                  "_$type": "Sprite3D",
                  "name": "Plane_87",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -23.679887586909082,
                      "y": 1.1368683772161603e-13,
                      "z": 45.34925842285156
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "fnb0i5r6",
                  "_$type": "Sprite3D",
                  "name": "Plane_88",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -23.700464063959863,
                      "y": 5.684341886080802e-14,
                      "z": 60.15256881713867
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "yaqehqt0",
                  "_$type": "Sprite3D",
                  "name": "Plane_89",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -23.679887586909082,
                      "y": 1.1368683772161603e-13,
                      "z": 74.79666137695312
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "d1xd8f1n",
                  "_$type": "Sprite3D",
                  "name": "Plane_91",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -8.167184645014565,
                      "y": 1.1368683772161603e-13,
                      "z": -87.40576934814453
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "4n9xuivl",
                  "_$type": "Sprite3D",
                  "name": "Plane_92",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -8.187761122065346,
                      "y": 5.684341886080802e-14,
                      "z": -71.95446014404297
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "y05nztfs",
                  "_$type": "Sprite3D",
                  "name": "Plane_93",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -8.167184645014565,
                      "y": 1.1368683772161603e-13,
                      "z": -57.310367584228516
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ctelx2r3",
                  "_$type": "Sprite3D",
                  "name": "Plane_94",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -8.187761122065346,
                      "y": 5.684341886080802e-14,
                      "z": -42.507057189941406
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "cfybmvgi",
                  "_$type": "Sprite3D",
                  "name": "Plane_95",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -8.167184645014565,
                      "y": 1.1368683772161603e-13,
                      "z": -27.86296272277832
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "vehtdv63",
                  "_$type": "Sprite3D",
                  "name": "Plane_96",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -8.187761122065346,
                      "y": 5.684341886080802e-14,
                      "z": -12.411653518676758
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "3916ucko",
                  "_$type": "Sprite3D",
                  "name": "Plane_97",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -8.187761122065346,
                      "y": 5.684341886080802e-14,
                      "z": 0.6097613573074341
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "tonvixqn",
                  "_$type": "Sprite3D",
                  "name": "Plane_98",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -8.167184645014565,
                      "y": 1.1368683772161603e-13,
                      "z": 15.253857612609863
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "8c8l2b39",
                  "_$type": "Sprite3D",
                  "name": "Plane_99",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -8.187761122065346,
                      "y": 5.684341886080802e-14,
                      "z": 30.705167770385742
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "sb2uovvv",
                  "_$type": "Sprite3D",
                  "name": "Plane_100",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -8.167184645014565,
                      "y": 1.1368683772161603e-13,
                      "z": 45.34925842285156
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "gyw56pf0",
                  "_$type": "Sprite3D",
                  "name": "Plane_101",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -8.187761122065346,
                      "y": 5.684341886080802e-14,
                      "z": 60.15256881713867
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ok4okb1p",
                  "_$type": "Sprite3D",
                  "name": "Plane_102",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -8.167184645014565,
                      "y": 1.1368683772161603e-13,
                      "z": 74.79666137695312
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "76dzyhy8",
                  "_$type": "Sprite3D",
                  "name": "Plane_104",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.54922694556161,
                      "y": 1.1368683772161603e-13,
                      "z": -87.40576934814453
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "o2wxnscf",
                  "_$type": "Sprite3D",
                  "name": "Plane_105",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.528650468510829,
                      "y": 5.684341886080802e-14,
                      "z": -71.95446014404297
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "izvsobd9",
                  "_$type": "Sprite3D",
                  "name": "Plane_106",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.54922694556161,
                      "y": 1.1368683772161603e-13,
                      "z": -57.310367584228516
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ieqna2fq",
                  "_$type": "Sprite3D",
                  "name": "Plane_107",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.528650468510829,
                      "y": 5.684341886080802e-14,
                      "z": -42.507057189941406
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "fcargxc9",
                  "_$type": "Sprite3D",
                  "name": "Plane_108",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.54922694556161,
                      "y": 1.1368683772161603e-13,
                      "z": -27.86296272277832
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "xmpdvglc",
                  "_$type": "Sprite3D",
                  "name": "Plane_109",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.528650468510829,
                      "y": 5.684341886080802e-14,
                      "z": -12.411653518676758
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "eqbu4muu",
                  "_$type": "Sprite3D",
                  "name": "Plane_110",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.528650468510829,
                      "y": 5.684341886080802e-14,
                      "z": 0.6097613573074341
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "iw9446nd",
                  "_$type": "Sprite3D",
                  "name": "Plane_111",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.54922694556161,
                      "y": 1.1368683772161603e-13,
                      "z": 15.253857612609863
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "s60i03f5",
                  "_$type": "Sprite3D",
                  "name": "Plane_112",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.528650468510829,
                      "y": 5.684341886080802e-14,
                      "z": 30.705167770385742
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "a62s2d0b",
                  "_$type": "Sprite3D",
                  "name": "Plane_113",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.54922694556161,
                      "y": 1.1368683772161603e-13,
                      "z": 45.34925842285156
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "oqos174v",
                  "_$type": "Sprite3D",
                  "name": "Plane_114",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.528650468510829,
                      "y": 5.684341886080802e-14,
                      "z": 60.15256881713867
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "m82qhlep",
                  "_$type": "Sprite3D",
                  "name": "Plane_115",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.54922694556161,
                      "y": 1.1368683772161603e-13,
                      "z": 74.79666137695312
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "oaf1j8fw",
                  "_$type": "Sprite3D",
                  "name": "Plane_117",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 20.719364794760807,
                      "y": 1.1368683772161603e-13,
                      "z": -87.40576934814453
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "tyin6o9w",
                  "_$type": "Sprite3D",
                  "name": "Plane_118",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 20.698788317710026,
                      "y": 5.684341886080802e-14,
                      "z": -71.95446014404297
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "8th1rx05",
                  "_$type": "Sprite3D",
                  "name": "Plane_119",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 20.719364794760807,
                      "y": 1.1368683772161603e-13,
                      "z": -57.310367584228516
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "lfszew27",
                  "_$type": "Sprite3D",
                  "name": "Plane_120",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 20.698788317710026,
                      "y": 5.684341886080802e-14,
                      "z": -42.507057189941406
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "h1nwo8j0",
                  "_$type": "Sprite3D",
                  "name": "Plane_121",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 20.719364794760807,
                      "y": 1.1368683772161603e-13,
                      "z": -27.86296272277832
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "xnzxtk3b",
                  "_$type": "Sprite3D",
                  "name": "Plane_122",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 20.698788317710026,
                      "y": 5.684341886080802e-14,
                      "z": -12.411653518676758
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "j21w1qf1",
                  "_$type": "Sprite3D",
                  "name": "Plane_123",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 20.698788317710026,
                      "y": 5.684341886080802e-14,
                      "z": 0.6097613573074341
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "07370h7x",
                  "_$type": "Sprite3D",
                  "name": "Plane_124",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 20.719364794760807,
                      "y": 1.1368683772161603e-13,
                      "z": 15.253857612609863
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "b56hiea4",
                  "_$type": "Sprite3D",
                  "name": "Plane_125",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 20.698788317710026,
                      "y": 5.684341886080802e-14,
                      "z": 30.705167770385742
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "2rni55cr",
                  "_$type": "Sprite3D",
                  "name": "Plane_126",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 20.719364794760807,
                      "y": 1.1368683772161603e-13,
                      "z": 45.34925842285156
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "sv2gu39y",
                  "_$type": "Sprite3D",
                  "name": "Plane_127",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 20.698788317710026,
                      "y": 5.684341886080802e-14,
                      "z": 60.15256881713867
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "qjq60n7l",
                  "_$type": "Sprite3D",
                  "name": "Plane_128",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 20.719364794760807,
                      "y": 1.1368683772161603e-13,
                      "z": 74.79666137695312
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "l1qntovj",
                  "_$type": "Sprite3D",
                  "name": "Plane_130",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 34.435780200034245,
                      "y": 1.1368683772161603e-13,
                      "z": -87.40576934814453
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "55qfuryh",
                  "_$type": "Sprite3D",
                  "name": "Plane_131",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 34.41520372298346,
                      "y": 5.684341886080802e-14,
                      "z": -71.95446014404297
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "677g874y",
                  "_$type": "Sprite3D",
                  "name": "Plane_132",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 34.435780200034245,
                      "y": 1.1368683772161603e-13,
                      "z": -57.310367584228516
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "vfdecyav",
                  "_$type": "Sprite3D",
                  "name": "Plane_133",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 34.41520372298346,
                      "y": 5.684341886080802e-14,
                      "z": -42.507057189941406
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "osv02e1p",
                  "_$type": "Sprite3D",
                  "name": "Plane_134",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 34.435780200034245,
                      "y": 1.1368683772161603e-13,
                      "z": -27.86296272277832
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "1ltdg61b",
                  "_$type": "Sprite3D",
                  "name": "Plane_135",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 34.41520372298346,
                      "y": 5.684341886080802e-14,
                      "z": -12.411653518676758
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "9qfap0y6",
                  "_$type": "Sprite3D",
                  "name": "Plane_136",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 34.41520372298346,
                      "y": 5.684341886080802e-14,
                      "z": 0.6097613573074341
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "totdfggp",
                  "_$type": "Sprite3D",
                  "name": "Plane_137",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 34.435780200034245,
                      "y": 1.1368683772161603e-13,
                      "z": 15.253857612609863
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "v5uiqrya",
                  "_$type": "Sprite3D",
                  "name": "Plane_138",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 34.41520372298346,
                      "y": 5.684341886080802e-14,
                      "z": 30.705167770385742
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ktvt953o",
                  "_$type": "Sprite3D",
                  "name": "Plane_139",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 34.435780200034245,
                      "y": 1.1368683772161603e-13,
                      "z": 45.34925842285156
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "2d4yndmz",
                  "_$type": "Sprite3D",
                  "name": "Plane_140",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 34.41520372298346,
                      "y": 5.684341886080802e-14,
                      "z": 60.15256881713867
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "zpluts2e",
                  "_$type": "Sprite3D",
                  "name": "Plane_141",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 34.435780200034245,
                      "y": 1.1368683772161603e-13,
                      "z": 74.79666137695312
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "fxr6cwrh",
                  "_$type": "Sprite3D",
                  "name": "Plane_142",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 50.41649815587839,
                      "y": 5.684341886080802e-14,
                      "z": -97.60215203063265
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "qdv6ywaw",
                  "_$type": "Sprite3D",
                  "name": "Plane_143",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 49.94848314192879,
                      "y": 1.1368683772161603e-13,
                      "z": -87.40576934814453
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "2fc81r5z",
                  "_$type": "Sprite3D",
                  "name": "Plane_144",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 49.92790666487801,
                      "y": 5.684341886080802e-14,
                      "z": -71.95446014404297
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "3u0ye28z",
                  "_$type": "Sprite3D",
                  "name": "Plane_145",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 49.94848314192879,
                      "y": 1.1368683772161603e-13,
                      "z": -57.310367584228516
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "5s4b2ebm",
                  "_$type": "Sprite3D",
                  "name": "Plane_146",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 49.92790666487801,
                      "y": 5.684341886080802e-14,
                      "z": -42.507057189941406
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "b98beh9h",
                  "_$type": "Sprite3D",
                  "name": "Plane_147",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 49.94848314192879,
                      "y": 1.1368683772161603e-13,
                      "z": -27.86296272277832
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "tc6tu59l",
                  "_$type": "Sprite3D",
                  "name": "Plane_148",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 49.92790666487801,
                      "y": 5.684341886080802e-14,
                      "z": -12.411653518676758
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "nu04q9rp",
                  "_$type": "Sprite3D",
                  "name": "Plane_149",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 49.92790666487801,
                      "y": 5.684341886080802e-14,
                      "z": 0.6097613573074341
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "kd2qh7m4",
                  "_$type": "Sprite3D",
                  "name": "Plane_150",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 49.94848314192879,
                      "y": 1.1368683772161603e-13,
                      "z": 15.253857612609863
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ich8s6ai",
                  "_$type": "Sprite3D",
                  "name": "Plane_151",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 49.92790666487801,
                      "y": 5.684341886080802e-14,
                      "z": 30.705167770385742
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "n5veylmc",
                  "_$type": "Sprite3D",
                  "name": "Plane_152",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 49.94848314192879,
                      "y": 1.1368683772161603e-13,
                      "z": 45.34925842285156
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "z0ya6toe",
                  "_$type": "Sprite3D",
                  "name": "Plane_153",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 49.92790666487801,
                      "y": 5.684341886080802e-14,
                      "z": 60.15256881713867
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "3jle4tzp",
                  "_$type": "Sprite3D",
                  "name": "Plane_154",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 49.94848314192879,
                      "y": 1.1368683772161603e-13,
                      "z": 74.79666137695312
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "0pfv0ycv",
                  "_$type": "Sprite3D",
                  "name": "Plane_155",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 64.13290974645456,
                      "y": 5.684341886080802e-14,
                      "z": -97.60215203063265
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "pxrjqyul",
                  "_$type": "Sprite3D",
                  "name": "Plane_156",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 63.66489473250496,
                      "y": 1.1368683772161603e-13,
                      "z": -87.40576934814453
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "iidh2kme",
                  "_$type": "Sprite3D",
                  "name": "Plane_157",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 63.64431825545418,
                      "y": 5.684341886080802e-14,
                      "z": -71.95446014404297
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "qp7y6iw8",
                  "_$type": "Sprite3D",
                  "name": "Plane_158",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 63.66489473250496,
                      "y": 1.1368683772161603e-13,
                      "z": -57.310367584228516
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "8z70jx9j",
                  "_$type": "Sprite3D",
                  "name": "Plane_159",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 63.64431825545418,
                      "y": 5.684341886080802e-14,
                      "z": -42.507057189941406
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "04m8asdw",
                  "_$type": "Sprite3D",
                  "name": "Plane_160",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 63.66489473250496,
                      "y": 1.1368683772161603e-13,
                      "z": -27.86296272277832
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "9xesc35h",
                  "_$type": "Sprite3D",
                  "name": "Plane_161",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 63.64431825545418,
                      "y": 5.684341886080802e-14,
                      "z": -12.411653518676758
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "l3cdxwyj",
                  "_$type": "Sprite3D",
                  "name": "Plane_162",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 63.64431825545418,
                      "y": 5.684341886080802e-14,
                      "z": 0.6097613573074341
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "sr2ibivt",
                  "_$type": "Sprite3D",
                  "name": "Plane_163",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 63.66489473250496,
                      "y": 1.1368683772161603e-13,
                      "z": 15.253857612609863
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "np49yb9q",
                  "_$type": "Sprite3D",
                  "name": "Plane_164",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 63.64431825545418,
                      "y": 5.684341886080802e-14,
                      "z": 30.705167770385742
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "z1zzz4zx",
                  "_$type": "Sprite3D",
                  "name": "Plane_165",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 63.66489473250496,
                      "y": 1.1368683772161603e-13,
                      "z": 45.34925842285156
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "c8ut5a6w",
                  "_$type": "Sprite3D",
                  "name": "Plane_166",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 63.64431825545418,
                      "y": 5.684341886080802e-14,
                      "z": 60.15256881713867
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "qwq0t6b5",
                  "_$type": "Sprite3D",
                  "name": "Plane_167",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 63.66489473250496,
                      "y": 1.1368683772161603e-13,
                      "z": 74.79666137695312
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "gm5x0sz7",
                  "_$type": "Sprite3D",
                  "name": "Plane_168",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 67.58105021286448,
                      "y": 5.684341886080802e-14,
                      "z": 88.61693617483039
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 12,
                      "y": 1,
                      "z": 9.8199998
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "eifv9qis",
                  "_$type": "Sprite3D",
                  "name": "Plane_169",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 81.05292317418893,
                      "y": 5.684341886080802e-14,
                      "z": -97.60215203063265
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "c1jn69l7",
                  "_$type": "Sprite3D",
                  "name": "Plane_170",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.58490434554207,
                      "y": 1.1368683772161603e-13,
                      "z": -87.40576934814453
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "k8lh61is",
                  "_$type": "Sprite3D",
                  "name": "Plane_171",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.56432786849129,
                      "y": 5.684341886080802e-14,
                      "z": -71.95446014404297
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "bg3rbg0e",
                  "_$type": "Sprite3D",
                  "name": "Plane_172",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.58490434554207,
                      "y": 1.1368683772161603e-13,
                      "z": -57.310367584228516
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ecxxherc",
                  "_$type": "Sprite3D",
                  "name": "Plane_173",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.56432786849129,
                      "y": 5.684341886080802e-14,
                      "z": -42.507057189941406
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "5amcj7vq",
                  "_$type": "Sprite3D",
                  "name": "Plane_174",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.58490434554207,
                      "y": 1.1368683772161603e-13,
                      "z": -27.86296272277832
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "i1cps1kn",
                  "_$type": "Sprite3D",
                  "name": "Plane_175",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.56432786849129,
                      "y": 5.684341886080802e-14,
                      "z": -12.411653518676758
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "57glnze0",
                  "_$type": "Sprite3D",
                  "name": "Plane_176",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.56432786849129,
                      "y": 5.684341886080802e-14,
                      "z": 0.6097613573074341
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "k8xsnu8x",
                  "_$type": "Sprite3D",
                  "name": "Plane_177",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.58490434554207,
                      "y": 1.1368683772161603e-13,
                      "z": 15.253857612609863
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "jv2u0pky",
                  "_$type": "Sprite3D",
                  "name": "Plane_178",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.56432786849129,
                      "y": 5.684341886080802e-14,
                      "z": 30.705167770385742
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "in08oxfv",
                  "_$type": "Sprite3D",
                  "name": "Plane_179",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.58490434554207,
                      "y": 1.1368683772161603e-13,
                      "z": 45.34925842285156
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "w3e5jvkg",
                  "_$type": "Sprite3D",
                  "name": "Plane_180",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.56432786849129,
                      "y": 5.684341886080802e-14,
                      "z": 60.15256881713867
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "qthr6j4v",
                  "_$type": "Sprite3D",
                  "name": "Plane_181",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.58490434554207,
                      "y": 1.1368683772161603e-13,
                      "z": 74.79666137695312
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "7pmey6dr",
                  "_$type": "Sprite3D",
                  "name": "Plane_182",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 84.50106364059886,
                      "y": 5.684341886080802e-14,
                      "z": 88.61693617483039
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 12,
                      "y": 1,
                      "z": 9.8199998
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "v284gqkn",
                  "_$type": "Sprite3D",
                  "name": "Plane_183",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 105.3801631009939,
                      "y": 5.684341886080802e-14,
                      "z": -43.13716053334771
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ni7zclw5",
                  "_$type": "Sprite3D",
                  "name": "Plane_184",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 105.40073957804468,
                      "y": 1.1368683772161603e-13,
                      "z": -28.493066066184625
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "hidfydd5",
                  "_$type": "Sprite3D",
                  "name": "Plane_185",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 105.3801631009939,
                      "y": 5.684341886080802e-14,
                      "z": -13.041756862083062
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "4k47s7ki",
                  "_$type": "Sprite3D",
                  "name": "Plane_186",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 105.40073957804468,
                      "y": 1.1368683772161603e-13,
                      "z": -57.94047092763482
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "qzjx34tp",
                  "_$type": "Sprite3D",
                  "name": "Plane_187",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 110.70441636776364,
                      "y": 5.684341886080802e-14,
                      "z": 5.23578376138331
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
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
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "f5aldg6r",
                  "_$type": "Sprite3D",
                  "name": "Plane_188",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 111.50074680055289,
                      "y": 1.1368683772161603e-13,
                      "z": 15.360350015769235
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 11.7499993,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "fd9hcx1i",
                  "_$type": "Sprite3D",
                  "name": "Plane_189",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 111.87181651953264,
                      "y": 5.684341886080802e-14,
                      "z": 28.56057200390597
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 11.7499993,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "f35819oc",
                  "_$type": "Sprite3D",
                  "name": "Plane_190",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 111.37416362803859,
                      "y": 1.1368683772161603e-13,
                      "z": 40.54125829459482
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 11.7499993,
                      "y": 1,
                      "z": 6.8799994
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "rkairwqt",
                  "_$type": "Sprite3D",
                  "name": "Plane_194",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 105.03394576274145,
                      "y": 8.526512829121202e-14,
                      "z": -71.51242382940097
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "pbolxyuw",
                  "_$type": "Sprite3D",
                  "name": "Plane_195",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 96.29404255895456,
                      "y": 5.684341886080802e-14,
                      "z": -97.60215203063265
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ze60jzdw",
                  "_$type": "Sprite3D",
                  "name": "Plane_196",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.82602701377482,
                      "y": 1.1368683772161603e-13,
                      "z": -87.40576934814453
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "92pqh7sp",
                  "_$type": "Sprite3D",
                  "name": "Plane_197",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.80545053672404,
                      "y": 5.684341886080802e-14,
                      "z": -71.95446014404297
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "qd7sgxyy",
                  "_$type": "Sprite3D",
                  "name": "Plane_198",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.82602701377482,
                      "y": 1.1368683772161603e-13,
                      "z": -57.310367584228516
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ehb4ch7d",
                  "_$type": "Sprite3D",
                  "name": "Plane_199",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.80545053672404,
                      "y": 5.684341886080802e-14,
                      "z": -42.507057189941406
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "wb4zlimn",
                  "_$type": "Sprite3D",
                  "name": "Plane_200",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.82602701377482,
                      "y": 1.1368683772161603e-13,
                      "z": -27.86296272277832
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "hnztdhoz",
                  "_$type": "Sprite3D",
                  "name": "Plane_201",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.80545053672404,
                      "y": 5.684341886080802e-14,
                      "z": -12.411653518676758
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "7kk5zvnv",
                  "_$type": "Sprite3D",
                  "name": "Plane_202",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.80545053672404,
                      "y": 5.684341886080802e-14,
                      "z": 0.6097613573074341
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "605md0p8",
                  "_$type": "Sprite3D",
                  "name": "Plane_203",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.82602701377482,
                      "y": 1.1368683772161603e-13,
                      "z": 15.253857612609863
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "zur99qut",
                  "_$type": "Sprite3D",
                  "name": "Plane_204",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.80545053672404,
                      "y": 5.684341886080802e-14,
                      "z": 30.705167770385742
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "2w44d6tq",
                  "_$type": "Sprite3D",
                  "name": "Plane_205",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.82602701377482,
                      "y": 1.1368683772161603e-13,
                      "z": 45.34925842285156
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "o8umhlpt",
                  "_$type": "Sprite3D",
                  "name": "Plane_206",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.78891757489264,
                      "y": 9.663381206337363e-13,
                      "z": 59.54250752866592
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 13,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "2dpf1u79",
                  "_$type": "Sprite3D",
                  "name": "Plane_207",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.80949405194342,
                      "y": 1.0231815394945443e-12,
                      "z": 74.18660008848038
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 13,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ph5qbjqf",
                  "_$type": "Sprite3D",
                  "name": "Plane_208",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 99.74218302536448,
                      "y": 5.684341886080802e-14,
                      "z": 88.61693617483039
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 12,
                      "y": 1,
                      "z": 9.8199998
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "g5n3zqui",
                  "_$type": "Sprite3D",
                  "name": "Plane_209",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 105.05452223979223,
                      "y": 1.4210854715202004e-13,
                      "z": -86.96373303350254
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "xudwz9p8",
                  "_$type": "Sprite3D",
                  "name": "Plane_210",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 105.52253981791723,
                      "y": 8.526512829121202e-14,
                      "z": -97.16011364873691
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "dx3hzl2k",
                  "_$type": "Sprite3D",
                  "name": "Plane_215",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -110.44749990567932,
                      "y": 1.1368683772161603e-13,
                      "z": 74.52344666061106
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 15.6299991,
                      "y": 1,
                      "z": 11.4499993
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "4v5zakm2",
                  "_$type": "Sprite3D",
                  "name": "Plane_217",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -111.10857781591442,
                      "y": 1.1937117960769683e-12,
                      "z": -76.77102156081752
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "qli8zbu3",
                  "_$type": "Sprite3D",
                  "name": "Plane_218",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -111.08800133886363,
                      "y": 1.2505552149377763e-12,
                      "z": -62.12692900100306
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "qgh59dwi",
                  "_$type": "Sprite3D",
                  "name": "Plane_219",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -111.10857781591442,
                      "y": 1.1937117960769683e-12,
                      "z": -47.323618606715954
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "je6ubk86",
                  "_$type": "Sprite3D",
                  "name": "Plane_220",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -94.0981094624566,
                      "y": 8.526512829121202e-14,
                      "z": 10.722167278611932
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "lggfxmc2",
                  "_$type": "Sprite3D",
                  "name": "Plane_221",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -52.17540516715328,
                      "y": 1.1368683772161603e-13,
                      "z": 97.80030082347832
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "0e1sig6u",
                  "_$type": "Sprite3D",
                  "name": "Plane_222",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -41.02478352427753,
                      "y": 4.547473508864641e-13,
                      "z": 98.46831542010536
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "aystzjao",
                  "_$type": "Sprite3D",
                  "name": "Plane_223",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -24.041906749546982,
                      "y": 1.1368683772161603e-13,
                      "z": 86.74321792102835
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "zhrf07my",
                  "_$type": "Sprite3D",
                  "name": "Plane_224",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -8.52920380765245,
                      "y": 1.1368683772161603e-13,
                      "z": 86.74321792102835
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "77v3zqut",
                  "_$type": "Sprite3D",
                  "name": "Plane_225",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.187207782923721,
                      "y": 1.1368683772161603e-13,
                      "z": 86.74321792102835
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "2ltp123x",
                  "_$type": "Sprite3D",
                  "name": "Plane_226",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 20.35734518831923,
                      "y": 1.1368683772161603e-13,
                      "z": 86.74321792102835
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "s74rm0fo",
                  "_$type": "Sprite3D",
                  "name": "Plane_227",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 42.400148872106676,
                      "y": 1.1368683772161603e-13,
                      "z": 85.65716878345707
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "w166tdr2",
                  "_$type": "Sprite3D",
                  "name": "Plane_228",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 43.12418078871389,
                      "y": 1.1368683772161603e-13,
                      "z": 97.96574188485545
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "7x5fyjig",
                  "_$type": "Sprite3D",
                  "name": "Plane_229",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 55.432754637034925,
                      "y": 1.1368683772161603e-13,
                      "z": 91.8114594656911
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ez0f8889",
                  "_$type": "Sprite3D",
                  "name": "Plane_230",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 47.335592977793624,
                      "y": 1.1368683772161603e-13,
                      "z": 78.6160876500801
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "euhh53gs",
                  "_$type": "Sprite3D",
                  "name": "Plane_231",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 47.335594177246094,
                      "y": 1.1368683772161603e-13,
                      "z": 35.13133116086421
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "9o399wl1",
                  "_$type": "Sprite3D",
                  "name": "Plane_232",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 47.335594177246094,
                      "y": 1.1368683772161603e-13,
                      "z": -14.951112684994147
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "e6uysd6j",
                  "_$type": "Sprite3D",
                  "name": "Plane_233",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 47.335594177246094,
                      "y": 1.1368683772161603e-13,
                      "z": -53.037762600316896
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "kfwqu9vg",
                  "_$type": "Sprite3D",
                  "name": "Plane_234",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.7515736624752662,
                      "y": 1.1368683772161603e-13,
                      "z": -64.13387227536319
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "b5mvnsjo",
                  "_$type": "Sprite3D",
                  "name": "Plane_235",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.7515736624752662,
                      "y": 1.1368683772161603e-13,
                      "z": 78.6160888671875
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ggq78c49",
                  "_$type": "Sprite3D",
                  "name": "Plane_236",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.7515736624752662,
                      "y": 1.1368683772161603e-13,
                      "z": 35.13133239746094
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "3unb3qgv",
                  "_$type": "Sprite3D",
                  "name": "Plane_237",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 14.548308053013002,
                      "y": 1.1368683772161603e-13,
                      "z": -0.5561584830284119
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "zx7n8byv",
                  "_$type": "Sprite3D",
                  "name": "Plane_238",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -47.131290422824215,
                      "y": 1.1368683772161603e-13,
                      "z": -64.13387298583984
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "dnac8rld",
                  "_$type": "Sprite3D",
                  "name": "Plane_239",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -47.131290435791016,
                      "y": 1.1368683772161603e-13,
                      "z": -21.848694802449607
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "eyn9hgka",
                  "_$type": "Sprite3D",
                  "name": "Plane_240",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -47.131290435791016,
                      "y": 1.1368683772161603e-13,
                      "z": 36.6308059879816
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "s2lx8sxh",
                  "_$type": "Sprite3D",
                  "name": "Plane_241",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -34.23581094805977,
                      "y": 1.1368683772161603e-13,
                      "z": 79.51577391409505
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "of3w4bwa",
                  "_$type": "Sprite3D",
                  "name": "Plane_242",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -90.48136285555879,
                      "y": 1.1368683772161603e-13,
                      "z": 79.51577758789062
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "hppxf6mf",
                  "_$type": "Sprite3D",
                  "name": "Plane_243",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -90.48136138916016,
                      "y": 1.1368683772161603e-13,
                      "z": -63.46991094119401
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "dopdp6vw",
                  "_$type": "Sprite3D",
                  "name": "Plane_244",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 92.14727326348783,
                      "y": 1.1368683772161603e-13,
                      "z": -63.46990966796875
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "j31e1fdp",
                  "_$type": "Sprite3D",
                  "name": "Plane_245",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 93.91296259745337,
                      "y": 1.1368683772161603e-13,
                      "z": 20.90052927371316
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "y8w87hl0",
              "_$type": "Sprite3D",
              "name": "PlayerBorn",
              "_$child": [
                {
                  "_$id": "4xuzn8mx",
                  "_$type": "Sprite3D",
                  "name": "Plane",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -47.212825775146484,
                      "y": 3.552713678800501e-15,
                      "z": 73.67045056206614
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
                  "_$id": "7a038d9g",
                  "_$type": "Sprite3D",
                  "name": "Plane_1",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -46.277763713116684,
                      "y": 3.552713678800501e-15,
                      "z": 1.189906400443907
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
                  "_$id": "l4nz2r16",
                  "_$type": "Sprite3D",
                  "name": "Plane_2",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -45.39692714619571,
                      "y": 3.552713678800501e-15,
                      "z": -41.59627500241906
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
                  "_$id": "4t6j4bu5",
                  "_$type": "Sprite3D",
                  "name": "Plane_3",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -62.860037011000095,
                      "y": 3.552713678800501e-15,
                      "z": -64.47633361816406
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
                  "_$id": "doxhv0rp",
                  "_$type": "Sprite3D",
                  "name": "Plane_4",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.92845220748196,
                      "y": 3.552713678800501e-15,
                      "z": -65.56584930419922
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
                  "_$id": "p4lhcjq0",
                  "_$type": "Sprite3D",
                  "name": "Plane_5",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 49.0286988459373,
                      "y": 3.552713678800501e-15,
                      "z": -64.83948817705333
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
                  "_$id": "ds3pujsn",
                  "_$type": "Sprite3D",
                  "name": "Plane_6",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 47.93916608401342,
                      "y": 3.552713678800501e-15,
                      "z": -34.332746640356774
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
                  "_$id": "c97dxg5l",
                  "_$type": "Sprite3D",
                  "name": "Plane_7",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 47.93915930104604,
                      "y": 3.552713678800501e-15,
                      "z": 8.521955671482534
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
                  "_$id": "sbpnzoja",
                  "_$type": "Sprite3D",
                  "name": "Plane_8",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 47.93915134600383,
                      "y": 3.552713678800501e-15,
                      "z": 53.192536475007486
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
                  "_$id": "5ln7ttyu",
                  "_$type": "Sprite3D",
                  "name": "Plane_9",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 92.76770335321662,
                      "y": 3.552713678800501e-15,
                      "z": 80.61707154975988
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
                  "_$id": "0sg0xvpk",
                  "_$type": "Sprite3D",
                  "name": "Plane_10",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 92.6107097217476,
                      "y": 3.552713678800501e-15,
                      "z": 50.20948071242793
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
                  "_$id": "7hhz0drc",
                  "_$type": "Sprite3D",
                  "name": "Plane_11",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 93.29510498046875,
                      "y": 3.552713678800501e-15,
                      "z": 7.4567818603644955
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
                  "_$id": "e8n17cty",
                  "_$type": "Sprite3D",
                  "name": "Plane_12",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 93.29511260986328,
                      "y": 3.552713678800501e-15,
                      "z": -38.72613125994362
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
                  "_$id": "wczfecz2",
                  "_$type": "Sprite3D",
                  "name": "Plane_13",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.1528717279434204,
                      "y": 3.552713678800501e-15,
                      "z": -41.211689632638716
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
                  "_$id": "oq0x2j3w",
                  "_$type": "Sprite3D",
                  "name": "Plane_14",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 10.641481533805235,
                      "y": 3.552713678800501e-15,
                      "z": 37.4993186639926
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
              "_$id": "js71hces",
              "_$type": "Sprite3D",
              "name": "ItemBorn",
              "_$child": [
                {
                  "_$id": "4dpdr3pk",
                  "_$type": "Sprite3D",
                  "name": "Plane",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -15.746094703674316,
                      "y": 3.552713678800501e-15,
                      "z": -41.09039492713915
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
                  "_$id": "7wwy4iyk",
                  "_$type": "Sprite3D",
                  "name": "Plane_1",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -72.9790578590496,
                      "y": 3.552713678800501e-15,
                      "z": -65.31797449575788
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
                  "_$id": "xn2y3mc9",
                  "_$type": "Sprite3D",
                  "name": "Plane_2",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -62.63337741228131,
                      "y": 3.552713678800501e-15,
                      "z": 0.9950006008148193
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
                  "_$id": "oep0o9xa",
                  "_$type": "Sprite3D",
                  "name": "Plane_3",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -46.30170321521872,
                      "y": 3.552713678800501e-15,
                      "z": -11.32063866246679
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
                  "_$id": "69t26hik",
                  "_$type": "Sprite3D",
                  "name": "Plane_4",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -73.9145602364643,
                      "y": 3.552713678800501e-15,
                      "z": 83.3419686320336
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
                  "_$id": "b5vy01kh",
                  "_$type": "Sprite3D",
                  "name": "Plane_5",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.947458678466376,
                      "y": 3.552713678800501e-15,
                      "z": -4.360877990722656
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
                  "_$id": "svgw40uv",
                  "_$type": "Sprite3D",
                  "name": "Plane_6",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 22.156912855355813,
                      "y": 3.552713678800501e-15,
                      "z": 38.151580316542535
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
                  "_$id": "0lek99wl",
                  "_$type": "Sprite3D",
                  "name": "Plane_7",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 63.66516097195763,
                      "y": 3.552713678800501e-15,
                      "z": -64.94949496919702
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
                  "_$id": "jspm61fg",
                  "_$type": "Sprite3D",
                  "name": "Plane_8",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 92.46172829349939,
                      "y": 3.552713678800501e-15,
                      "z": 83.51294958565967
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
                  "_$id": "hxxusgoa",
                  "_$type": "Sprite3D",
                  "name": "Plane_9",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.32873191917372,
                      "y": 3.552713678800501e-15,
                      "z": -35.60818862915039
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