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
          "_$id": "8w422r16",
          "_$type": "Sprite3D",
          "name": "huashengdunguofangqu_3",
          "_$comp": [
            {
              "_$type": "e8f192ec-d9e8-4176-864f-af4349fa93bd",
              "scriptPath": "../src/Game/Scene/Components/Level_Scene.ts",
              "owner": {
                "_$ref": "8w422r16"
              },
              "npcBorns": [
                {
                  "_$ref": "6bdt7hdi",
                  "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138"
                }
              ],
              "playerBorns": [
                {
                  "_$ref": "wv4n2pr8",
                  "_$type": "79983f09-e1ab-47b6-b3ad-c4a6f7fc5e7b"
                }
              ],
              "itemBorns": [
                {
                  "_$ref": "5995ppif"
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
              "_$id": "7j0gii3s",
              "_$type": "Sprite3D",
              "name": "Light",
              "_$child": [
                {
                  "_$id": "hl3fi20p",
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
              "_$id": "gkla01s6",
              "_$type": "Sprite3D",
              "name": "Range",
              "_$child": [
                {
                  "_$id": "2avntnhz",
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
                              "x": -69.11791408513415,
                              "y": 2.161,
                              "z": 80.97965843196303
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 86.90648783308883,
                              "y": 1,
                              "z": 24.679160979508865
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": 4.943991047183687,
                              "z": 35.7671992685435
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 216.03469169411557,
                              "y": 1,
                              "z": 81.89182923414116
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": 5.019558551954866,
                              "z": 86.9966293162702
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 80.47082613743416,
                              "y": 1,
                              "z": 32.07091378989155
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": 77.38736432559965,
                              "z": 9.900967050169868
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 68.4781499125275,
                              "y": 1,
                              "z": 167.6594139898474
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": 56.79787498187352,
                              "z": -55.96622121021236
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 54.08261533254456,
                              "y": 1,
                              "z": 95.84616642646402
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": 8.438624365139695,
                              "z": -44.88860791360954
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 70.46703349638028,
                              "y": 1,
                              "z": 97.63300311248874
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": -52.66789117654775,
                              "z": -45.26111753970701
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 80.77984581227462,
                              "y": 1,
                              "z": 114.83411601081418
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": -43.7073919425214,
                              "z": -62.0084617879279
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 137.41478388504277,
                              "y": 1,
                              "z": 24.547225854476324
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
              "_$id": "08qt93gh",
              "_$type": "Sprite3D",
              "name": "Ground",
              "isStatic": true,
              "_$child": [
                {
                  "_$id": "ym475anq",
                  "_$prefab": "fea3b7db-49c3-44ac-831e-c991ce869089",
                  "name": "huashengdunguofangqu",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": -4.286251362070988
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
                  "_$id": "qxe09qxx",
                  "_$type": "Sprite3D",
                  "name": "caodi",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 0.027479679547498748
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "9dqvktpc",
                      "_$prefab": "29435cd6-dc2d-4fc9-a11a-afcfe0032750",
                      "name": "Common_xiaolu_88",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -28.11254360154969,
                          "z": -28.121017456054688
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.85,
                          "y": 1,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "rxyawso7",
                      "_$prefab": "9a0d994f-9681-4515-95c1-87ea2d675397",
                      "name": "Common_xiaolu_94",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 24.52604409370813,
                          "z": 59.93275833129883
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.05,
                          "y": 1,
                          "z": 1.52
                        }
                      }
                    },
                    {
                      "_$id": "9gi78qa1",
                      "_$prefab": "29435cd6-dc2d-4fc9-a11a-afcfe0032750",
                      "name": "Common_xiaolu_89",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 19.47966699811429,
                          "z": -28.121017456054688
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.85,
                          "y": 1,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "1dhpadz9",
                      "_$prefab": "b3591dd7-8f65-4867-a7c2-3d38d905d193",
                      "name": "Common_chaodi009",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 11.611028671264648,
                          "y": -0.20000000298023224,
                          "z": -78.48846435546875
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.8290598392486572,
                          "y": 1,
                          "z": 0.7542372941970825
                        }
                      }
                    },
                    {
                      "_$id": "1kyztxps",
                      "_$prefab": "29435cd6-dc2d-4fc9-a11a-afcfe0032750",
                      "name": "Common_xiaolu_90",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 47.21097183227539,
                          "z": -86.38649579162067
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": -0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.9098358196721316,
                          "y": 1,
                          "z": 0.9
                        }
                      }
                    },
                    {
                      "_$id": "peqmpw5u",
                      "_$prefab": "29435cd6-dc2d-4fc9-a11a-afcfe0032750",
                      "name": "Common_xiaolu_91",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 74.23563385009766,
                          "z": -34.46475785051114
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.95,
                          "y": 1,
                          "z": 1.1
                        }
                      }
                    },
                    {
                      "_$id": "z0qyy0cy",
                      "_$prefab": "29435cd6-dc2d-4fc9-a11a-afcfe0032750",
                      "name": "Common_xiaolu_92",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 74.23563385009766,
                          "z": 53.415655
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.95,
                          "y": 1,
                          "z": 1.1
                        }
                      }
                    },
                    {
                      "_$id": "4ya1ql2q",
                      "_$prefab": "da7a493d-b90d-47f6-895c-e2a3e65fd873",
                      "name": "Common_chaodi03",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 21.9538516998291,
                          "z": 92.5938720703125
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
                      "_$id": "4ppv86d2",
                      "_$prefab": "9a0d994f-9681-4515-95c1-87ea2d675397",
                      "name": "Common_xiaolu_7",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 75.02433013916016,
                          "z": -86.37435913085938
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": -0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.9098358154296875,
                          "y": 1,
                          "z": 0.9900000095367432
                        }
                      }
                    },
                    {
                      "_$id": "zccsb7ha",
                      "_$prefab": "da7a493d-b90d-47f6-895c-e2a3e65fd873",
                      "name": "Common_chaodi03_1",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -15.305931091308594,
                          "z": 92.5938720703125
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
                      "_$id": "3cdkec91",
                      "_$prefab": "29435cd6-dc2d-4fc9-a11a-afcfe0032750",
                      "name": "Common_xiaolu_93",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 74.23563385009766,
                          "z": 9.458832207921281
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.95,
                          "y": 1,
                          "z": 1.1
                        }
                      }
                    },
                    {
                      "_$id": "if6vhnko",
                      "_$prefab": "9a0d994f-9681-4515-95c1-87ea2d675397",
                      "name": "Common_xiaolu_102",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -17.124210025638533,
                          "z": 20.685347681443332
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.05,
                          "y": 1,
                          "z": 1.4799994
                        }
                      }
                    },
                    {
                      "_$id": "yp068vvp",
                      "_$prefab": "9a0d994f-9681-4515-95c1-87ea2d675397",
                      "name": "Common_xiaolu_104",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -17.41617430212843,
                          "z": 59.93275831108825
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.05,
                          "y": 1,
                          "z": 1.52
                        }
                      }
                    },
                    {
                      "_$id": "66225lff",
                      "_$prefab": "9a0d994f-9681-4515-95c1-87ea2d675397",
                      "name": "Common_xiaolu_106",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -78.40861511230469,
                          "z": -29.515351459498056
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.3199995,
                          "y": 1,
                          "z": 1.4
                        }
                      }
                    },
                    {
                      "_$id": "ueiivhhk",
                      "_$prefab": "9a0d994f-9681-4515-95c1-87ea2d675397",
                      "name": "Common_xiaolu_107",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -27.061674118041992,
                          "z": -81.0506362915039
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 1,
                          "z": 1.1
                        }
                      }
                    },
                    {
                      "_$id": "cifuwfr0",
                      "_$prefab": "9a0d994f-9681-4515-95c1-87ea2d675397",
                      "name": "Common_xiaolu_108",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -66.87151336669922,
                          "z": -81.0506362915039
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 1,
                          "z": 1.1
                        }
                      }
                    },
                    {
                      "_$id": "9p6mpd4b",
                      "_$prefab": "9a0d994f-9681-4515-95c1-87ea2d675397",
                      "name": "Common_xiaolu_109",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 24.816965435176897,
                          "z": 20.685347681443332
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.05,
                          "y": 1,
                          "z": 1.4799994
                        }
                      }
                    },
                    {
                      "_$id": "ih23fmlq",
                      "_$prefab": "da7a493d-b90d-47f6-895c-e2a3e65fd873",
                      "name": "Common_chaodi03_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 13.313424899265545,
                          "z": -80.74770537124456
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.909998,
                          "y": 1,
                          "z": 0.5299994
                        }
                      },
                      "_$child": [
                        {
                          "_$override": "#41",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -2.3752211799470615,
                              "z": -3.414304791500438
                            }
                          }
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "r8lfcm9g",
                  "_$type": "Sprite3D",
                  "name": "tree",
                  "_$child": [
                    {
                      "_$id": "5x8o7zvj",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_6",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -18.882739568330145,
                          "y": -1.2150280781497713e-12,
                          "z": 73.60416544727234
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
                      "_$id": "xni75wey",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_7",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 24.91567583387104,
                          "y": -9.876544027065393e-13,
                          "z": 73.34934348986968
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
                      "_$id": "gxclsu29",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_8",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 56.19540963433304,
                          "y": -3.907985046680551e-13,
                          "z": 59.055499008089114
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
                      "_$id": "drqv8z47",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_9",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 68.07990224883643,
                          "y": -2.2737367544323206e-13,
                          "z": 74.28968988972639
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.8,
                          "y": 0.8,
                          "z": 0.8
                        }
                      }
                    },
                    {
                      "_$id": "a0xf34u3",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_11",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 56.36456510297698,
                          "y": 1.0658141036401503e-13,
                          "z": 27.717078875679643
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
                      "_$id": "tp9nc654",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_12",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 91.1449796335399,
                          "y": -1.7763568394002505e-13,
                          "z": 58.33907717605488
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
                      "_$id": "zu5hk5bb",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_13",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 56.591845689901234,
                          "y": 1.3287149158713873e-12,
                          "z": -10.008465795953818
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
                      "_$id": "pzrkjge5",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_14",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -37.53482342851057,
                          "y": 6.465938895416912e-13,
                          "z": 57.640967059430224
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
                      "_$id": "8avp92b1",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_15",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 91.48746091091728,
                          "y": -4.902744876744691e-13,
                          "z": 27.42310801308849
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
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
                      "_$id": "nrc2shrh",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_18",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -21.37937052179886,
                          "y": -1.8403056856186595e-12,
                          "z": -90.6861896123526
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
                      "_$id": "qo5j5gmf",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_19",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 43.64658333310261,
                          "y": -1.8971491044794675e-12,
                          "z": -69.23295787837297
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
                      "_$id": "voq2o6wt",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_20",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -43.48755487867622,
                          "y": -3.844036200462142e-12,
                          "z": -32.24556222156765
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
                      "_$id": "rl9bql92",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_21",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 72.93929400693864,
                          "y": 4.405364961712621e-13,
                          "z": -103.13203402807213
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.8,
                          "y": 0.8,
                          "z": 0.8
                        }
                      }
                    },
                    {
                      "_$id": "8kshc70m",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_22",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 83.99901304921708,
                          "y": -8.029132914089132e-13,
                          "z": -87.47133651355132
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
                      "_$id": "vgu7r971",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_23",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 30.844280424685984,
                          "y": -9.237055564881302e-13,
                          "z": -86.5751269464266
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
                      "_$id": "wm2y47e7",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_24",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 68.77821699757618,
                          "y": -2.1103119252074976e-12,
                          "z": -54.786824867683244
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
                      "_$id": "ockbloyn",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_25",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 91.16849469640702,
                          "y": -1.0302869668521453e-12,
                          "z": -28.97188707985347
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
                      "_$id": "y26b48bo",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_26",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 21.571426476691197,
                          "y": -9.734435479913373e-13,
                          "z": -47.40185926507701
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
                      "_$id": "htooc5tb",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_27",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 56.336994103172266,
                          "y": -1.595168441781425e-12,
                          "z": -40.33086997910391
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
                      "_$id": "87b814fz",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_28",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -65.61790741923292,
                          "y": -1.8189894035458565e-12,
                          "z": -16.4148006439209
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
                      "_$id": "zt4v1beq",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_29",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 30.9835807118237,
                          "y": -2.1174173525650986e-12,
                          "z": 7.548125143723628
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
                      "_$id": "tmeptjek",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_30",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -21.35676502694716,
                          "y": -1.4779288903810084e-12,
                          "z": -71.12717410179894
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
                      "_$id": "xns0lq87",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_31",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -51.970184552349146,
                          "y": -1.0018652574217413e-12,
                          "z": -70.68176141689588
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
                      "_$id": "pz2x65k0",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_32",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -16.868399747585755,
                          "y": 4.405364961712621e-13,
                          "z": 6.957466766583804
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
                      "_$id": "j1k8cpbl",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_33",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -22.35523353128039,
                          "y": -7.815970093361102e-14,
                          "z": 45.68995565776232
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
                      "_$id": "q98kqdam",
                      "_$prefab": "5a01a4f5-a340-40fb-9f8c-f46a61d30809",
                      "name": "Common_tree04",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -65.41833811081978,
                          "y": 1.2789769243681803e-13,
                          "z": -46.09841537475586
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
                      "_$id": "ouaf0qyw",
                      "_$prefab": "5a01a4f5-a340-40fb-9f8c-f46a61d30809",
                      "name": "Common_tree04_1",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 27.122278262876655,
                          "y": -6.465938895416912e-13,
                          "z": -9.308594303513129
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
                      "_$id": "9pdu1mkl",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_1",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 30.768082062333228,
                          "y": -1.2434497875801753e-12,
                          "z": 46.01706048599665
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
                      "_$id": "4xltb0na",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_21",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 38.56172334592365,
                          "y": 7.105427357601002e-15,
                          "z": 48.145533435123
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
                      "_$id": "gapzq2xc",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 44.31063135139338,
                          "y": -1.2434497875801753e-12,
                          "z": -102.81770251709423
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
                      "_$id": "r2a04wgq",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 75.83585593911224,
                          "y": 2.2382096176443156e-13,
                          "z": 27.548298615789506
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
                      "_$id": "vcoser9y",
                      "_$prefab": "a66f424e-5467-41b9-b345-0d904e44273f",
                      "name": "Common_tree02",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 74.72790832667715,
                          "y": 7.389644451905042e-13,
                          "z": 9.133980111318202
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
                      "_$id": "dn4y372k",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 86.65778288064793,
                          "y": 1.4921397450962104e-13,
                          "z": 54.59120740851114
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
                      "_$id": "pca1gvee",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_4",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 86.910027377514,
                          "y": 4.476419235288631e-13,
                          "z": 32.78477713051122
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
                      "_$id": "8tfne3t5",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_6",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 87.1639052852623,
                          "y": 1.9895196601282805e-13,
                          "z": -53.0378908015329
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
                      "_$id": "v57tykht",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_7",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 46.78752482548862,
                          "y": 3.339550858072471e-13,
                          "z": -83.77830039244618
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
                      "_$id": "k0hyimw7",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_8",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 66.02830791103138,
                          "y": 5.400124791776761e-13,
                          "z": -83.34446575855911
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
                      "_$id": "lr7fjsx8",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_9",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 73.9728091794846,
                          "y": 6.110667527536862e-13,
                          "z": -52.047284468107975
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
                      "_$id": "71e5dzim",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_10",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 19.937684750800514,
                          "y": 1.0942358130705543e-12,
                          "z": -14.012572382110708
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
                      "_$id": "fbms0vt7",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_11",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 73.87392683043672,
                          "y": 5.684341886080801e-13,
                          "z": -35.404576586794725
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
                      "_$id": "fw1kmpmr",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_12",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 48.270367436994384,
                          "y": 6.394884621840902e-13,
                          "z": -99.77968125340074
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
                      "_$id": "t6bsc6r3",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_13",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -46.892446912628856,
                          "y": 6.039613253960852e-13,
                          "z": -75.91646584556892
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
                      "_$id": "k556xbpm",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_14",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 36.19091198636562,
                          "y": 6.536993168992922e-13,
                          "z": -87.7569118438251
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
                      "_$id": "nxr775rs",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_15",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -87.60074777659173,
                          "y": 6.892264536872972e-13,
                          "z": -33.05685823004407
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
                      "_$id": "fawlp7k1",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_17",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 87.13940012261713,
                          "y": 2.842170943040401e-14,
                          "z": 8.419307923913674
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
                      "_$id": "6q40mc9m",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_19",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 58.97006249327713,
                          "y": 6.394884621840902e-14,
                          "z": -39.742429217318154
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
                      "_$id": "fgu9h59a",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -91.07157285507904,
                          "y": -1.4352963262354024e-12,
                          "z": -22.275771972647068
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
                      "_$id": "l80944iv",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_34",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -19.232741284839566,
                          "y": -7.602807272633072e-13,
                          "z": 33.22453009262868
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
                      "_$id": "u06kkbr3",
                      "_$prefab": "5a01a4f5-a340-40fb-9f8c-f46a61d30809",
                      "name": "Common_tree04_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -85.6969392399697,
                          "y": 1.3500311979441904e-13,
                          "z": -80.56062676929115
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
                      "_$id": "byu216j6",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_35",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -29.029862760529355,
                          "y": -3.907985046680551e-13,
                          "z": -46.68869561380362
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
                      "_$id": "bzwjjegf",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_36",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 14.83748637781851,
                          "y": -1.7763568394002505e-13,
                          "z": 32.952138597986924
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
                      "_$id": "m6m2344u",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_37",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 91.08694731034811,
                          "y": -1.7905676941154525e-12,
                          "z": 0.8184270243162111
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
                      "_$id": "vz4d3oa6",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_22",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -32.670711818220255,
                          "y": 6.821210263296962e-13,
                          "z": -25.571447504319437
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
                      "_$id": "pc2h421s",
                      "_$prefab": "5a01a4f5-a340-40fb-9f8c-f46a61d30809",
                      "name": "Common_tree04_3",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -8.182153495342597,
                          "y": 1.4210854715202004e-13,
                          "z": -81.46394105734211
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
                      "_$id": "8cylcx1n",
                      "_$prefab": "5a01a4f5-a340-40fb-9f8c-f46a61d30809",
                      "name": "Common_tree04_4",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -78.5414544555812,
                          "y": -7.105427357601002e-14,
                          "z": -90.7124324126813
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
                      "_$id": "wn7uf8xz",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_38",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 34.582484112174704,
                          "y": 1.2576606422953773e-12,
                          "z": -28.459203682418355
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
                      "_$id": "s8j5v4if",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_39",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -78.46545144826426,
                          "y": -8.171241461241152e-13,
                          "z": -55.220146093200704
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
                      "_$id": "jfu9bwfg",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_42",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 44.12743325529516,
                          "y": -1.2363443602225743e-12,
                          "z": 22.35502793826122
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.8,
                          "y": 0.8,
                          "z": 0.8
                        }
                      }
                    },
                    {
                      "_$id": "z0nurjel",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_43",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 73.2751410193948,
                          "y": -1.5774048733874224e-12,
                          "z": -69.0979013080777
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.8,
                          "y": 0.8,
                          "z": 0.8
                        }
                      }
                    },
                    {
                      "_$id": "wt36gh1l",
                      "_$prefab": "5a01a4f5-a340-40fb-9f8c-f46a61d30809",
                      "name": "Common_tree04_5",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -29.335399133219877,
                          "y": -6.465938895416912e-13,
                          "z": -9.308594703674316
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
                  "_$id": "06u3b71e",
                  "_$type": "Sprite3D",
                  "name": "langan",
                  "_$child": [
                    {
                      "_$id": "m60cw0xb",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_6",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -35.160894550088095,
                          "z": 9.754744537526049
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
                      "_$id": "ulm9oj5u",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_7",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 42.45330333960161,
                          "y": 7.815970093361102e-14,
                          "z": 9.333802419142005
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
                      "_$id": "7kpewde5",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_8",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 42.725094481379,
                          "y": -6.217248937900877e-13,
                          "z": 72.04476440753763
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
                      "_$id": "dhuo9185",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_9",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 90.16604336094417,
                          "y": -2.1316282072803006e-13,
                          "z": 71.8714020051361
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
                      "_$id": "lezzq8tj",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_11",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 81.89527366457077,
                          "y": -1.8474111129762605e-13,
                          "z": -71.06132339606391
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
                      "_$id": "gog1sb3a",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_13",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 58.57094943263853,
                          "y": 3.552713678800501e-15,
                          "z": 71.94381948109731
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
                      "_$id": "s2n6wuwx",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_14",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 42.671613745481295,
                          "y": -1.6342482922482304e-13,
                          "z": 47.827933054837295
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
                      "_$id": "x86p5hsz",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_16",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 90.27182658597985,
                          "y": -1.0942358130705543e-12,
                          "z": -52.761807031341796
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
                      "_$id": "nc2gtgc5",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_21",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -67.5663132251048,
                          "y": -1.4210854715202004e-13,
                          "z": -6.311571862979742
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
                      "_$id": "kjkk94nq",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_22",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 42.765868889788244,
                          "y": -1.7053025658242404e-13,
                          "z": 31.96517703008923
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
                      "_$id": "7ns5cjsy",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_25",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -89.57170519911402,
                          "y": -1.1368683772161603e-13,
                          "z": -6.472698389739044
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
                      "_$id": "dh20lg18",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_26",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -83.87748946922021,
                          "y": -1.7053025658242404e-13,
                          "z": -73.06484801473276
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
                      "_$id": "vqkadtf5",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_28",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -35.208696913924676,
                          "y": -5.044853423896711e-13,
                          "z": 72.0029624295201
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
                      "_$id": "yav6tm3z",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_29",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -35.31569019568571,
                          "y": -1.7763568394002505e-14,
                          "z": 47.8081471794423
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
                      "_$id": "vjzpktla",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_30",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -89.34443553369225,
                          "y": 1.3500311979441904e-13,
                          "z": -52.97997996583674
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
                      "_$id": "ikfsglh4",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_31",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 58.515345372707856,
                          "y": 2.2737367544323206e-13,
                          "z": -52.83117526751505
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
                      "_$id": "q4sc5204",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_32",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -35.3845480368133,
                          "y": -1.3500311979441904e-13,
                          "z": 32.09232357984902
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
                      "_$id": "o3z9h41k",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_34",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -67.50456748619973,
                          "y": -8.597567102697212e-13,
                          "z": -53.01624259050643
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
                      "_$id": "6j8eh549",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_35",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -83.90294391089735,
                          "y": -1.1368683772161603e-13,
                          "z": -88.99429636741185
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
                      "_$id": "tckd1taf",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_36",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -42.14324887886813,
                          "y": -7.105427357601002e-14,
                          "z": -11.111333977853748
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
                      "_$id": "yclgf2wf",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_37",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 32.04208395562179,
                          "y": 4.760636329592671e-13,
                          "z": -71.17077221160088
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
                      "_$id": "0ey2jb5d",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_38",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -42.25353809555462,
                          "y": -1.7763568394002505e-13,
                          "z": -44.85645174531935
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
                      "_$id": "g7jrcov8",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_39",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -10.400787525586736,
                          "y": -1.7053025658242404e-13,
                          "z": -73.06484985351562
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
                      "_$id": "2b34m8n4",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_40",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -10.321148280568512,
                          "y": -1.7053025658242404e-13,
                          "z": -89.0088298696233
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": -1,
                          "w": 6.123233995736766e-17
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
                  "_$id": "9ext3qb7",
                  "_$type": "Sprite3D",
                  "name": "HaTan",
                  "_$child": [
                    {
                      "_$id": "0kn4n039",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 74.42633120769102,
                          "y": 2.5579538487363607e-13,
                          "z": -60.67517976591529
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
                      "_$id": "kynct4zb",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_3",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -2.611846923828125,
                          "z": 1.5361021271442823
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
                      "_$id": "wu5qqgwd",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_4",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -36.30667009888174,
                          "y": 2.842170943040401e-14,
                          "z": -60.80539068962895
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
                      "_$id": "zpqw55j0",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_5",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 2.0860009836882316,
                          "y": 4.263256414560601e-14,
                          "z": -60.97826124136094
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
                      "_$id": "uyttrzrg",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_7",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 32.812203569732404,
                          "y": 5.258016244624741e-13,
                          "z": -60.86764583364555
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
                      "_$id": "wm22vbcu",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_8",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -64.49170332305475,
                          "z": 79.8247840567949
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
                      "_$id": "c52zwl51",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_9",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -12.643508495290446,
                          "z": 80.10104399932837
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
                      "_$id": "kghn3h6t",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_10",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 21.03671869548041,
                          "z": 79.84571399231882
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
                      "_$id": "9z5rk2wh",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_11",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 73.38520021913745,
                          "y": 2.7000623958883807e-13,
                          "z": 79.82982696047259
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
                      "_$id": "q6c6u82c",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_12",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 98.0242872046491,
                          "z": 34.320072174072266
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
                      "_$id": "7wr8wf8c",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_13",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 98.06654190457697,
                          "z": -23.804546356201172
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
                      "_$id": "raiprad1",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_14",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 50.45429900658418,
                          "y": 1.7763568394002505e-13,
                          "z": -21.65336277316036
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
                      "_$id": "lyfi6sxm",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_18",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 98.11311634935184,
                          "z": 7.756295849077826
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
                      "_$id": "chmad3p7",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_19",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -74.32875571169282,
                          "z": 1.6810597372506901
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
                  "_$id": "xx6v2cqk",
                  "_$type": "Sprite3D",
                  "name": "shitou",
                  "_$child": [
                    {
                      "_$id": "nn3mhxqw",
                      "_$prefab": "251e1529-1dc9-4214-a466-70e3fbe1ba6b",
                      "name": "shitou6_5",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 116.97437373665976,
                          "y": -2.9517273902893066,
                          "z": 5.563678714646359
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
                      "_$id": "clee0oa4",
                      "_$prefab": "251e1529-1dc9-4214-a466-70e3fbe1ba6b",
                      "name": "shitou6_6",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -33.49411003403082,
                          "y": -0.714483499526807,
                          "z": 108.06982917307631
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
                      "_$id": "227z1asl",
                      "_$prefab": "808d1d85-d39d-4b3e-9318-375e49bc13e1",
                      "name": "shitou-3",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -18.263062782340523,
                          "y": -3.9996294975280193,
                          "z": -111.15941716172838
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
                      "_$id": "rcklz245",
                      "_$prefab": "251e1529-1dc9-4214-a466-70e3fbe1ba6b",
                      "name": "shitou6",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -106.92561730316748,
                          "y": -3.260180950164738,
                          "z": -81.18904914098918
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
                      "_$id": "tx0sngoa",
                      "_$prefab": "2fcb8846-524f-4def-8c84-488b4ef62edf",
                      "name": "shitou5",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -110.29520039078747,
                          "y": -1.6485363245010376,
                          "z": 48.57030443042518
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
                              "y": -1.0597391985201199
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "p6hq13c5",
                      "_$prefab": "b13672d1-a560-42c9-b297-6ed93d289c6b",
                      "name": "shitou4",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 36.57714080810547,
                          "y": 0.10413450002670288,
                          "z": 107.62736626270677
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
                              "x": 1.4210854715202004e-14,
                              "y": -2.473990631956756,
                              "z": 1.4210854715202004e-14
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "5gcds5ws",
                      "_$prefab": "251e1529-1dc9-4214-a466-70e3fbe1ba6b",
                      "name": "shitou6_1",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -99.23439141200676,
                          "y": -1.63826584815979,
                          "z": -26.064015592277677
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.6708735287378047,
                          "w": 0.7415717823912167
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.0539737811775711,
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
                      "_$id": "kd84u0qp",
                      "_$prefab": "2fcb8846-524f-4def-8c84-488b4ef62edf",
                      "name": "shitou5_1",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -91.54691851643368,
                          "y": -2.356136798858529,
                          "z": 100.37239409931775
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
                      "_$id": "0kkcpji9",
                      "_$prefab": "b13672d1-a560-42c9-b297-6ed93d289c6b",
                      "name": "shitou4_1",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 88.68380737304688,
                          "y": -2.862425567112467,
                          "z": -87.22172919710913
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
                      "_$id": "2piqlfl8",
                      "_$prefab": "2fcb8846-524f-4def-8c84-488b4ef62edf",
                      "name": "shitou5_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 119.88827349653957,
                          "y": -1.7378367185592651,
                          "z": 69.2647476196289
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.1759259259259263,
                          "y": 1,
                          "z": 1
                        }
                      }
                    },
                    {
                      "_$id": "60jjgh5w",
                      "_$prefab": "2fcb8846-524f-4def-8c84-488b4ef62edf",
                      "name": "shitou5_3",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 97.17472839355469,
                          "y": -3.108996868133545,
                          "z": 100.90531777283213
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
                      "_$id": "md8m0bzo",
                      "_$prefab": "2fcb8846-524f-4def-8c84-488b4ef62edf",
                      "name": "shitou5_4",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -101.8943264585026,
                          "y": -2.223273277282658,
                          "z": -95.0394400912463
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
                      "_$id": "nm8ae1sn",
                      "_$prefab": "251e1529-1dc9-4214-a466-70e3fbe1ba6b",
                      "name": "shitou6_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -105.18997032635089,
                          "y": -2.0550901889800457,
                          "z": -44.10874452694483
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.9994632841827308,
                          "w": 0.03275887010673769
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.8,
                          "y": 0.8,
                          "z": 0.8
                        }
                      }
                    },
                    {
                      "_$id": "k4k0fvdl",
                      "_$prefab": "2fcb8846-524f-4def-8c84-488b4ef62edf",
                      "name": "shitou5_5",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -108.75326136852297,
                          "y": -3.1088452339172363,
                          "z": 5.861880221408827
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
                      "_$id": "msyg7ol2",
                      "_$prefab": "251e1529-1dc9-4214-a466-70e3fbe1ba6b",
                      "name": "shitou6_3",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -118.10735016636644,
                          "y": -2.6403172016142946,
                          "z": -60.44656564223416
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
                      "_$id": "g74qckti",
                      "_$prefab": "251e1529-1dc9-4214-a466-70e3fbe1ba6b",
                      "name": "shitou6_4",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -118.77562349928046,
                          "y": -2.6524558067321635,
                          "z": 85.44432372289255
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
                      "_$id": "wmj30plp",
                      "_$prefab": "cd3a0112-20ab-4ad8-8a1b-76f7937fb6f0",
                      "name": "shitou02",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 118.39868028629616,
                          "y": -2.312392234802246,
                          "z": -26.1520886650649
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
                      "_$id": "vaqhjpx7",
                      "_$prefab": "b5f4ad04-fd9c-4945-b436-cc1da529e24f",
                      "name": "shitou01",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 4.661525249481201,
                          "y": -2.4665446281433105,
                          "z": 108.64077160611478
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
                      "_$id": "y5dg198v",
                      "_$prefab": "2fcb8846-524f-4def-8c84-488b4ef62edf",
                      "name": "shitou5_8",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 120.09864398984887,
                          "y": -2.223273277282715,
                          "z": 22.948793554458838
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
                      "_$id": "j5mwhiqn",
                      "_$prefab": "b13672d1-a560-42c9-b297-6ed93d289c6b",
                      "name": "shitou4_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 10.651457389996487,
                          "y": -2.2761516571044638,
                          "z": -102.11060351667608
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
                      "_$id": "560kbdkj",
                      "_$prefab": "cd3a0112-20ab-4ad8-8a1b-76f7937fb6f0",
                      "name": "shitou02_1",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 59.62974205970553,
                          "y": -1.178545713424569,
                          "z": -108.28375332602434
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
                              "y": 1.1368683772161603e-13
                            },
                            "localScale": {
                              "_$type": "Vector3",
                              "x": 0.8099999,
                              "y": 1,
                              "z": 1
                            }
                          }
                        }
                      ]
                    },
                    {
                      "_$id": "qdgqc406",
                      "_$prefab": "cd3a0112-20ab-4ad8-8a1b-76f7937fb6f0",
                      "name": "shitou02_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -48.45138383249751,
                          "y": -2.0029101371762863,
                          "z": -108.04074960226448
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
                      "_$id": "pg85coy4",
                      "_$prefab": "2fcb8846-524f-4def-8c84-488b4ef62edf",
                      "name": "shitou5_9",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -55.834833416264416,
                          "y": -2.356136798858614,
                          "z": 100.4891455688529
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
                      "_$id": "fowc5zc2",
                      "_$prefab": "251e1529-1dc9-4214-a466-70e3fbe1ba6b",
                      "name": "shitou6_7",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 103.94380187988281,
                          "y": -2.9010304682806236,
                          "z": -79.49716186523438
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
                    },
                    {
                      "_$id": "yim1zypu",
                      "_$prefab": "251e1529-1dc9-4214-a466-70e3fbe1ba6b",
                      "name": "shitou6_8",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -109.04206232605186,
                          "y": -1.63826584815979,
                          "z": 33.34786484762046
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
                      "_$id": "2sooqzlh",
                      "_$prefab": "2fcb8846-524f-4def-8c84-488b4ef62edf",
                      "name": "shitou5_10",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 70.42701187199128,
                          "y": -3.1089968681335165,
                          "z": 100.5705792222374
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
                  "_$id": "530fw1s1",
                  "_$type": "Sprite3D",
                  "name": "shui",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2.691773150551036
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1.2
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "6gvdeok7",
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
                      "_$id": "kn23ngik",
                      "_$prefab": "2bd86be0-2d31-4b59-8b3e-f108ec8aaec5",
                      "name": "shui02_1",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 100,
                          "y": -1.7458044590682253
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        }
                      }
                    },
                    {
                      "_$id": "cifr7lyf",
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
                      "_$id": "9gaxp6kg",
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
                      "_$id": "htajnrlx",
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
                      "_$id": "skpzoebr",
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
                      "_$id": "ae4y41pn",
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
                      "_$id": "rz6cyoab",
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
                      "_$id": "jsux1scn",
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
                      "_$id": "8bftuq80",
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
                      "_$id": "z9ucnjqk",
                      "_$prefab": "2bd86be0-2d31-4b59-8b3e-f108ec8aaec5",
                      "name": "shui02_10",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 100,
                          "y": -1.7458044590682253,
                          "z": 50
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        }
                      }
                    },
                    {
                      "_$id": "fa6fuddy",
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
                      "_$id": "mbs6wtyc",
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
                      "_$id": "27csl2gv",
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
                      "_$id": "en2v3ted",
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
                }
              ]
            },
            {
              "_$id": "iqs5e70r",
              "_$type": "Sprite3D",
              "name": "Npcs"
            },
            {
              "_$id": "mit5uz09",
              "_$type": "Sprite3D",
              "name": "Players"
            },
            {
              "_$id": "hvjbpbap",
              "_$type": "Sprite3D",
              "name": "Building",
              "layer": 3,
              "_$child": [
                {
                  "_$id": "sreyzo3h",
                  "_$prefab": "931a193d-28a0-45d6-92ad-6d8bdd24109c",
                  "name": "putong_zhongxing16",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.01152794623934,
                      "y": -5.684341886080802e-14,
                      "z": -76.74542453668161
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "ae7l7rxq",
                  "_$prefab": "b874a152-89cd-4701-9521-e7aa643651f4",
                  "name": "putong_zhongxing15",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 44.0356429632586,
                      "y": -5.684341886080802e-14,
                      "z": 63.40567065281623
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "9a2i05y8",
                  "_$prefab": "1385bc70-85bd-4db8-b2bb-45be7ceaa6c1",
                  "name": "putong_zhongxing14",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 44.0356429632586,
                      "y": -5.684341886080802e-14,
                      "z": 68.68608904881229
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "68qt0g5w",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.01152794623934,
                      "y": -5.684341886080802e-14,
                      "z": -72.2241080083613
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "kinbifp5",
                  "_$prefab": "6b019b59-2b62-452a-ab80-6ddb5074b33d",
                  "name": "daxingjianzhu_shuita_1",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -76.11123163089808,
                      "y": 2.2737367544323206e-13,
                      "z": -28.007833265954098
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "fppjixx6",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_29",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 38.61964100059697,
                      "y": -1.4210854715202004e-14,
                      "z": 10.731164928380597
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "xvhxh05m",
                  "_$prefab": "6c202a02-68f1-4f83-83a1-0d5db0662635",
                  "name": "putong_xiaoxing01",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -108.4101705060413,
                      "y": 1.0977885267493548e-12,
                      "z": 75.00438288251395
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
                  "_$id": "jn3whz4z",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_30",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 22.865877756787384,
                      "y": -1.4210854715202004e-14,
                      "z": 10.731164932250977
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "lwh7bafz",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_31",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 4.896926603385804,
                      "y": -1.4210854715202004e-14,
                      "z": 10.731164932250977
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "izsj58vq",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_32",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -13.993697977399933,
                      "y": -1.4210854715202004e-14,
                      "z": 10.731164932250977
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "sd0ql86m",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_33",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -32.997724671657025,
                      "y": -1.4210854715202004e-14,
                      "z": 10.731164932250977
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "ats7c0hz",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_34",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -39.60234284957066,
                      "y": 3.268496584496461e-13,
                      "z": -13.335547146897762
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "98eggwlx",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_40",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 65.07541271419856,
                      "y": -6.394884621840902e-13,
                      "z": -73.04007720947266
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "nez3ot80",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_41",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 46.14107914035306,
                      "y": -6.394884621840902e-13,
                      "z": -73.04007720947266
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "quyl3hbh",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_42",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -48.54206803142637,
                      "y": -7.105427357601002e-14,
                      "z": -52.24939984153709
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "ue4lt3u6",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_43",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -71.57167607352501,
                      "y": 2.984279490192421e-13,
                      "z": -50.903321600084105
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "ontnvhrd",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_44",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -86.14234391285792,
                      "y": 2.984279490192421e-13,
                      "z": -50.9033203125
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "9ll7c1ve",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_45",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -85.77833614012997,
                      "y": -7.105427357601002e-14,
                      "z": -8.055346911498269
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "to526d4e",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_46",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -69.94373952155873,
                      "y": 2.4158453015843406e-13,
                      "z": -7.580026919140378
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "3hjvtl06",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_47",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -44.30285392041243,
                      "y": 7.105427357601002e-14,
                      "z": 88.75747420554683
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "0mb4vale",
                  "_$prefab": "0aa9a537-4d7c-4183-a5c2-764d39fa06ff",
                  "name": "putong_xiaoxing10_10",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 107.87230656306627,
                      "z": -56.563712746380226
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "dyhnc4uf",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_11",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 108.32616398494127,
                      "z": -61.04081627221269
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "kh8lqnb3",
                  "_$prefab": "f186ecd5-dc9b-42bf-b724-cf99e3af5799",
                  "name": "putong_ditiezhan_5",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.68589235774587,
                      "y": 2.6290081223123707e-13,
                      "z": -43.03911910275545
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "qlcye94t",
                  "_$prefab": "f186ecd5-dc9b-42bf-b724-cf99e3af5799",
                  "name": "putong_ditiezhan_6",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -55.404544761015906,
                      "y": 4.334310688136611e-13,
                      "z": 9.845079960058598
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "b3qcxqpb",
                  "_$prefab": "f186ecd5-dc9b-42bf-b724-cf99e3af5799",
                  "name": "putong_ditiezhan_7",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -69.53431909558394,
                      "y": -6.465938895416912e-13,
                      "z": -40.00835386039488
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "u6s126rm",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_7",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -50.46351390358759,
                      "y": 1.5631940186722204e-13,
                      "z": -20.98636259616123
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
                  "_$id": "r3i6wmb2",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 61.801134892792085,
                      "z": 1.4339650040596155
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "gz39p3qb",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_6",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -50.24329310163717,
                      "y": 1.5631940186722204e-13,
                      "z": -25.79629684032011
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
                  "_$id": "m9v050nw",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_5",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -50.34661564628362,
                      "y": 1.5631940186722204e-13,
                      "z": -16.23177061301542
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
                  "_$id": "q65h5dx0",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_4",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -53.40853576060436,
                      "y": 1.5631940186722204e-13,
                      "z": -13.74809809235849
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
                  "_$id": "b3yv2vni",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_3",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -53.68743896484375,
                      "y": 1.794120407794253e-13,
                      "z": -18.725188554653883
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
                  "_$id": "0ujsqtfa",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_2",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -53.63759467414363,
                      "y": 2.007283228522283e-13,
                      "z": -24.04698639415081
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
                  "_$id": "etsihaal",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_1",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -53.42739395563195,
                      "y": 1.758593271006248e-13,
                      "z": -28.482497901532234
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
                  "_$id": "jxdil27w",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_8",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -50.34837944399951,
                      "y": 1.5631940186722204e-13,
                      "z": -30.705569271345354
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
                  "_$id": "abyl82pk",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_48",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 38.353031563516645,
                      "y": -7.105427357601002e-14,
                      "z": -52.2494010925293
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "m99im6mn",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_9",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -83.88425608884228,
                      "y": 1.2789769243681803e-13,
                      "z": 27.511981547914264
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
                  "_$id": "f08o5aec",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_10",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -83.77744456540478,
                      "y": 1.2789769243681803e-13,
                      "z": 22.88350254400801
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
                  "_$id": "1wcdvcj0",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_11",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -83.95545959472656,
                      "y": 1.2789769243681803e-13,
                      "z": 31.993027351465273
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
                  "_$id": "khv7ldx4",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_12",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -87.01738139401806,
                      "y": 1.2789769243681803e-13,
                      "z": 34.988764346681364
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
                  "_$id": "0ejkvm1l",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_13",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -86.9720894933833,
                      "y": 1.509903313490213e-13,
                      "z": 29.958697856508014
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
                  "_$id": "xtfhy0j6",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_14",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -86.92224665891064,
                      "y": 1.723066134218243e-13,
                      "z": 25.041087688050983
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
                  "_$id": "98vrp7ad",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_15",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -86.9388634801997,
                      "y": 1.4566126083082054e-13,
                      "z": 20.35607487066817
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
                  "_$id": "6s5cktil",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_16",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -83.814485275854,
                      "y": 1.2789769243681803e-13,
                      "z": 17.883502544008014
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
                  "_$id": "r5f0z85t",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_17",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 44.9686630938428,
                      "y": 1.4210854715202004e-13,
                      "z": -23.23607101619963
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
                  "_$id": "sv9i4nzj",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_18",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 44.474346885181646,
                      "y": 1.4210854715202004e-13,
                      "z": -28.125908863544073
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
                  "_$id": "xw9ieb29",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_19",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 44.45314619985209,
                      "y": 1.4210854715202004e-13,
                      "z": -18.215944290161133
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
                  "_$id": "wmv7v3uz",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_20",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 40.97305128438037,
                      "y": 1.4210854715202004e-13,
                      "z": -15.759286880493164
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
                  "_$id": "i24fffiw",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_21",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 40.783115219473004,
                      "y": 1.652011860642233e-13,
                      "z": -20.78935432434082
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
                  "_$id": "72lcvjzl",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_22",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.09431804032006,
                      "y": 1.865174681370263e-13,
                      "z": -25.70696449279785
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
                  "_$id": "npfsfr5n",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_23",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.025428426627336,
                      "y": 1.5987211554602254e-13,
                      "z": -30.574928680995473
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
                  "_$id": "x9p20coq",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_24",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 44.04526792233656,
                      "y": 1.6342482922482304e-13,
                      "z": -30.799809361506945
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
                  "_$id": "3p9fqbtr",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_12",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 108.32616398494127,
                      "z": -52.35217856251024
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "i6ig14mu",
                  "_$prefab": "0aa9a537-4d7c-4183-a5c2-764d39fa06ff",
                  "name": "putong_xiaoxing10_11",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 107.87230682373047,
                      "z": -33.13493969275956
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "w9yvwlbz",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_13",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 108.32616424560547,
                      "z": -37.61204387977128
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "76acrl6z",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_14",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 108.32616424560547,
                      "z": -28.92340328528885
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "33gjknpt",
                  "_$prefab": "0aa9a537-4d7c-4183-a5c2-764d39fa06ff",
                  "name": "putong_xiaoxing10_12",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 107.87230682373047,
                      "z": -11.46734274049725
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "416rdg5r",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_15",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 108.32616424560547,
                      "z": -15.94444692750897
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "fq48l1cs",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_16",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 108.32616424560547,
                      "z": -7.25580442567791
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "714ogmc8",
                  "_$prefab": "0aa9a537-4d7c-4183-a5c2-764d39fa06ff",
                  "name": "putong_xiaoxing10_13",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 107.87230682373047,
                      "z": 8.27425500839373
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "gq3j23dt",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_17",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 108.32616424560547,
                      "z": 3.7971508213820115
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "ilm3ph66",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_18",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 108.32616424560547,
                      "z": 12.485792846375908
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "ipp0qnq6",
                  "_$prefab": "0aa9a537-4d7c-4183-a5c2-764d39fa06ff",
                  "name": "putong_xiaoxing10_14",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 107.87230682373047,
                      "z": 29.239108685627436
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "bwrjp2re",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_19",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 108.32616424560547,
                      "z": 24.762004737034296
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "vumqc3h6",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_20",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 108.32616424560547,
                      "z": 33.45064700044677
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "lkqn4jdk",
                  "_$prefab": "0aa9a537-4d7c-4183-a5c2-764d39fa06ff",
                  "name": "putong_xiaoxing10_15",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 107.87230682373047,
                      "z": 50.86101768852332
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "5h25glut",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_21",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 108.32616424560547,
                      "z": 46.3839135015116
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "9cvv1czi",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_22",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 108.32616424560547,
                      "z": 55.07255409599402
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "m7x16h7m",
                  "_$prefab": "0aa9a537-4d7c-4183-a5c2-764d39fa06ff",
                  "name": "putong_xiaoxing10_16",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 107.87230682373047,
                      "z": 74.23603021207661
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "p7byh9x7",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_23",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 108.32616424560547,
                      "z": 69.7589260250649
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "xib91zkg",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_24",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 108.32616424560547,
                      "z": 78.44756661954732
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "ewb9yx56",
                  "_$prefab": "0aa9a537-4d7c-4183-a5c2-764d39fa06ff",
                  "name": "putong_xiaoxing10_21",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -99.30069875097354,
                      "z": 5.920811434032174
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "w76r5e7r",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_33",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -98.84684132909854,
                      "z": 1.4437072470204555
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "24gxxnff",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_34",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -98.84684132909854,
                      "z": 10.132347841502877
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "pontfgyj",
                  "_$prefab": "0aa9a537-4d7c-4183-a5c2-764d39fa06ff",
                  "name": "putong_xiaoxing10_22",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -99.30069875097354,
                      "z": 27.542721529247018
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "xr4b8avo",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_35",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -98.84684132909854,
                      "z": 23.0656173422353
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "mfq84v7p",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_36",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -98.84684132909854,
                      "z": 31.75425793671772
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "t6m8lbor",
                  "_$prefab": "0aa9a537-4d7c-4183-a5c2-764d39fa06ff",
                  "name": "putong_xiaoxing10_23",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -99.30069875097354,
                      "z": 50.917732973338815
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "jsugzb3x",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_37",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -98.84684132909854,
                      "z": 46.440628786327096
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "md03sw25",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_38",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -98.84684132909854,
                      "z": 55.12926556611225
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "tczaos1f",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_49",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -57.8640394718714,
                      "y": 7.105427357601002e-14,
                      "z": 88.75747680664062
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "9efbyhte",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_50",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -71.92769410336678,
                      "y": 7.105427357601002e-14,
                      "z": 88.75747680664062
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "pbcyqvfv",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_51",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -85.79026523492955,
                      "y": 7.105427357601002e-14,
                      "z": 88.75747680664062
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "mm9s2g5z",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_52",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -97.14837080095809,
                      "y": 7.105427357601002e-14,
                      "z": 88.75747680664062
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "22lddrni",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -18.027478847321177,
                      "z": -80.35783487256123
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "i90t4z92",
                  "_$prefab": "95ce4798-eec9-47a0-a2f4-61170ad6a700",
                  "name": "putong_dajianzhu02",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -106.29164771028266,
                      "y": -1.4210854715202004e-14,
                      "z": -62.25530435726955
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -1,
                      "w": 6.123233995736766e-17
                    }
                  }
                },
                {
                  "_$id": "rbt7e1fj",
                  "_$prefab": "8430c7a4-b5b2-4b22-9296-20e57bb5f3de",
                  "name": "daxingjianzhu_zuqiuchang",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 11.843830156243804,
                      "y": 5.115907697472721e-13,
                      "z": -78.45505983716194
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "1z7ipdqt",
                  "_$prefab": "e697fcaa-edb4-4f83-bc82-6480ad1ed034",
                  "name": "daxingjianzhu_yuanxing",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.34688251495736,
                      "y": 1.1368683772161603e-13,
                      "z": 29.887752828353385
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "bsh5yfb5",
                  "_$prefab": "9726d308-e0eb-4e08-a2ce-46315d7f644e",
                  "name": "daxingjianzhu_yuanhu",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -4.103159206487736,
                      "y": 6.394884621840902e-13,
                      "z": -27.91800256112512
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "mdoqx63m",
                  "_$prefab": "f56d272c-4990-4280-984f-6fac7fd6b4b2",
                  "name": "daxingjianzhu_lanse_2",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 3.069070906008835,
                      "y": 3.154809746774845e-12,
                      "z": 92.56806857616286
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "6fbfzl5c",
                  "_$prefab": "e414f28c-a913-43c4-9590-7b1d49da04d4",
                  "name": "daxingjianzhu_fangxing_1",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -65.78887590729163,
                      "z": 12.651664514903203
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "zkw1hp6q",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_25",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -94.11821704317875,
                      "y": 1.4210854715202004e-13,
                      "z": -62.662763604416256
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
                  "_$id": "yhzcz8cg",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_26",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -94.01140551974125,
                      "y": 1.4210854715202004e-13,
                      "z": -67.29124260832253
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
                  "_$id": "jvb4wexj",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_27",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -94.1894221823389,
                      "y": 1.4210854715202004e-13,
                      "z": -58.181718835129146
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
                  "_$id": "rn8e3hna",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_28",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -97.25134234835453,
                      "y": 1.4210854715202004e-13,
                      "z": -55.18597985197482
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
                  "_$id": "izzthkfc",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_29",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -97.20605426241703,
                      "y": 1.652011860642233e-13,
                      "z": -60.2160472958225
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
                  "_$id": "nhh9rlr1",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_30",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -97.15621142794437,
                      "y": 1.865174681370263e-13,
                      "z": -65.13365746427954
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
                  "_$id": "lwrvnlxw",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_31",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -97.17282824923343,
                      "y": 1.5987211554602254e-13,
                      "z": -69.81867028166235
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
                  "_$id": "uxcwh22f",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_32",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -94.04844623019046,
                      "y": 1.4210854715202004e-13,
                      "z": -72.29124260832253
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
                  "_$id": "x95hby6g",
                  "_$prefab": "6c202a02-68f1-4f83-83a1-0d5db0662635",
                  "name": "putong_xiaoxing01_1",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -108.41017150878906,
                      "y": 1.0977885267493548e-12,
                      "z": 86.8641869431737
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
                  "_$id": "aimaw9sl",
                  "_$prefab": "6c202a02-68f1-4f83-83a1-0d5db0662635",
                  "name": "putong_xiaoxing01_2",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.81190870275451,
                      "y": 1.0977885267493548e-12,
                      "z": 89.38243103027344
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
                  "_$id": "kj3o2pln",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_1",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 78.812612689774,
                      "y": -6.679101716144942e-13,
                      "z": 64.71127675949445
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "xm10gism",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_2",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 78.81261444091797,
                      "y": -6.679101716144942e-13,
                      "z": 51.55734904531195
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "pfxw4lxq",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_3",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 78.81261444091797,
                      "y": -6.679101716144942e-13,
                      "z": 26.37183700739989
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "x6i5gqmx",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_4",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 78.81261444091797,
                      "y": -6.679101716144942e-13,
                      "z": 39.525763856765124
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "t9k29fjq",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_7",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 78.81261444091797,
                      "y": -6.679101716144942e-13,
                      "z": -22.435051548099175
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "chsfcvk3",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_8",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 78.81261444091797,
                      "y": -6.679101716144942e-13,
                      "z": -9.281122791385307
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "wm5lr844",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_9",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 78.81261444091797,
                      "y": -6.679101716144942e-13,
                      "z": -46.78495656213724
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "ggyni4vk",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_10",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 78.81261444091797,
                      "y": -6.679101716144942e-13,
                      "z": -33.63102780542341
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "2ul53bfh",
                  "_$prefab": "708d6e64-2ee4-49a8-94a2-3c1bc1da9a21",
                  "name": "putong_dajianzhu04_1",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 62.910207905761354,
                      "y": -1.4210854715202004e-14,
                      "z": -39.36892667614267
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "lv5wanja",
                  "_$prefab": "708d6e64-2ee4-49a8-94a2-3c1bc1da9a21",
                  "name": "putong_dajianzhu04_2",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 62.91020965576172,
                      "y": -1.4210854715202004e-14,
                      "z": -14.969718878803725
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "9zwlegth",
                  "_$prefab": "708d6e64-2ee4-49a8-94a2-3c1bc1da9a21",
                  "name": "putong_dajianzhu04_4",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 62.91020965576172,
                      "y": -1.4210854715202004e-14,
                      "z": 35.12747998763654
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "dwjbiw41",
                  "_$prefab": "708d6e64-2ee4-49a8-94a2-3c1bc1da9a21",
                  "name": "putong_dajianzhu04_5",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 62.91020965576172,
                      "y": -1.4210854715202004e-14,
                      "z": 59.51783814888408
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "zbtwws9m",
                  "_$prefab": "6c202a02-68f1-4f83-83a1-0d5db0662635",
                  "name": "putong_xiaoxing01_3",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 83.19734559945724,
                      "y": 1.0977885267493548e-12,
                      "z": 89.38243103027344
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
                  "_$id": "q0jx1zwy",
                  "_$prefab": "6c202a02-68f1-4f83-83a1-0d5db0662635",
                  "name": "putong_xiaoxing01_4",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 69.42091530651304,
                      "y": 1.0977885267493548e-12,
                      "z": 89.38243103027344
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
                  "_$id": "16swn25k",
                  "_$prefab": "6c202a02-68f1-4f83-83a1-0d5db0662635",
                  "name": "putong_xiaoxing01_5",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 57.96822169318273,
                      "y": 1.0977885267493548e-12,
                      "z": 89.38243103027344
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
                  "_$id": "fjhtpp9q",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_11",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -19.283996156052783,
                      "y": -1.5489831639570184e-12,
                      "z": 53.598613122663394
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "5rinwm3x",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_12",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -19.283996156052783,
                      "y": -1.5489831639570184e-12,
                      "z": 66.75254378672594
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "mbf1tmx4",
                  "_$prefab": "708d6e64-2ee4-49a8-94a2-3c1bc1da9a21",
                  "name": "putong_dajianzhu04_6",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 78.50677804395752,
                      "y": -1.4210854715202004e-14,
                      "z": -91.375612275049
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "2ylw085z",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_13",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 61.28374854967196,
                      "y": -6.679101716144942e-13,
                      "z": -99.94905664150409
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "ek2cooep",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_14",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 61.28374854967196,
                      "y": -6.679101716144942e-13,
                      "z": -86.79512597744157
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "pn91cel3",
                  "_$prefab": "708d6e64-2ee4-49a8-94a2-3c1bc1da9a21",
                  "name": "putong_dajianzhu04_7",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 45.38134412214355,
                      "y": -1.4210854715202004e-14,
                      "z": -91.375612275049
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "p8enoguy",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_15",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 24.114703500301314,
                      "y": -6.679101716144942e-13,
                      "z": -41.267796990951766
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "lahsnf2h",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_16",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 24.114703500301314,
                      "y": -6.679101716144942e-13,
                      "z": -28.113866326889266
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "5q5nmk6i",
                  "_$prefab": "708d6e64-2ee4-49a8-94a2-3c1bc1da9a21",
                  "name": "putong_dajianzhu04_8",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 8.21229871514506,
                      "y": -1.4210854715202004e-14,
                      "z": -33.8517661071627
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "78y6fhd4",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_17",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -24.266316049616506,
                      "y": -6.679101716144942e-13,
                      "z": -41.26779556274414
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "wmdwcs4h",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_18",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -24.266316049616506,
                      "y": -6.679101716144942e-13,
                      "z": -28.113866806030273
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "6ox2pr0k",
                  "_$prefab": "708d6e64-2ee4-49a8-94a2-3c1bc1da9a21",
                  "name": "putong_dajianzhu04_9",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -40.16872178844707,
                      "y": -1.4210854715202004e-14,
                      "z": -33.85176467895508
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "0uv5pz5b",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_19",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 25.740824026312616,
                      "y": -6.679101716144942e-13,
                      "z": 19.5208069838648
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "m9zfwvcy",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_20",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 25.740824026312616,
                      "y": -6.679101716144942e-13,
                      "z": 29.558142096809817
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "vk1iyupc",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_25",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -29.603858623322154,
                      "z": -80.35783487256123
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "7d0rhbyc",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_26",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -41.328000697907115,
                      "z": -80.35783487256123
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "gp5ycyh2",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_27",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -52.12019887905946,
                      "z": -80.35783487256123
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "swfq5akz",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_28",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -76.75449148159856,
                      "z": -80.35783487256123
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "swhfva9p",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_29",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -64.61646047573916,
                      "z": -80.35783487256123
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "vuu1e5bd",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_33",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 96.18237182509763,
                      "y": 8.526512829121202e-14,
                      "z": -52.755317780035874
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
                  "_$id": "2f7b5w0o",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_34",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 100.1674544514404,
                      "y": -5.002220859751105e-12,
                      "z": -40.26821527149095
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
                  "_$id": "nmrkikyw",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_35",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.81221649062496,
                      "y": 2.1316282072803006e-14,
                      "z": -32.719383331793686
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
                  "_$id": "atvhwnqw",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_36",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 96.02014610183102,
                      "y": -0.19972965121269226,
                      "z": -26.538715454596392
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
                  "_$id": "k86srsw2",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_37",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.6097037495361,
                      "y": -4.9666937229631e-12,
                      "z": -8.574964615362989
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
                  "_$id": "j6hn7kzk",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_38",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 99.61664077651365,
                      "y": -0.3358021080493927,
                      "z": 57.42190542553053
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7057723611368334,
                      "w": 0.7084386877178146
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.1999999958457086,
                      "y": 1.2000000476837158,
                      "z": 1.1999999958457086
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "5mjla5nn",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_39",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 99.66947433364255,
                      "y": -0.20936055481433868,
                      "z": 73.24180975292313
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7057723611368334,
                      "w": 0.7084386877178146
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.1999999958457086,
                      "y": 1.2000000476837158,
                      "z": 1.1999999958457086
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "gyp5ikxx",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_40",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.60415992545123,
                      "y": 1.623590151211829e-12,
                      "z": 0.046854925325348074
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
                  "_$id": "exjlvsnv",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_41",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 47.08700141715045,
                      "y": 1.9824142327706795e-12,
                      "z": 0.018679571321441824
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
                  "_$id": "f073c2gj",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_42",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 30.02736625479693,
                      "y": 9.308109838457312e-13,
                      "z": 3.206927251985504
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
                  "_$id": "nmymycp8",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_43",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 35.509505842199275,
                      "y": 9.308109838457312e-13,
                      "z": 3.3852872373370664
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
                  "_$id": "gu1n7zx2",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_44",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -4.116691257486399,
                      "y": 9.308109838457312e-13,
                      "z": 3.850106668641998
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
                  "_$id": "3sni270t",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_45",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.365448568334524,
                      "y": 9.308109838457312e-13,
                      "z": 4.0284666539935605
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
                  "_$id": "q7rt6mtv",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_46",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -66.57390251351363,
                      "y": 1.623590151211829e-12,
                      "z": 0.4504405977038882
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
                  "_$id": "gocfj8ef",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_47",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -61.0910610218144,
                      "y": 1.9824142327706795e-12,
                      "z": 0.422265243699982
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
                  "_$id": "wg00xz6n",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_48",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -78.15069618416793,
                      "y": 9.308109838457312e-13,
                      "z": 3.610512924364044
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
                  "_$id": "1w8370ac",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_49",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -72.66855659676558,
                      "y": 9.308109838457312e-13,
                      "z": 3.7888729097156064
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
                  "_$id": "75034xia",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_50",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 37.415718021105285,
                      "y": 1.623590151211829e-12,
                      "z": -62.77977710262307
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
                  "_$id": "rvd0put9",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_51",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 42.8985595128045,
                      "y": 1.9824142327706795e-12,
                      "z": -62.80795245662698
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
                  "_$id": "s2jkqij8",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_52",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 25.838924350450988,
                      "y": 9.308109838457312e-13,
                      "z": -59.61970477596299
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
                  "_$id": "47y6yeex",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_53",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 31.321063937853335,
                      "y": 9.308109838457312e-13,
                      "z": -59.441344790611424
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
                  "_$id": "mvoho5vz",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_54",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -8.305133161832334,
                      "y": 9.308109838457312e-13,
                      "z": -58.97652535930649
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
                  "_$id": "arotyqhy",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_55",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2.82299333601141,
                      "y": 9.308109838457312e-13,
                      "z": -58.79816537395493
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
                  "_$id": "4186pcu5",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_56",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -70.76234441785957,
                      "y": 1.623590151211829e-12,
                      "z": -62.376191430244525
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
                  "_$id": "ntneqnp6",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_57",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -65.27950292616035,
                      "y": 1.9824142327706795e-12,
                      "z": -62.40436678424843
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
                  "_$id": "ultvcyhk",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_58",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -82.33913808851389,
                      "y": 9.308109838457312e-13,
                      "z": -59.21611910358445
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
                  "_$id": "0vjsebn7",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_59",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -76.85699850111155,
                      "y": 9.308109838457312e-13,
                      "z": -59.037759118232884
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
                  "_$id": "9brfeiuk",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_60",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 56.89430429148717,
                      "y": 1.623590151211829e-12,
                      "z": 78.05060242418713
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
                  "_$id": "v88zx16c",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_61",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 62.3771457831864,
                      "y": 1.9824142327706795e-12,
                      "z": 78.02242707018323
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
                  "_$id": "9slxm8cr",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_62",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 45.31751062083287,
                      "y": 9.308109838457312e-13,
                      "z": 81.21067475084729
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
                  "_$id": "5incsb0s",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_63",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 50.7996502082352,
                      "y": 9.308109838457312e-13,
                      "z": 81.38903473619885
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
                  "_$id": "vm3mew9x",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_64",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 11.173453108549552,
                      "y": 9.308109838457312e-13,
                      "z": 81.85385416750378
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
                  "_$id": "ygh4ndxx",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_65",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 16.655592934370475,
                      "y": 9.308109838457312e-13,
                      "z": 82.03221415285535
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
                  "_$id": "jpzg7s83",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_66",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -51.28375814747769,
                      "y": 1.623590151211829e-12,
                      "z": 78.45418809656567
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
                  "_$id": "i18uvxnn",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_67",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -45.80091665577846,
                      "y": 1.9824142327706795e-12,
                      "z": 78.42601274256177
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
                  "_$id": "uuakmibo",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_68",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -62.860551818131945,
                      "y": 9.308109838457312e-13,
                      "z": 81.61426042322583
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
                  "_$id": "wkuknqck",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_69",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -57.378412230729616,
                      "y": 9.308109838457312e-13,
                      "z": 81.79262040857739
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
                  "_$id": "ktl42fhe",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_70",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -52.04306373168165,
                      "y": 1.5631940186722204e-13,
                      "z": 24.55926554208132
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
                  "_$id": "ipmpj7fs",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_71",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -51.82284507323438,
                      "y": 1.5631940186722204e-13,
                      "z": 19.749330925992457
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
                  "_$id": "brnvlny5",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_72",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -51.926166148673836,
                      "y": 1.5631940186722204e-13,
                      "z": 29.313856530240507
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
                  "_$id": "4hgsyu5n",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_73",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -54.98808631468946,
                      "y": 1.5631940186722204e-13,
                      "z": 31.797529625943632
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
                  "_$id": "psnnpuha",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_74",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -55.2669902758711,
                      "y": 1.794120407794253e-13,
                      "z": 26.820438790372343
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
                  "_$id": "yn5nsa8p",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_75",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -55.217147441398446,
                      "y": 2.007283228522283e-13,
                      "z": 21.49864237313601
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
                  "_$id": "04qeljgp",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_76",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -55.00694617797071,
                      "y": 1.758593271006248e-13,
                      "z": 17.0631298304114
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
                  "_$id": "ey28zh3p",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_77",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -51.92793235350782,
                      "y": 1.5631940186722204e-13,
                      "z": 14.840057778409445
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
                  "_$id": "3ilq7jj1",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_78",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.5203632350073732,
                      "y": 7.815970093361102e-13,
                      "z": -12.228764398457018
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
                  "_$id": "98n7nf3i",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_79",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2.014679336081592,
                      "y": 7.815970093361102e-13,
                      "z": -17.1186035708203
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
                  "_$id": "xkg0gqlj",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_80",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2.03587760878667,
                      "y": 7.815970093361102e-13,
                      "z": -7.208638055683581
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
                  "_$id": "umu9czre",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_81",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -5.515972518454639,
                      "y": 7.815970093361102e-13,
                      "z": -4.751980646015613
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
                  "_$id": "883e0242",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_82",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -5.705910110007374,
                      "y": 8.046896482483135e-13,
                      "z": -9.782048089863268
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
                  "_$id": "exbce69c",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_83",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -5.394707107077686,
                      "y": 8.260059303211165e-13,
                      "z": -14.699658258320301
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
                  "_$id": "38jab5sb",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_84",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -5.463596724997608,
                      "y": 7.993605777301127e-13,
                      "z": -19.567622049213856
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
                  "_$id": "ym86fnjy",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_85",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2.443756484519092,
                      "y": 8.029132914089132e-13,
                      "z": -19.792502267719716
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
                  "_$id": "9q5zvx93",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_53",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 28.135404059397032,
                      "y": -7.105427357601002e-14,
                      "z": -52.2494010925293
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "6rkjhuhl",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_54",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 17.051506738868703,
                      "y": -7.105427357601002e-14,
                      "z": -52.2494010925293
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "wex2s5zd",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_55",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 4.29997636313092,
                      "y": -7.105427357601002e-14,
                      "z": -52.2494010925293
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "kdojetc9",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_56",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -5.759752580682267,
                      "y": -7.105427357601002e-14,
                      "z": -52.2494010925293
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "c0ape5qn",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_57",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -15.97737915233754,
                      "y": -7.105427357601002e-14,
                      "z": -52.2494010925293
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "nk1zys1y",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_58",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -27.061277696649064,
                      "y": -7.105427357601002e-14,
                      "z": -52.2494010925293
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "mr3yzu3x",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_59",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -39.81280739025257,
                      "y": -7.105427357601002e-14,
                      "z": -52.2494010925293
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "u9ckhigx",
                  "_$prefab": "6c202a02-68f1-4f83-83a1-0d5db0662635",
                  "name": "putong_xiaoxing01_6",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -15.09236665359969,
                      "y": 1.63069557856943e-12,
                      "z": 92.00016541047577
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
                  "_$id": "im5ws0fv",
                  "_$prefab": "6c202a02-68f1-4f83-83a1-0d5db0662635",
                  "name": "putong_xiaoxing01_7",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 22.559211048443384,
                      "y": 1.63069557856943e-12,
                      "z": 92.00016784667969
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
                  "_$id": "kp7jud59",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_64",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 49.327056884765625,
                      "y": 8.526512829121202e-14,
                      "z": -58.87021255493164
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
                  "_$id": "oh26w4i3",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_65",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 53.31214141845703,
                      "y": -5.002220859751105e-12,
                      "z": -46.38311004638672
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
                  "_$id": "0u7uy03g",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_17",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 52.761329650878906,
                      "y": -0.3358021080493927,
                      "z": 51.307010650634766
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7057723668882234,
                      "w": 0.7084386819880708
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.199999995771961,
                      "y": 1.2000000476837158,
                      "z": 1.199999995771961
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "ifpviyru",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_18",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 52.81416320800781,
                      "y": -0.20936055481433868,
                      "z": 67.12691497802734
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7057723668882234,
                      "w": 0.7084386819880708
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.199999995771961,
                      "y": 1.2000000476837158,
                      "z": 1.199999995771961
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#45",
                      "layer": 3
                    }
                  ]
                },
                {
                  "_$id": "0v5ba7zs",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_66",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -44.318668365478516,
                      "y": 8.526512829121202e-14,
                      "z": 24.35647201538086
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
                  "_$id": "1nf330u0",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_67",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -40.33358383178711,
                      "y": -5.002220859751105e-12,
                      "z": 36.84357452392578
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
                  "_$id": "92vqcbqn",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_68",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -44.688819885253906,
                      "y": 2.1316282072803006e-14,
                      "z": 44.39240264892578
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
                  "_$id": "je7h16ka",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_69",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -44.480892181396484,
                      "y": -0.19972965121269226,
                      "z": 50.57307434082031
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
                  "_$id": "ldpcmedb",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_70",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -44.891334533691406,
                      "y": -4.9666937229631e-12,
                      "z": 68.53682708740234
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
                  "_$id": "djptm9d2",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_1",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 76.10411494250026,
                      "y": -5.684341886080802e-14,
                      "z": -72.22411053206147
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "91wynbvl",
                  "_$prefab": "1385bc70-85bd-4db8-b2bb-45be7ceaa6c1",
                  "name": "putong_zhongxing14_1",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 40.12823329528985,
                      "y": -5.684341886080802e-14,
                      "z": 68.68608141941776
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "0aj0v17r",
                  "_$prefab": "b874a152-89cd-4701-9521-e7aa643651f4",
                  "name": "putong_zhongxing15_1",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 40.12823329528985,
                      "y": -5.684341886080802e-14,
                      "z": 63.405663023421695
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "w383n703",
                  "_$prefab": "931a193d-28a0-45d6-92ad-6d8bdd24109c",
                  "name": "putong_zhongxing16_1",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 76.10411494250026,
                      "y": -5.684341886080802e-14,
                      "z": -76.74542706038179
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "wv9sde46",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_2",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 37.22182581000581,
                      "y": -5.684341886080802e-14,
                      "z": 73.49986026469371
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "odjsk31x",
                  "_$prefab": "1385bc70-85bd-4db8-b2bb-45be7ceaa6c1",
                  "name": "putong_zhongxing14_2",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 43.72694186806765,
                      "y": -5.684341886080802e-14,
                      "z": 51.35388320004934
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "mlgwat3e",
                  "_$prefab": "931a193d-28a0-45d6-92ad-6d8bdd24109c",
                  "name": "putong_zhongxing16_2",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 42.444243662113784,
                      "y": -5.684341886080802e-14,
                      "z": 55.693452838164895
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "67j4wayq",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_3",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 37.07089087794299,
                      "y": -5.684341886080802e-14,
                      "z": 69.8350004702055
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "tqggluhb",
                  "_$prefab": "1385bc70-85bd-4db8-b2bb-45be7ceaa6c1",
                  "name": "putong_zhongxing14_3",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 39.8195322000989,
                      "y": -5.684341886080802e-14,
                      "z": 51.35387557065481
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "cfdfawdo",
                  "_$prefab": "931a193d-28a0-45d6-92ad-6d8bdd24109c",
                  "name": "putong_zhongxing16_3",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 37.070893352898906,
                      "y": -5.684341886080802e-14,
                      "z": 53.76939708501142
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "5cuqe5eh",
                  "_$prefab": "1385bc70-85bd-4db8-b2bb-45be7ceaa6c1",
                  "name": "putong_zhongxing14_4",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 32.325418645839456,
                      "y": -5.684341886080802e-14,
                      "z": 68.59515108902833
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "pg4kw41i",
                  "_$prefab": "b874a152-89cd-4701-9521-e7aa643651f4",
                  "name": "putong_zhongxing15_2",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 32.325418645839456,
                      "y": -5.684341886080802e-14,
                      "z": 63.31473269303227
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "pcs8eccw",
                  "_$prefab": "1385bc70-85bd-4db8-b2bb-45be7ceaa6c1",
                  "name": "putong_zhongxing14_5",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 28.418008977870674,
                      "y": -5.684341886080802e-14,
                      "z": 68.5951434596338
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "z759dq6y",
                  "_$prefab": "b874a152-89cd-4701-9521-e7aa643651f4",
                  "name": "putong_zhongxing15_3",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 28.418008977870674,
                      "y": -5.684341886080802e-14,
                      "z": 63.31472506363774
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "yz7qcbda",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_4",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 30.15418321304709,
                      "y": -5.684341886080802e-14,
                      "z": 72.58364715958217
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "mcynkjja",
                  "_$prefab": "1385bc70-85bd-4db8-b2bb-45be7ceaa6c1",
                  "name": "putong_zhongxing14_6",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 30.703913386729973,
                      "y": -5.684341886080802e-14,
                      "z": 52.08685265487164
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "3br7i4ya",
                  "_$prefab": "931a193d-28a0-45d6-92ad-6d8bdd24109c",
                  "name": "putong_zhongxing16_4",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 32.110539783211685,
                      "y": -5.684341886080802e-14,
                      "z": 58.62532786011424
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "99rpe58s",
                  "_$prefab": "931a193d-28a0-45d6-92ad-6d8bdd24109c",
                  "name": "putong_zhongxing16_5",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 35.743085562531974,
                      "y": -5.684341886080802e-14,
                      "z": 58.35047145779858
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "7z8bgmg5",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_5",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 43.56320740834712,
                      "y": -5.684341886080802e-14,
                      "z": 48.48723496200244
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "d5c65omh",
                  "_$prefab": "1385bc70-85bd-4db8-b2bb-45be7ceaa6c1",
                  "name": "putong_zhongxing14_7",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 30.369735783664755,
                      "y": -5.684341886080802e-14,
                      "z": 48.60523546962025
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "5eyy3avg",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_30",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 17.107337229008298,
                      "y": -6.679101716144942e-13,
                      "z": 52.164033892852395
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "qvcd68b9",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_31",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 17.107337229008298,
                      "y": -6.679101716144942e-13,
                      "z": 67.42885017703203
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "zz4hz489",
                  "_$prefab": "708d6e64-2ee4-49a8-94a2-3c1bc1da9a21",
                  "name": "putong_dajianzhu04_10",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.0269424841352794,
                      "y": -1.4210854715202004e-14,
                      "z": 61.19091224978599
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "eglh0qeg",
                  "_$prefab": "0aa9a537-4d7c-4183-a5c2-764d39fa06ff",
                  "name": "putong_xiaoxing10_24",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 32.87385962871892,
                      "z": -86.78369073292598
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "2jlwudin",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_39",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 33.32771705059392,
                      "z": -91.2607949199377
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "uvfy2u3x",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_40",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 33.32771705059392,
                      "z": -82.57215432545527
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "xrnb9qwn",
                  "_$prefab": "b874a152-89cd-4701-9521-e7aa643651f4",
                  "name": "putong_zhongxing15_4",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -10.177486299869406,
                      "y": -5.684341886080802e-14,
                      "z": 26.329178399462716
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "65kutrt8",
                  "_$prefab": "1385bc70-85bd-4db8-b2bb-45be7ceaa6c1",
                  "name": "putong_zhongxing14_8",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -10.70040022787736,
                      "y": -5.684341886080802e-14,
                      "z": 30.787874853059492
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "z76tuy1o",
                  "_$prefab": "1385bc70-85bd-4db8-b2bb-45be7ceaa6c1",
                  "name": "putong_zhongxing14_9",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -15.952445710723726,
                      "y": -5.684341886080802e-14,
                      "z": 23.242965752543924
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "sgxjanpj",
                  "_$prefab": "b874a152-89cd-4701-9521-e7aa643651f4",
                  "name": "putong_zhongxing15_5",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -20.210459124502826,
                      "y": -5.684341886080802e-14,
                      "z": 19.2324812675286
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "tp7h9lg8",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_6",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -18.78415403893246,
                      "y": -5.684341886080802e-14,
                      "z": 31.791847989228234
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "779ngpf5",
                  "_$prefab": "931a193d-28a0-45d6-92ad-6d8bdd24109c",
                  "name": "putong_zhongxing16_6",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -14.981072004116955,
                      "y": -5.684341886080802e-14,
                      "z": 19.363983877188797
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "vvvqk7ko",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_7",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -16.469921543370535,
                      "y": -5.684341886080802e-14,
                      "z": 27.82817566352383
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "94eek5tm",
                  "_$prefab": "1385bc70-85bd-4db8-b2bb-45be7ceaa6c1",
                  "name": "putong_zhongxing14_10",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -35.782281492223696,
                      "y": -5.684341886080802e-14,
                      "z": 21.3591907541947
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "2bv8krpg",
                  "_$prefab": "b874a152-89cd-4701-9521-e7aa643651f4",
                  "name": "putong_zhongxing15_6",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -22.78269930700561,
                      "y": -5.684341886080802e-14,
                      "z": 28.490308924501903
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "xd23xb3q",
                  "_$prefab": "1385bc70-85bd-4db8-b2bb-45be7ceaa6c1",
                  "name": "putong_zhongxing14_11",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -30.12783838396695,
                      "y": -5.684341886080802e-14,
                      "z": 25.24368685250605
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "3fmp9x90",
                  "_$prefab": "b874a152-89cd-4701-9521-e7aa643651f4",
                  "name": "putong_zhongxing15_7",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -35.282071048091204,
                      "y": -5.684341886080802e-14,
                      "z": 27.787671048446054
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "62mzrsa2",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_8",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -34.666631890301744,
                      "y": -5.684341886080802e-14,
                      "z": 32.59377911930831
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "titr0hoa",
                  "_$prefab": "931a193d-28a0-45d6-92ad-6d8bdd24109c",
                  "name": "putong_zhongxing16_7",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -27.78670319280832,
                      "y": -5.684341886080802e-14,
                      "z": 18.230613515046144
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "b32iej0g",
                  "_$prefab": "931a193d-28a0-45d6-92ad-6d8bdd24109c",
                  "name": "putong_zhongxing16_8",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -24.348720828492436,
                      "y": -5.684341886080802e-14,
                      "z": 13.140320340085283
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "5zpp3pjs",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_32",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -68.26727111631904,
                      "y": -6.679101716144942e-13,
                      "z": 26.124998133682347
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "d0m6n5ss",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_33",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -68.26727294921875,
                      "y": -6.679101716144942e-13,
                      "z": 61.029670033874815
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "0hv60y4p",
                  "_$prefab": "54ab31d8-1a61-4d6d-9e50-3abec5be0bb9",
                  "name": "putong_dajianzhu06_34",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -68.26727294921875,
                      "y": -6.679101716144942e-13,
                      "z": 43.27969543064154
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "eo7pldc3",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_1",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 67.94427097263048,
                      "z": 1.4339649677276611
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "yafh75mx",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_2",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.81871920089212,
                      "z": 1.4339649677276611
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "dl98ifvr",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_3",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 74.67558031539407,
                      "z": 1.4339649677276611
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "by3qznl8",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_5",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 87.74608473681197,
                      "z": 1.4339649677276611
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "ve9qsv17",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_6",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 61.80113538870344,
                      "z": 6.858223379686006
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "s5emncwl",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_7",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 67.94427427420149,
                      "z": 6.858223379686006
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "j66b38xx",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_8",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.81871732840071,
                      "z": 6.858223379686006
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "j005pkvz",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_9",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 74.67558225759993,
                      "z": 6.858223379686006
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "a7flit6m",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_10",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 87.74608549246321,
                      "z": 6.858223379686006
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "9ucgry8x",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_11",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 61.80113538870344,
                      "z": 13.001359467054616
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "njc37rk6",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_12",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 67.94427427420149,
                      "z": 13.001359467054616
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "pf4q3y03",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_13",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.81871732840071,
                      "z": 13.001359467054616
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "o9nxqjsl",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_14",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 74.67558225759993,
                      "z": 13.001359467054616
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "3u9eru3a",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_15",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 87.74608549246321,
                      "z": 13.001359467054616
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "kcdioqrf",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_16",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 61.8011360168457,
                      "z": 18.844655623407785
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "poedb7zj",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_17",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 67.94427490234375,
                      "z": 18.844655623407785
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "pg0m5kw9",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_18",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.81871795654297,
                      "z": 18.844655623407785
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "88jbfe4g",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_19",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 74.67558288574219,
                      "z": 18.844655623407785
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "0h7m5cgo",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_20",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 87.74608612060547,
                      "z": 18.844655623407785
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "lbj2fml5",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_21",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 9.20279397010582,
                      "z": 31.51054304989619
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "et6xxphp",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_22",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.471485986707387,
                      "z": 31.51054304989619
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "jry1hue3",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_23",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -3.67165289879066,
                      "z": 31.51054304989619
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "zmnqb29z",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_24",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 9.20279397010582,
                      "z": 25.367406548583926
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "3kmaivtp",
                  "_$prefab": "32f7fe42-4310-4391-a12f-7a2452ae38b5",
                  "name": "putong_zhongxing01_25",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.471485986707387,
                      "z": 25.367406548583926
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                }
              ]
            },
            {
              "_$id": "191a9ym2",
              "_$type": "Sprite3D",
              "name": "NpcBorn",
              "_$child": [
                {
                  "_$id": "6bdt7hdi",
                  "_$type": "Sprite3D",
                  "name": "Plane",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -105.72647940771867,
                      "z": 86.74298931757306
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "u893bmve",
                  "_$type": "Sprite3D",
                  "name": "Plane_1",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -105.81889819114384,
                      "z": 74.25051133089886
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "v1acq36b",
                  "_$type": "Sprite3D",
                  "name": "Plane_2",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -95.61608371167297,
                      "z": 60.81399902305934
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "n82281bs",
                  "_$type": "Sprite3D",
                  "name": "Plane_3",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -96.15431402267434,
                      "y": 2.2737367544323206e-13,
                      "z": 47.85551222122686
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "hwpdknzl",
                  "_$type": "Sprite3D",
                  "name": "Plane_4",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -96.2415039731945,
                      "y": -1.0800249583553523e-12,
                      "z": 35.330316730608025
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "q4hc23ds",
                  "_$type": "Sprite3D",
                  "name": "Plane_5",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -96.32837292282491,
                      "y": -9.094947017729282e-13,
                      "z": 22.796834877241103
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "wxpe5rxs",
                  "_$type": "Sprite3D",
                  "name": "Plane_6",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -96.86520447114886,
                      "y": -9.094947017729282e-13,
                      "z": 10.254180272163858
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "atftpl22",
                  "_$type": "Sprite3D",
                  "name": "Plane_7",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -96.5005549296321,
                      "y": -8.526512829121202e-13,
                      "z": -1.853637853064697
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "kwj1hvbv",
                  "_$type": "Sprite3D",
                  "name": "Plane_8",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -83.54850549690195,
                      "y": 2.2737367544323216e-13,
                      "z": 60.28283398029472
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "1i7eecsw",
                  "_$type": "Sprite3D",
                  "name": "Plane_9",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -84.08673639289805,
                      "y": 4.547473508864641e-13,
                      "z": 47.32434551593925
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "1gmvfzda",
                  "_$type": "Sprite3D",
                  "name": "Plane_10",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -84.17392511360117,
                      "y": -8.526512829121202e-13,
                      "z": 34.79915325519706
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "v6p97zyp",
                  "_$type": "Sprite3D",
                  "name": "Plane_11",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -84.26079339973398,
                      "y": -6.821210263296962e-13,
                      "z": 22.26566974994802
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "uss2sbwr",
                  "_$type": "Sprite3D",
                  "name": "Plane_12",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -84.79762811653086,
                      "y": -6.821210263296962e-13,
                      "z": 9.723014758798119
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "e1fhu1dh",
                  "_$type": "Sprite3D",
                  "name": "Plane_13",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -84.43298120490977,
                      "y": -6.252776074688882e-13,
                      "z": -2.3848030102524795
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "lruccy1g",
                  "_$type": "Sprite3D",
                  "name": "Plane_14",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -86.81679066803623,
                      "y": 1.1368683772161623e-13,
                      "z": -14.16911932311612
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "bmuy2kxw",
                  "_$type": "Sprite3D",
                  "name": "Plane_15",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -87.35502156403233,
                      "y": 3.410605131648483e-13,
                      "z": -27.1276077874716
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "brvpqn1g",
                  "_$type": "Sprite3D",
                  "name": "Plane_16",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -87.44221028473545,
                      "y": -9.663381206337363e-13,
                      "z": -39.65280004821379
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "sfzv5jy8",
                  "_$type": "Sprite3D",
                  "name": "Plane_17",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -87.52907857086826,
                      "y": -7.958078640513122e-13,
                      "z": -52.18628355346281
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "4id22qcz",
                  "_$type": "Sprite3D",
                  "name": "Plane_18",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -88.06591328766514,
                      "y": -7.958078640513122e-13,
                      "z": -64.72893854461273
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "l3qdkgx7",
                  "_$type": "Sprite3D",
                  "name": "Plane_19",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -87.70126637604405,
                      "y": -7.389644451905042e-13,
                      "z": -76.8367563136633
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "io40yerx",
                  "_$type": "Sprite3D",
                  "name": "Plane_20",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -74.74921712067295,
                      "y": 3.410605131648483e-13,
                      "z": -14.700285399776277
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "p9xu7pcz",
                  "_$type": "Sprite3D",
                  "name": "Plane_21",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -75.28744801666905,
                      "y": 5.684341886080801e-13,
                      "z": -27.658773864131756
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "0yk7e8hu",
                  "_$type": "Sprite3D",
                  "name": "Plane_22",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -75.37463673737217,
                      "y": -7.389644451905042e-13,
                      "z": -40.18396612487395
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "0ra3dhi2",
                  "_$type": "Sprite3D",
                  "name": "Plane_23",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -75.46150502350498,
                      "y": -5.684341886080801e-13,
                      "z": -52.717449630122964
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "298lko64",
                  "_$type": "Sprite3D",
                  "name": "Plane_24",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -75.99833974030186,
                      "y": -5.684341886080801e-13,
                      "z": -65.26010366759857
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "s8kzq9je",
                  "_$type": "Sprite3D",
                  "name": "Plane_25",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -75.63369282868076,
                      "y": -5.115907697472721e-13,
                      "z": -77.36792155585843
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "aaxvpadi",
                  "_$type": "Sprite3D",
                  "name": "Plane_26",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -61.778358020831284,
                      "y": 1.1368683772161603e-13,
                      "z": -13.560984645424526
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "sh2g5wdq",
                  "_$type": "Sprite3D",
                  "name": "Plane_27",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -62.316588916827385,
                      "y": 3.410605131648481e-13,
                      "z": -26.519473109779995
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "6788k68s",
                  "_$type": "Sprite3D",
                  "name": "Plane_28",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -62.4037776375305,
                      "y": -9.663381206337363e-13,
                      "z": -39.044667277870815
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "py3sbgkg",
                  "_$type": "Sprite3D",
                  "name": "Plane_29",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -62.490645923663315,
                      "y": -7.958078640513122e-13,
                      "z": -51.578148875771205
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "jx56xigj",
                  "_$type": "Sprite3D",
                  "name": "Plane_30",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -63.027480640460205,
                      "y": -7.958078640513122e-13,
                      "z": -64.12080100589817
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "uozmbqsw",
                  "_$type": "Sprite3D",
                  "name": "Plane_31",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -49.87279179135948,
                      "y": -7.389644451905042e-13,
                      "z": -74.2091389760637
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "cl78tadt",
                  "_$type": "Sprite3D",
                  "name": "Plane_32",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -49.71078447346801,
                      "y": 3.410605131648481e-13,
                      "z": -14.092150722084682
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "rlq7tvw3",
                  "_$type": "Sprite3D",
                  "name": "Plane_33",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -50.24901580810547,
                      "y": 5.684341886080801e-13,
                      "z": -27.05063918644015
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "rv9rxjtb",
                  "_$type": "Sprite3D",
                  "name": "Plane_34",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -50.33620409016723,
                      "y": -7.389644451905042e-13,
                      "z": -39.57583335453097
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "yjdf64j8",
                  "_$type": "Sprite3D",
                  "name": "Plane_35",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -50.42307237630004,
                      "y": -5.684341886080801e-13,
                      "z": -52.10931495243136
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "59zbr4w0",
                  "_$type": "Sprite3D",
                  "name": "Plane_36",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -50.959907093096916,
                      "y": -5.684341886080801e-13,
                      "z": -64.6519670825583
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "da8zgfu3",
                  "_$type": "Sprite3D",
                  "name": "Plane_37",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -59.432563288440264,
                      "y": -5.115907697472721e-13,
                      "z": -95.86416714414891
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "156hp0a9",
                  "_$type": "Sprite3D",
                  "name": "Plane_38",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -37.22335677949064,
                      "y": 2.8421709430404007e-13,
                      "z": -17.780353965962483
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "4zxc49xn",
                  "_$type": "Sprite3D",
                  "name": "Plane_39",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -37.76158767548674,
                      "y": 5.115907697472721e-13,
                      "z": -30.73884338399227
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "8ngwq6st",
                  "_$type": "Sprite3D",
                  "name": "Plane_40",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -37.84877639618986,
                      "y": -7.958078640513122e-13,
                      "z": -43.264035644734456
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "5gtens5m",
                  "_$type": "Sprite3D",
                  "name": "Plane_41",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -37.935644682322675,
                      "y": -6.252776074688882e-13,
                      "z": -55.79751724263485
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "yhb9mg44",
                  "_$type": "Sprite3D",
                  "name": "Plane_42",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -38.47247939911955,
                      "y": -6.252776074688882e-13,
                      "z": -68.34017318745903
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "qgxe89rj",
                  "_$type": "Sprite3D",
                  "name": "Plane_43",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -46.94513563820311,
                      "y": -5.684341886080801e-13,
                      "z": -95.1768321507047
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "244twe1e",
                  "_$type": "Sprite3D",
                  "name": "Plane_44",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -25.155783232127362,
                      "y": 5.115907697472721e-13,
                      "z": -18.31152004262264
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "hqzaorht",
                  "_$type": "Sprite3D",
                  "name": "Plane_45",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -25.694014128123456,
                      "y": 7.389644451905042e-13,
                      "z": -31.270009460652425
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "5v87etn8",
                  "_$type": "Sprite3D",
                  "name": "Plane_46",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -25.78120284882658,
                      "y": -5.684341886080801e-13,
                      "z": -43.79520172139461
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "dabww18y",
                  "_$type": "Sprite3D",
                  "name": "Plane_47",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -25.868071134959393,
                      "y": -3.979039320256561e-13,
                      "z": -56.328683319295
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "sc205qw5",
                  "_$type": "Sprite3D",
                  "name": "Plane_48",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -26.40490585175627,
                      "y": -3.979039320256561e-13,
                      "z": -68.87133926411919
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "7b9l85f4",
                  "_$type": "Sprite3D",
                  "name": "Plane_49",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -34.87756209083983,
                      "y": -3.410605131648481e-13,
                      "z": -95.70799822736485
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ad1jz9vx",
                  "_$type": "Sprite3D",
                  "name": "Plane_50",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 31.999776212401486,
                      "y": -22.128248693956497,
                      "z": -17.78035354614257
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "8mz196oa",
                  "_$type": "Sprite3D",
                  "name": "Plane_51",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 31.46154531640539,
                      "y": -22.12824869395627,
                      "z": -30.738843917846673
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "70zzfcxr",
                  "_$type": "Sprite3D",
                  "name": "Plane_52",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 24.97362594262721,
                      "y": -22.128248693957577,
                      "z": -48.9160542434008
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "gwqt7vv6",
                  "_$type": "Sprite3D",
                  "name": "Plane_53",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 31.287488309569454,
                      "y": -22.128248693957406,
                      "z": -55.79751586914062
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "86i01pbz",
                  "_$type": "Sprite3D",
                  "name": "Plane_54",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 30.75065359277258,
                      "y": -22.128248693957406,
                      "z": -68.34017181396484
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "djgbk4uy",
                  "_$type": "Sprite3D",
                  "name": "Plane_55",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 33.73260171771347,
                      "y": -22.128248693957435,
                      "z": -80.47882619640825
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "sbwtdwol",
                  "_$type": "Sprite3D",
                  "name": "Plane_56",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 44.06735166711341,
                      "y": -22.12824869395627,
                      "z": -18.311519622802727
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "qcr3cg2l",
                  "_$type": "Sprite3D",
                  "name": "Plane_57",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 43.52912077111731,
                      "y": -22.128248693956042,
                      "z": -31.27000999450683
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ya8qmr3c",
                  "_$type": "Sprite3D",
                  "name": "Plane_58",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 40.614087603873884,
                      "y": -22.12824869395735,
                      "z": -43.46925850103129
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "asia6zae",
                  "_$type": "Sprite3D",
                  "name": "Plane_59",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 43.355063764281375,
                      "y": -22.12824869395718,
                      "z": -56.328681945800774
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "klf3zz44",
                  "_$type": "Sprite3D",
                  "name": "Plane_60",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 42.8182290474845,
                      "y": -22.12824869395718,
                      "z": -68.871337890625
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "hbjxyfju",
                  "_$type": "Sprite3D",
                  "name": "Plane_61",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 45.80017717242539,
                      "y": -22.128248693957207,
                      "z": -81.0099922730684
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "kk7pm1x2",
                  "_$type": "Sprite3D",
                  "name": "Plane_62",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.699883451126077,
                      "y": -22.12824821472168,
                      "z": -57.76579366114572
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "kqchhzkv",
                  "_$type": "Sprite3D",
                  "name": "Plane_63",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.163048734329202,
                      "y": -22.12824821472168,
                      "z": -70.30844960596994
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "a7g3oyy8",
                  "_$type": "Sprite3D",
                  "name": "Plane_64",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.5276956459502955,
                      "y": -22.12824821472168,
                      "z": -82.41626820948557
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "lyfpf063",
                  "_$type": "Sprite3D",
                  "name": "Plane_65",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 17.767458905837994,
                      "y": -22.12824821472168,
                      "z": -58.29695973780588
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "l3mzi8np",
                  "_$type": "Sprite3D",
                  "name": "Plane_66",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 17.23062418904112,
                      "y": -22.12824821472168,
                      "z": -70.8396156826301
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "dottwbax",
                  "_$type": "Sprite3D",
                  "name": "Plane_67",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 17.595271100662213,
                      "y": -22.12824821472168,
                      "z": -82.94743428614572
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "6mapohu3",
                  "_$type": "Sprite3D",
                  "name": "Plane_68",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -10.536779233893002,
                      "y": -3.979039320256561e-13,
                      "z": -56.32868179471161
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "arh30n8w",
                  "_$type": "Sprite3D",
                  "name": "Plane_69",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -11.073613950689877,
                      "y": -3.979039320256561e-13,
                      "z": -68.87133773953583
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "sf2yh3sd",
                  "_$type": "Sprite3D",
                  "name": "Plane_70",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -19.546270189773438,
                      "y": -3.410605131648481e-13,
                      "z": -95.7079967027815
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "9i9mi9dx",
                  "_$type": "Sprite3D",
                  "name": "Plane_71",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -86.02238783899244,
                      "y": 5.115907697472721e-13,
                      "z": -96.87390677540718
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "lh3uazwc",
                  "_$type": "Sprite3D",
                  "name": "Plane_72",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -73.53496108117994,
                      "y": 4.547473508864641e-13,
                      "z": -96.18657462208687
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "3d007nkb",
                  "_$type": "Sprite3D",
                  "name": "Plane_73",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -46.35026385900651,
                      "y": -5.684341886080801e-13,
                      "z": -75.67503163496653
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "7z7797o1",
                  "_$type": "Sprite3D",
                  "name": "Plane_74",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -102.9489217160684,
                      "y": -7.958078640513122e-13,
                      "z": -55.74927536775685
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "hs30bf11",
                  "_$type": "Sprite3D",
                  "name": "Plane_75",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -103.48575643286527,
                      "y": -7.958078640513122e-13,
                      "z": -68.2919274978838
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "qmbx0y8d",
                  "_$type": "Sprite3D",
                  "name": "Plane_76",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 21.44705956443265,
                      "y": -22.12824821472165,
                      "z": -13.978940522313824
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "67plfjoh",
                  "_$type": "Sprite3D",
                  "name": "Plane_78",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -71.22319654706456,
                      "y": -1.5347723092418162e-12,
                      "z": 49.63881537462585
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "efx42bjj",
                  "_$type": "Sprite3D",
                  "name": "Plane_79",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -71.31038526776769,
                      "y": -2.8421709430404007e-12,
                      "z": 37.11362311388366
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "z9l3zfoq",
                  "_$type": "Sprite3D",
                  "name": "Plane_81",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -71.93408827069737,
                      "y": -2.6716406864579767e-12,
                      "z": 12.03748461748473
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "tuj5kzta",
                  "_$type": "Sprite3D",
                  "name": "Plane_82",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -71.56944135907628,
                      "y": -2.6147972675971687e-12,
                      "z": -0.07033315156586895
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "o0nasgth",
                  "_$type": "Sprite3D",
                  "name": "Plane_83",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -88.81935311243816,
                      "y": -1.5347723092418164e-12,
                      "z": 28.782343714469057
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "p6h294hp",
                  "_$type": "Sprite3D",
                  "name": "Plane_84",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -59.155622999701315,
                      "y": -1.3073986337985841e-12,
                      "z": 49.10764929796569
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "0v2m3znv",
                  "_$type": "Sprite3D",
                  "name": "Plane_85",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -59.24281172040444,
                      "y": -2.6147972675971687e-12,
                      "z": 36.582457037223506
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "6p777o02",
                  "_$type": "Sprite3D",
                  "name": "Plane_87",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -59.86651472333413,
                      "y": -2.4442670110147446e-12,
                      "z": 11.50631949449889
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "zx7o3vz0",
                  "_$type": "Sprite3D",
                  "name": "Plane_88",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -59.50186781171303,
                      "y": -2.3874235921539366e-12,
                      "z": -0.6014983937609983
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "eg707njj",
                  "_$type": "Sprite3D",
                  "name": "Plane_92",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -44.477747738275,
                      "y": -2.7284841053187847e-12,
                      "z": 24.89729176246803
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "prh8vzgs",
                  "_$type": "Sprite3D",
                  "name": "Plane_93",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -45.014582455071874,
                      "y": -2.7284841053187847e-12,
                      "z": 12.354636771318127
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "b0inaddu",
                  "_$type": "Sprite3D",
                  "name": "Plane_94",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -44.64993554345078,
                      "y": -2.6716406864579767e-12,
                      "z": 0.24681944930236455
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "qsc8fnz5",
                  "_$type": "Sprite3D",
                  "name": "Plane_96",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -32.23611718407577,
                      "y": -1.3642420526593924e-12,
                      "z": 49.42480335914773
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "oii8da1j",
                  "_$type": "Sprite3D",
                  "name": "Plane_97",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -32.3233059047789,
                      "y": -2.6716406864579767e-12,
                      "z": 36.89961109840554
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "sjn0cvuh",
                  "_$type": "Sprite3D",
                  "name": "Plane_98",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -32.41017419091171,
                      "y": -2.5011104298755527e-12,
                      "z": 24.366125685807873
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ckion9t2",
                  "_$type": "Sprite3D",
                  "name": "Plane_99",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -32.947008907708586,
                      "y": -2.5011104298755527e-12,
                      "z": 11.823471648332287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "vjiu1oty",
                  "_$type": "Sprite3D",
                  "name": "Plane_100",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -32.58236199608749,
                      "y": -2.4442670110147446e-12,
                      "z": -0.28434576309044246
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "lgw4cm78",
                  "_$type": "Sprite3D",
                  "name": "Plane_102",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -20.302317227996117,
                      "y": -1.5347723092418164e-12,
                      "z": 51.70727800162817
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "p6e83ole",
                  "_$type": "Sprite3D",
                  "name": "Plane_103",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -20.38950594869924,
                      "y": -2.8421709430404007e-12,
                      "z": 39.18208574088598
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "j83v9mak",
                  "_$type": "Sprite3D",
                  "name": "Plane_104",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -20.476374234832054,
                      "y": -2.6716406864579767e-12,
                      "z": 26.64859842093969
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ih1fsnjo",
                  "_$type": "Sprite3D",
                  "name": "Plane_105",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -21.013208951628922,
                      "y": -2.6716406864579767e-12,
                      "z": 14.105944383464102
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "75nwcl0m",
                  "_$type": "Sprite3D",
                  "name": "Plane_106",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -20.648562040007835,
                      "y": -2.6147972675971687e-12,
                      "z": 1.9981266889193101
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "t1gqfveu",
                  "_$type": "Sprite3D",
                  "name": "Plane_109",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -8.321932401335959,
                      "y": -2.6147972675971687e-12,
                      "z": 38.650919664225825
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "poscwe21",
                  "_$type": "Sprite3D",
                  "name": "Plane_110",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -8.408800687468771,
                      "y": -2.4442670110147446e-12,
                      "z": 26.117432344279532
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "jp3qlg9o",
                  "_$type": "Sprite3D",
                  "name": "Plane_111",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -8.945635404265646,
                      "y": -2.4442670110147446e-12,
                      "z": 13.574779260478262
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "l0p0hpyi",
                  "_$type": "Sprite3D",
                  "name": "Plane_112",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -8.580988492644552,
                      "y": -2.3874235921539366e-12,
                      "z": 1.466961461625342
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "uqjz15f3",
                  "_$type": "Sprite3D",
                  "name": "Plane_114",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 4.602987936050273,
                      "y": -1.5347723092418164e-12,
                      "z": 51.4129459940589
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "72vqstal",
                  "_$type": "Sprite3D",
                  "name": "Plane_115",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 4.515799215347148,
                      "y": -2.8421709430404007e-12,
                      "z": 38.887753733316714
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "y1yfujeu",
                  "_$type": "Sprite3D",
                  "name": "Plane_116",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 4.428930929214335,
                      "y": -2.6716406864579767e-12,
                      "z": 26.354264506021785
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "zsq7t1b5",
                  "_$type": "Sprite3D",
                  "name": "Plane_117",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 3.89209621241746,
                      "y": -2.6716406864579767e-12,
                      "z": 13.811611422220516
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "sale7aur",
                  "_$type": "Sprite3D",
                  "name": "Plane_118",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 4.256743124038554,
                      "y": -2.6147972675971687e-12,
                      "z": 1.7037935339606278
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "wbizpzzo",
                  "_$type": "Sprite3D",
                  "name": "Plane_120",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 16.670560529739234,
                      "y": -1.3073986337985843e-12,
                      "z": 50.881779917398745
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "uspsy9eb",
                  "_$type": "Sprite3D",
                  "name": "Plane_121",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 16.58337180903611,
                      "y": -2.6147972675971687e-12,
                      "z": 38.35658765665656
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "8dwtdk53",
                  "_$type": "Sprite3D",
                  "name": "Plane_122",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 16.496503522903296,
                      "y": -2.4442670110147446e-12,
                      "z": 25.82309842936163
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "92v7y870",
                  "_$type": "Sprite3D",
                  "name": "Plane_123",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 15.959668806106421,
                      "y": -2.4442670110147446e-12,
                      "z": 13.280446299234676
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "3q0mtpjt",
                  "_$type": "Sprite3D",
                  "name": "Plane_124",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 16.324315717727515,
                      "y": -2.3874235921539366e-12,
                      "z": 1.1726282917654984
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "k0lvp4rh",
                  "_$type": "Sprite3D",
                  "name": "Plane_126",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 29.512720556425194,
                      "y": -1.3642420526593924e-12,
                      "z": 50.531689053783424
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "x06gm0cq",
                  "_$type": "Sprite3D",
                  "name": "Plane_128",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 29.338663549589256,
                      "y": -2.5011104298755527e-12,
                      "z": 25.473009473094958
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "3soroomg",
                  "_$type": "Sprite3D",
                  "name": "Plane_129",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 28.80182907121096,
                      "y": -2.5011104298755527e-12,
                      "z": 12.930355435619372
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "n509owdw",
                  "_$type": "Sprite3D",
                  "name": "Plane_130",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 29.166475744413475,
                      "y": -2.4442670110147446e-12,
                      "z": 0.8225377857780636
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "4bgyld31",
                  "_$type": "Sprite3D",
                  "name": "Plane_132",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.58029362695132,
                      "y": -1.1368683772161603e-12,
                      "z": 50.00052297712327
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "vgho4lz1",
                  "_$type": "Sprite3D",
                  "name": "Plane_133",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.49310490624819,
                      "y": -2.4442670110147446e-12,
                      "z": 37.47533071638108
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "d0f82cki",
                  "_$type": "Sprite3D",
                  "name": "Plane_134",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.40623662011538,
                      "y": -2.2737367544323206e-12,
                      "z": 24.941843396434802
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "jpi3awfu",
                  "_$type": "Sprite3D",
                  "name": "Plane_135",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 40.869401903318504,
                      "y": -2.2737367544323206e-12,
                      "z": 12.399190312633532
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "3w72da9f",
                  "_$type": "Sprite3D",
                  "name": "Plane_136",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.2340488149396,
                      "y": -2.2168933355715126e-12,
                      "z": 0.2913725435829342
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "t4sq9p2n",
                  "_$type": "Sprite3D",
                  "name": "Plane_137",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 57.07681449497208,
                      "y": -22.128248214721566,
                      "z": -17.07254044490739
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "azbckvbw",
                  "_$type": "Sprite3D",
                  "name": "Plane_138",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 56.53858359897599,
                      "y": -22.128248214721566,
                      "z": -30.03103081661149
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "6ftp8xl8",
                  "_$type": "Sprite3D",
                  "name": "Plane_139",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 56.36452659214005,
                      "y": -22.128248214721566,
                      "z": -55.08970276790543
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "7vkzsj9y",
                  "_$type": "Sprite3D",
                  "name": "Plane_140",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 55.82769187534318,
                      "y": -22.128248214721566,
                      "z": -67.63235871272964
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "j9xyux45",
                  "_$type": "Sprite3D",
                  "name": "Plane_141",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 58.80964000028407,
                      "y": -22.12824821472165,
                      "z": -79.77101309517305
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "l5ho04u7",
                  "_$type": "Sprite3D",
                  "name": "Plane_142",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 69.14438994968397,
                      "y": -22.128248214721566,
                      "z": -17.603706521567545
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "pcqylfzg",
                  "_$type": "Sprite3D",
                  "name": "Plane_143",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 68.60615905368788,
                      "y": -22.128248214721566,
                      "z": -30.562196893271647
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "zvqv7emf",
                  "_$type": "Sprite3D",
                  "name": "Plane_144",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 66.97470590004107,
                      "y": -22.128248214721594,
                      "z": -42.77656679785016
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "f42rvod1",
                  "_$type": "Sprite3D",
                  "name": "Plane_145",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 68.43210204685197,
                      "y": -22.128248214721566,
                      "z": -55.620868844565585
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "d875987q",
                  "_$type": "Sprite3D",
                  "name": "Plane_146",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 67.89526733005509,
                      "y": -22.128248214721566,
                      "z": -68.1635247893898
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "to7ox2zi",
                  "_$type": "Sprite3D",
                  "name": "Plane_147",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 70.87721545499596,
                      "y": -22.12824821472165,
                      "z": -80.3021791718332
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "cvac1w70",
                  "_$type": "Sprite3D",
                  "name": "Plane_149",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 54.58975776279435,
                      "y": -1.2505552149377763e-12,
                      "z": 51.23950179142074
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "iy9h6qdb",
                  "_$type": "Sprite3D",
                  "name": "Plane_150",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 54.502569042091224,
                      "y": -2.5579538487363607e-12,
                      "z": 38.714309530678555
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "rg1ns0s6",
                  "_$type": "Sprite3D",
                  "name": "Plane_151",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 54.41570075595841,
                      "y": -2.3874235921539366e-12,
                      "z": 26.18082221073226
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "skw8qjw0",
                  "_$type": "Sprite3D",
                  "name": "Plane_152",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 53.87886603916154,
                      "y": -2.3874235921539366e-12,
                      "z": 13.638168173256677
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ace9e0gd",
                  "_$type": "Sprite3D",
                  "name": "Plane_153",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 54.24351295078263,
                      "y": -2.3305801732931286e-12,
                      "z": 1.5303508810432334
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "hxnv6a6m",
                  "_$type": "Sprite3D",
                  "name": "Plane_155",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 66.657329402809,
                      "y": -1.0231815394945443e-12,
                      "z": 50.70833571476059
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "dj7t2v9v",
                  "_$type": "Sprite3D",
                  "name": "Plane_156",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 66.57014068210587,
                      "y": -2.3305801732931286e-12,
                      "z": 38.1831434540184
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "3465qdzw",
                  "_$type": "Sprite3D",
                  "name": "Plane_157",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 66.48327239597306,
                      "y": -2.1600499167107046e-12,
                      "z": 25.649656134072103
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "nac037tt",
                  "_$type": "Sprite3D",
                  "name": "Plane_158",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 65.94643767917619,
                      "y": -2.1600499167107046e-12,
                      "z": 13.107003050270837
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "fdh5s0pq",
                  "_$type": "Sprite3D",
                  "name": "Plane_159",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 66.31108459079728,
                      "y": -2.1032064978498966e-12,
                      "z": 0.999185638848104
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "iyw7h76y",
                  "_$type": "Sprite3D",
                  "name": "Plane_160",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 52.077243476864346,
                      "y": -22.128248214722163,
                      "z": -43.71610585515327
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "wboar2yg",
                  "_$type": "Sprite3D",
                  "name": "Plane_161",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 35.8175239173103,
                      "y": -22.128248214720713,
                      "z": -92.12092160200253
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "16bghn2a",
                  "_$type": "Sprite3D",
                  "name": "Plane_162",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 38.273273400278484,
                      "y": -22.1282482147206,
                      "z": -102.42772638444656
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "06vydfqj",
                  "_$type": "Sprite3D",
                  "name": "Plane_163",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 47.88509937202221,
                      "y": -22.128248214720713,
                      "z": -92.65208767866268
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "kjwt7bvx",
                  "_$type": "Sprite3D",
                  "name": "Plane_164",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 48.20956814455274,
                      "y": -22.128248214720713,
                      "z": -102.2747694023757
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "egyrnqnc",
                  "_$type": "Sprite3D",
                  "name": "Plane_165",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 59.155017778871866,
                      "y": -22.128248214720685,
                      "z": -91.11420875081345
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "jci5o91o",
                  "_$type": "Sprite3D",
                  "name": "Plane_166",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 61.259206732862054,
                      "y": -22.128248214720713,
                      "z": -103.52093075727596
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "mp83il9d",
                  "_$type": "Sprite3D",
                  "name": "Plane_167",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 69.97411531623435,
                      "y": -22.1282482147206,
                      "z": -91.61092955202595
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "rv9k6ymm",
                  "_$type": "Sprite3D",
                  "name": "Plane_168",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 71.8749552435951,
                      "y": -22.1282482147206,
                      "z": -100.5235378489118
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "d9dpe8il",
                  "_$type": "Sprite3D",
                  "name": "Plane_169",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 82.75785824922484,
                      "y": -22.12824821472168,
                      "z": -80.93734948134603
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "v0iauzvl",
                  "_$type": "Sprite3D",
                  "name": "Plane_170",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 81.36759774023646,
                      "y": -22.128248214720685,
                      "z": -90.99993578599306
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "h6sqenj8",
                  "_$type": "Sprite3D",
                  "name": "Plane_171",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 82.44680876264925,
                      "y": -22.128248214721026,
                      "z": -102.11403023228341
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "vl0d4w47",
                  "_$type": "Sprite3D",
                  "name": "Plane_172",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 81.94729649984751,
                      "y": -22.12824821472168,
                      "z": -17.773943964359187
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "9w3abv5l",
                  "_$type": "Sprite3D",
                  "name": "Plane_173",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 81.40906560385142,
                      "y": -22.12824821472168,
                      "z": -30.73243433606329
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "20s72oio",
                  "_$type": "Sprite3D",
                  "name": "Plane_174",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 81.23500859701548,
                      "y": -22.12824821472168,
                      "z": -55.791106287357216
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "97xrloex",
                  "_$type": "Sprite3D",
                  "name": "Plane_175",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.6981738802186,
                      "y": -22.12824821472168,
                      "z": -68.33376604687872
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "m5rrr87i",
                  "_$type": "Sprite3D",
                  "name": "Plane_176",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 94.01487004721079,
                      "y": -22.12824821472168,
                      "z": -18.305110041019343
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "uwrqbw2f",
                  "_$type": "Sprite3D",
                  "name": "Plane_177",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 93.4766391512147,
                      "y": -22.12824821472168,
                      "z": -31.26360041272345
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "bujpyhs6",
                  "_$type": "Sprite3D",
                  "name": "Plane_178",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 94.81196056368168,
                      "y": -22.12824821472168,
                      "z": -43.51292226226244
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "t7cqureu",
                  "_$type": "Sprite3D",
                  "name": "Plane_179",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 93.30258214437876,
                      "y": -22.12824821472168,
                      "z": -56.32227236401737
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "v26e8w94",
                  "_$type": "Sprite3D",
                  "name": "Plane_180",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 92.76574742758189,
                      "y": -22.12824821472168,
                      "z": -68.86493212353888
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "721oz2sg",
                  "_$type": "Sprite3D",
                  "name": "Plane_184",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 79.28618276083384,
                      "y": -2.3874235921539366e-12,
                      "z": 25.47941869128046
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "5s26lw19",
                  "_$type": "Sprite3D",
                  "name": "Plane_185",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 78.74934804403696,
                      "y": -2.3874235921539366e-12,
                      "z": 12.936764653804875
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "dhjp1sy3",
                  "_$type": "Sprite3D",
                  "name": "Plane_186",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 79.11399495565806,
                      "y": -2.3305801732931286e-12,
                      "z": 0.8289472423821489
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "e8b6csis",
                  "_$type": "Sprite3D",
                  "name": "Plane_188",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 91.52780950033579,
                      "y": -1.0231815394945443e-12,
                      "z": 50.0069321953088
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "qwomcf2t",
                  "_$type": "Sprite3D",
                  "name": "Plane_189",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 91.44062077963267,
                      "y": -2.3305801732931286e-12,
                      "z": 37.48173993456661
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "xbb12ulz",
                  "_$type": "Sprite3D",
                  "name": "Plane_190",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 91.35375249349985,
                      "y": -2.1600499167107046e-12,
                      "z": 24.948252614620305
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "8n2abw2r",
                  "_$type": "Sprite3D",
                  "name": "Plane_191",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 90.81691777670298,
                      "y": -2.1600499167107046e-12,
                      "z": 12.405599530819035
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "m8ng41iq",
                  "_$type": "Sprite3D",
                  "name": "Plane_192",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 91.18156468832407,
                      "y": -2.1032064978498966e-12,
                      "z": 0.2977819405823747
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "h2dbw89o",
                  "_$type": "Sprite3D",
                  "name": "Plane_193",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 82.47034871542368,
                      "y": -22.12824821472168,
                      "z": -43.12889773022831
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "d1yccpx7",
                  "_$type": "Sprite3D",
                  "name": "Plane_194",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 108.6954313584738,
                      "y": -22.12824821472168,
                      "z": -18.47807021213124
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "4m8deey6",
                  "_$type": "Sprite3D",
                  "name": "Plane_195",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 108.1572004624777,
                      "y": -22.12824821472168,
                      "z": -31.43656058383534
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "vc8qxjgu",
                  "_$type": "Sprite3D",
                  "name": "Plane_196",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 109.49251998152067,
                      "y": -22.12824821472168,
                      "z": -43.68587966037345
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "up1yrswc",
                  "_$type": "Sprite3D",
                  "name": "Plane_197",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 107.98314345564177,
                      "y": -22.12824821472168,
                      "z": -56.49523253512931
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "n94amew5",
                  "_$type": "Sprite3D",
                  "name": "Plane_198",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 107.44630873884489,
                      "y": -22.12824821472168,
                      "z": -69.03788847995348
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "2d6p3xb7",
                  "_$type": "Sprite3D",
                  "name": "Plane_200",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 106.2083708115988,
                      "y": -1.0231815394945443e-12,
                      "z": 49.83397202419686
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "44t34h9p",
                  "_$type": "Sprite3D",
                  "name": "Plane_201",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 106.12118209089567,
                      "y": -2.3305801732931286e-12,
                      "z": 37.30877976345467
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "jdvgc6zb",
                  "_$type": "Sprite3D",
                  "name": "Plane_202",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 106.03431380476286,
                      "y": -2.1600499167107046e-12,
                      "z": 24.77529244350841
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "u9s3jl9y",
                  "_$type": "Sprite3D",
                  "name": "Plane_203",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 105.49747908796598,
                      "y": -2.1600499167107046e-12,
                      "z": 12.232640313381447
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "xov0rolf",
                  "_$type": "Sprite3D",
                  "name": "Plane_204",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 105.86212599958708,
                      "y": -2.1032064978498966e-12,
                      "z": 0.1248226635401406
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "dyah8vpo",
                  "_$type": "Sprite3D",
                  "name": "Plane_205",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -83.54850549690195,
                      "y": 2.2737367544323216e-13,
                      "z": 60.28283398029472
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "6y43ylvt",
                  "_$type": "Sprite3D",
                  "name": "Plane_206",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -93.46081869892721,
                      "y": 6.821210263296962e-13,
                      "z": 74.03352442943672
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "nebv7txp",
                  "_$type": "Sprite3D",
                  "name": "Plane_210",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -48.150096907179936,
                      "y": -1.5347723092418164e-12,
                      "z": 83.65922210441968
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "q3z5g80t",
                  "_$type": "Sprite3D",
                  "name": "Plane_214",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -44.15619235824543,
                      "y": -1.5916157281026244e-12,
                      "z": 56.60311463657826
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ksv8d3kn",
                  "_$type": "Sprite3D",
                  "name": "Plane_215",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -44.39087945214219,
                      "y": -2.8990143619012088e-12,
                      "z": 37.4307771750657
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "91z0313s",
                  "_$type": "Sprite3D",
                  "name": "Plane_217",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -32.23611718407577,
                      "y": -1.3642420526593924e-12,
                      "z": 49.42480335914773
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "xod8hr2x",
                  "_$type": "Sprite3D",
                  "name": "Plane_233",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 29.42553183572207,
                      "y": -2.6716406864579767e-12,
                      "z": 38.00649679304124
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "t9f7tpwr",
                  "_$type": "Sprite3D",
                  "name": "Plane_236",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.49310490624819,
                      "y": -2.4442670110147446e-12,
                      "z": 37.47533071638108
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "jyx2yn4z",
                  "_$type": "Sprite3D",
                  "name": "Plane_241",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 66.657329402809,
                      "y": -1.0231815394945443e-12,
                      "z": 50.70833571476059
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ork8m4im",
                  "_$type": "Sprite3D",
                  "name": "Plane_242",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 66.57014068210587,
                      "y": -2.3305801732931286e-12,
                      "z": 38.1831434540184
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "v8v8s8fg",
                  "_$type": "Sprite3D",
                  "name": "Plane_247",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 91.52780950033579,
                      "y": -1.0231815394945443e-12,
                      "z": 50.0069321953088
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "0oph5zz6",
                  "_$type": "Sprite3D",
                  "name": "Plane_248",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 91.44062077963267,
                      "y": -2.3305801732931286e-12,
                      "z": 37.48173993456661
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "s5xykasj",
                  "_$type": "Sprite3D",
                  "name": "Plane_250",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 106.2083708115988,
                      "y": -1.0231815394945443e-12,
                      "z": 49.83397202419686
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "iiyp7g27",
                  "_$type": "Sprite3D",
                  "name": "Plane_251",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 106.12118209089567,
                      "y": -2.3305801732931286e-12,
                      "z": 37.30877976345467
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "hikxr4hi",
                  "_$type": "Sprite3D",
                  "name": "Plane_252",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -84.17392511360117,
                      "y": -8.526512829121202e-13,
                      "z": 34.79915325519706
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "cfg8ifvx",
                  "_$type": "Sprite3D",
                  "name": "Plane_253",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -5.954420269669502,
                      "y": -1.3926637620897964e-12,
                      "z": 50.921885130270105
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "3mkiyce6",
                  "_$type": "Sprite3D",
                  "name": "Plane_254",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -32.656644341952926,
                      "y": -1.1368683772161603e-12,
                      "z": 68.3471081763472
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "21yd3kc2",
                  "_$type": "Sprite3D",
                  "name": "Plane_255",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -32.656644341952926,
                      "y": -1.1368683772161603e-12,
                      "z": 68.3471081763472
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "oijifr73",
                  "_$type": "Sprite3D",
                  "name": "Plane_256",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -20.722842690951957,
                      "y": -1.3073986337985843e-12,
                      "z": 70.62958269416947
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "3cy82sl5",
                  "_$type": "Sprite3D",
                  "name": "Plane_257",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 4.182461740963328,
                      "y": -1.3073986337985843e-12,
                      "z": 70.33524828254838
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "jnb2en6g",
                  "_$type": "Sprite3D",
                  "name": "Plane_258",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 16.25003481148945,
                      "y": -1.0800249583553523e-12,
                      "z": 69.80408220588822
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "8kuiy5h0",
                  "_$type": "Sprite3D",
                  "name": "Plane_259",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 29.092194082729684,
                      "y": -1.1368683772161603e-12,
                      "z": 69.45399217903275
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "hcz3albi",
                  "_$type": "Sprite3D",
                  "name": "Plane_260",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.15976572274434,
                      "y": -9.094947017729282e-13,
                      "z": 68.9228261023726
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ws84nt2j",
                  "_$type": "Sprite3D",
                  "name": "Plane_261",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 54.169229986660355,
                      "y": -1.0231815394945443e-12,
                      "z": 70.1618054419722
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "yr3xagfr",
                  "_$type": "Sprite3D",
                  "name": "Plane_263",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -6.374946115024221,
                      "y": -1.1652900866465643e-12,
                      "z": 69.844189932939
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "povyrg1d",
                  "_$type": "Sprite3D",
                  "name": "Plane_264",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -33.15809742970874,
                      "y": -1.0800249583553523e-12,
                      "z": 80.00923058913591
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "wp32b957",
                  "_$type": "Sprite3D",
                  "name": "Plane_265",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -33.15809742970874,
                      "y": -1.0800249583553523e-12,
                      "z": 80.00923058913591
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "9jzy2wbz",
                  "_$type": "Sprite3D",
                  "name": "Plane_266",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -21.224297686056403,
                      "y": -1.2505552149377763e-12,
                      "z": 82.29170892165544
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "d2e0evwt",
                  "_$type": "Sprite3D",
                  "name": "Plane_267",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 3.681007222696044,
                      "y": -1.2505552149377763e-12,
                      "z": 81.99737451003435
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "x0vpn0xc",
                  "_$type": "Sprite3D",
                  "name": "Plane_268",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 15.748579816385007,
                      "y": -1.0231815394945443e-12,
                      "z": 81.46620843337419
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ae1gm3x7",
                  "_$type": "Sprite3D",
                  "name": "Plane_269",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 28.590739087625238,
                      "y": -1.0800249583553523e-12,
                      "z": 81.11611840651872
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "d95s7ljh",
                  "_$type": "Sprite3D",
                  "name": "Plane_270",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 40.658312634988526,
                      "y": -8.526512829121202e-13,
                      "z": 80.58495232985857
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "i5781o85",
                  "_$type": "Sprite3D",
                  "name": "Plane_271",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 53.45403217240806,
                      "y": -9.663381206337363e-13,
                      "z": 86.50817639852599
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "u7os859o",
                  "_$type": "Sprite3D",
                  "name": "Plane_273",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -6.876400633291505,
                      "y": -1.1084466677857563e-12,
                      "z": 81.50631616042497
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "1bux8lyw",
                  "_$type": "Sprite3D",
                  "name": "Plane_276",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -25.94502702598817,
                      "y": -1.1937117960769683e-12,
                      "z": 96.36978047039331
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "u7w7sp93",
                  "_$type": "Sprite3D",
                  "name": "Plane_277",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 4.5321674245447205,
                      "y": -1.1937117960769683e-12,
                      "z": 96.31628626990864
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "xpvc3oin",
                  "_$type": "Sprite3D",
                  "name": "Plane_278",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 16.59974025665226,
                      "y": -9.663381206337363e-13,
                      "z": 95.78512019324849
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "auijn192",
                  "_$type": "Sprite3D",
                  "name": "Plane_279",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 29.44189857421818,
                      "y": -1.0231815394945443e-12,
                      "z": 95.43503016639302
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "vunf10eg",
                  "_$type": "Sprite3D",
                  "name": "Plane_280",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.50947402893009,
                      "y": -7.958078640513122e-13,
                      "z": 94.90386408973286
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "5061a8oz",
                  "_$type": "Sprite3D",
                  "name": "Plane_283",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -10.13170859637518,
                      "y": -8.810729923425242e-13,
                      "z": 95.64773080842683
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "yd1jire9",
                  "_$type": "Sprite3D",
                  "name": "Plane_284",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 105.98461999975457,
                      "y": -1.0231815394945443e-12,
                      "z": 63.51898727441633
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "7w53wq12",
                  "_$type": "Sprite3D",
                  "name": "Plane_285",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 91.30405511938348,
                      "y": -1.0231815394945443e-12,
                      "z": 63.69194564843977
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "btdd0ukz",
                  "_$type": "Sprite3D",
                  "name": "Plane_286",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 91.30405511938348,
                      "y": -1.0231815394945443e-12,
                      "z": 63.69194564843977
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "4jvx3zkd",
                  "_$type": "Sprite3D",
                  "name": "Plane_287",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 105.98461999975457,
                      "y": -1.0231815394945443e-12,
                      "z": 63.51898727441633
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "rvnbsr4o",
                  "_$type": "Sprite3D",
                  "name": "Plane_288",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 105.73713215496375,
                      "y": -1.0231815394945443e-12,
                      "z": 77.61064962669424
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "oqz0bqft",
                  "_$type": "Sprite3D",
                  "name": "Plane_289",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 91.05656727459265,
                      "y": -1.0231815394945443e-12,
                      "z": 77.78360800071768
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "kvgmwboi",
                  "_$type": "Sprite3D",
                  "name": "Plane_290",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 91.05656727459265,
                      "y": -1.0231815394945443e-12,
                      "z": 77.78360800071768
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "yzrk2mt0",
                  "_$type": "Sprite3D",
                  "name": "Plane_291",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 105.73713215496375,
                      "y": -1.0231815394945443e-12,
                      "z": 77.61064962669424
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "iua63vfc",
                  "_$type": "Sprite3D",
                  "name": "Plane_292",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 105.65577103753988,
                      "y": -1.0231815394945443e-12,
                      "z": 88.27364797799977
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "3vujuirs",
                  "_$type": "Sprite3D",
                  "name": "Plane_293",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 90.97520615716878,
                      "y": -1.0231815394945443e-12,
                      "z": 88.44660635202321
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "4k3sokpo",
                  "_$type": "Sprite3D",
                  "name": "Plane_294",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 90.97520615716878,
                      "y": -1.0231815394945443e-12,
                      "z": 88.44660635202321
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "w4htyu10",
                  "_$type": "Sprite3D",
                  "name": "Plane_295",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 105.65577103753988,
                      "y": -1.0231815394945443e-12,
                      "z": 88.27364797799977
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "1e21vi76",
                  "_$type": "Sprite3D",
                  "name": "Plane_296",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 66.53326362868094,
                      "y": -9.663381206337363e-13,
                      "z": 81.95364425654172
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "0dt9856k",
                  "_$type": "Sprite3D",
                  "name": "Plane_297",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.46434460120491,
                      "y": -9.663381206337363e-13,
                      "z": 86.82109544698739
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "uaawxekb",
                  "_$type": "Sprite3D",
                  "name": "Plane_298",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -80.83237841007146,
                      "y": -1.5347723092418164e-12,
                      "z": 79.58097404080873
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "8aya2hh8",
                  "_$type": "Sprite3D",
                  "name": "Plane_299",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -91.91623408278643,
                      "y": -1.4779288903810084e-12,
                      "z": 88.35231826893005
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "dygsh43t",
                  "_$type": "Sprite3D",
                  "name": "Plane_300",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -64.1472098183397,
                      "y": -1.4779288903810084e-12,
                      "z": 73.62961574890838
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "jjn6ok7i",
                  "_$type": "Sprite3D",
                  "name": "Plane_301",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -63.49519555488216,
                      "y": 0.10816633069958925,
                      "z": 87.11032104492188
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "g6pvj83x",
                  "_$type": "Sprite3D",
                  "name": "Plane_302",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -43.944045234551155,
                      "y": -1.5347723092418164e-12,
                      "z": 69.55998803158634
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "smqanae7",
                  "_$type": "Sprite3D",
                  "name": "Plane_303",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -88.3395087792335,
                      "y": -1.5347723092418164e-12,
                      "z": 78.49867363281267
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "8qynl8rw",
                  "_$type": "Sprite3D",
                  "name": "Plane_304",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -18.319818516569768,
                      "y": -1.5347723092418164e-12,
                      "z": 79.39254092412531
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "qc4wknjf",
                  "_$type": "Sprite3D",
                  "name": "Plane_305",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -43.09132754803525,
                      "y": -1.5347723092418164e-12,
                      "z": 39.066827388845454
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "lkb4riqj",
                  "_$type": "Sprite3D",
                  "name": "Plane_306",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -30.70557289015376,
                      "y": -1.5347723092418164e-12,
                      "z": 1.0454394351107013
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "ygnr4smc",
                  "_$type": "Sprite3D",
                  "name": "Plane_307",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -59.38358672018209,
                      "y": -1.4210854715202004e-12,
                      "z": -22.828215942378336
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "nxwqjheq",
                  "_$type": "Sprite3D",
                  "name": "Plane_308",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -5.0683796516800825,
                      "y": -1e-7,
                      "z": -51.67755362361162
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "1dkcswkb",
                  "_$type": "Sprite3D",
                  "name": "Plane_309",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 25.253966489317317,
                      "y": -1e-7,
                      "z": -52.645451243211006
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "wyav3y5i",
                  "_$type": "Sprite3D",
                  "name": "Plane_310",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 46.02738775892202,
                      "y": -1e-7,
                      "z": -8.62527422490895
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "ig9ftwba",
                  "_$type": "Sprite3D",
                  "name": "Plane_311",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 44.54347134793896,
                      "y": -1e-7,
                      "z": 25.997287300715897
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "d92ugpe0",
                  "_$type": "Sprite3D",
                  "name": "Plane_312",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 90.04727064046794,
                      "y": -1e-7,
                      "z": 78.92047189054111
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "r6sjqxbq",
                  "_$type": "Sprite3D",
                  "name": "Plane_313",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 91.03664627042102,
                      "y": -1e-7,
                      "z": 21.051330199043612
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "ch2osjnp",
                  "_$type": "Sprite3D",
                  "name": "Plane_314",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 91.03680794996872,
                      "y": -1e-7,
                      "z": -38.79624918999945
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "40d4m7c6",
                  "_$type": "Sprite3D",
                  "name": "Plane_315",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 8.437135539996472,
                      "y": -1e-7,
                      "z": 4.729043855220716
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "weacd0x5",
                  "_$type": "Sprite3D",
                  "name": "Plane_316",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -44.59552853404104,
                      "y": -1e-7,
                      "z": -69.42411133647886
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "bfxjmv2d",
                  "_$type": "Sprite3D",
                  "name": "Plane_317",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 11.494831136320453,
                      "y": -1e-7,
                      "z": 49.35630009374665
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "s7fzio6b",
                  "_$type": "Sprite3D",
                  "name": "Plane_318",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 57.216114511340805,
                      "y": -1e-7,
                      "z": -65.1816883119356
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
              "_$id": "uj8c5yv1",
              "_$type": "Sprite3D",
              "name": "PlayerBorn",
              "_$child": [
                {
                  "_$id": "wv4n2pr8",
                  "_$type": "Sprite3D",
                  "name": "Plane",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -59.605941248499164,
                      "y": 1.7408297026122455e-13,
                      "z": -57.1520930269859
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
                  "_$id": "vsf33vc8",
                  "_$type": "Sprite3D",
                  "name": "Plane_1",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -43.12503084505423,
                      "y": 5.719869022868806e-13,
                      "z": 5.833749771118164
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
                  "_$id": "tsh0rw7j",
                  "_$type": "Sprite3D",
                  "name": "Plane_2",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -44.05686384859172,
                      "y": 6.004086117172847e-13,
                      "z": 63.65479213153975
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
                  "_$id": "k0s1e4s4",
                  "_$type": "Sprite3D",
                  "name": "Plane_3",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.9305334698215417,
                      "y": 7.140954494389007e-13,
                      "z": 39.830066534972275
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
                  "_$id": "3pzocp0m",
                  "_$type": "Sprite3D",
                  "name": "Plane_4",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 48.322965857393626,
                      "y": 8.277822871605167e-13,
                      "z": 39.415799961307776
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
                  "_$id": "mikf8gal",
                  "_$type": "Sprite3D",
                  "name": "Plane_5",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 50.415118385199925,
                      "y": 8.277822871605167e-13,
                      "z": 7.036138931627378
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
                  "_$id": "jyapn8ta",
                  "_$type": "Sprite3D",
                  "name": "Plane_6",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 50.40093431680447,
                      "y": 8.277822871605167e-13,
                      "z": -51.08733510801376
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
                  "_$id": "0oktu35n",
                  "_$type": "Sprite3D",
                  "name": "Plane_7",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 12.137142874687363,
                      "y": 8.277822871605167e-13,
                      "z": -61.14800270596433
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
                  "_$id": "isxzxrzg",
                  "_$type": "Sprite3D",
                  "name": "Plane_8",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 50.248360638642424,
                      "y": 8.277822871605167e-13,
                      "z": -23.70262505745124
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
                  "_$id": "nq0f34g3",
                  "_$type": "Sprite3D",
                  "name": "Plane_9",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 7.9109293875382605,
                      "y": 8.277822871605167e-13,
                      "z": 1.5584950226481729
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
                  "_$id": "cs9nxxu9",
                  "_$type": "Sprite3D",
                  "name": "Plane_10",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -88.17446011234966,
                      "y": 8.277822871605167e-13,
                      "z": 1.8688321503880143
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
                  "_$id": "ppdb8q1h",
                  "_$type": "Sprite3D",
                  "name": "Plane_11",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -92.63991731934414,
                      "y": 8.277822871605167e-13,
                      "z": 28.58000946044922
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
                  "_$id": "1yaolf46",
                  "_$type": "Sprite3D",
                  "name": "Plane_12",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 49.73337347223097,
                      "y": 8.277822871605167e-13,
                      "z": -78.17487342561911
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
                  "_$id": "q3pk2dbw",
                  "_$type": "Sprite3D",
                  "name": "Plane_13",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -13.313158987037426,
                      "y": 8.277822871605167e-13,
                      "z": -61.4702353639441
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
                  "_$id": "ib8ek3ak",
                  "_$type": "Sprite3D",
                  "name": "Plane_14",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 34.1270008345025,
                      "y": 8.277822871605167e-13,
                      "z": 80.12041086718344
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
              "_$id": "rxikul38",
              "_$type": "Sprite3D",
              "name": "ItemBorn",
              "_$child": [
                {
                  "_$id": "5995ppif",
                  "_$type": "Sprite3D",
                  "name": "Plane",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -16.638559628895877,
                      "y": 3.552713678800501e-15,
                      "z": -3.5289487344821566
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
                  "_$id": "camu6a7o",
                  "_$type": "Sprite3D",
                  "name": "Plane_1",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -99.69382364330716,
                      "y": 3.552713678800501e-15,
                      "z": 82.84853458608458
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
                  "_$id": "q765f4ic",
                  "_$type": "Sprite3D",
                  "name": "Plane_2",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -101.35493005410378,
                      "y": 3.552713678800501e-15,
                      "z": -61.66764046936818
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
                  "_$id": "ckeep9jd",
                  "_$type": "Sprite3D",
                  "name": "Plane_3",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -89.72719006072577,
                      "y": 3.552713678800501e-15,
                      "z": -97.65825875685147
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
                  "_$id": "28n8dmq7",
                  "_$type": "Sprite3D",
                  "name": "Plane_4",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 104.62213035603952,
                      "y": 3.552713678800501e-15,
                      "z": -65.54355117526411
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
                  "_$id": "iqb9fgg7",
                  "_$type": "Sprite3D",
                  "name": "Plane_5",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 105.1758331096687,
                      "y": 3.552713678800501e-15,
                      "z": 87.27815276286672
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
                  "_$id": "v22ihbr7",
                  "_$type": "Sprite3D",
                  "name": "Plane_6",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 50.67767241013111,
                      "y": 3.552713678800501e-15,
                      "z": 21.94133758544922
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
                  "_$id": "x25yvxm4",
                  "_$type": "Sprite3D",
                  "name": "Plane_7",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -44.48633575439453,
                      "y": 1.708855279503041e-12,
                      "z": 39.31422613693726
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
                  "_$id": "4ppui93g",
                  "_$type": "Sprite3D",
                  "name": "Plane_8",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 50.94623365034809,
                      "y": 3.552713678800501e-15,
                      "z": -36.70198853244985
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
                  "_$id": "mxbqrl2f",
                  "_$type": "Sprite3D",
                  "name": "Plane_9",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -55.068118595398055,
                      "y": 3.552713678800501e-15,
                      "z": 2.240995213654541
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