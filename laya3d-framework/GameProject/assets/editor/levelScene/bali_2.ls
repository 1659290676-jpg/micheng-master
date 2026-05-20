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
          "_$id": "j471v8xk",
          "_$type": "Sprite3D",
          "name": "bali_2",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "y": 0.14
            }
          },
          "_$comp": [
            {
              "_$type": "e8f192ec-d9e8-4176-864f-af4349fa93bd",
              "scriptPath": "../src/Game/Scene/Components/Level_Scene.ts",
              "owner": {
                "_$ref": "j471v8xk"
              },
              "npcBorns": [
                {
                  "_$ref": "gi9d2g7w",
                  "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138"
                }
              ],
              "playerBorns": [
                {
                  "_$ref": "rjuw345s",
                  "_$type": "79983f09-e1ab-47b6-b3ad-c4a6f7fc5e7b"
                }
              ],
              "itemBorns": [
                {
                  "_$ref": "pso2g1ds"
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
              "_$id": "1olfguth",
              "_$type": "Sprite3D",
              "name": "Light",
              "_$child": [
                {
                  "_$id": "a5x387zp",
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
              "_$id": "3a9hxj51",
              "_$type": "Sprite3D",
              "name": "Range",
              "_$child": [
                {
                  "_$id": "eu7rblrk",
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
                              "x": 5.022966129868053,
                              "z": -10.520466425387411
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 218.68523758126196,
                              "y": 1,
                              "z": 197.70697295914064
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": 116.7358853923725,
                              "z": 66.54324066823303
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 14.385662100058951,
                              "y": 1,
                              "z": 45.15157170757331
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": 117.58384584246824,
                              "z": -86.14112687971121
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 11.559127313925032,
                              "y": 1,
                              "z": 46.49154840940411
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": 86.0568299481413,
                              "z": 92.77841905980328
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 53.70394884237985,
                              "y": 1,
                              "z": 13.357712349247976
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": -112.76497108184523,
                              "z": -47.77418058025458
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 22.028656373008744,
                              "y": 1,
                              "z": 27.22723425540238
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": -107.47973679011892,
                              "z": 8.979193340989966
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 13.112307594358995,
                              "y": 1,
                              "z": 26.927555170332468
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": -112.7649710649818,
                              "z": 56.51034253395269
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 20.849871426206704,
                              "y": 1,
                              "z": 25.963926697076673
                            }
                          },
                          {
                            "_$type": "BoxColliderShape",
                            "localOffset": {
                              "_$type": "Vector3",
                              "x": -71.87369982718741,
                              "z": 88.89255281863105
                            },
                            "size": {
                              "_$type": "Vector3",
                              "x": 84.34000007892251,
                              "y": 1,
                              "z": 40.48815743133824
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
              "_$id": "umpyhqak",
              "_$type": "Sprite3D",
              "name": "Ground",
              "isStatic": true,
              "_$child": [
                {
                  "_$id": "c2x57egk",
                  "_$prefab": "9aa3349e-03d1-428c-9537-01dbf84732c9",
                  "name": "bali",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": -0.16375054693531466
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#40",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.000012402343600115273,
                          "y": 0.03,
                          "z": -0.00001860351585492026
                        }
                      }
                    },
                    {
                      "_$override": "#41",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.000012402343600115273,
                          "y": 0.03,
                          "z": -0.00001860351585492026
                        }
                      }
                    }
                  ]
                },
                {
                  "_$id": "cv3kvad4",
                  "_$type": "Sprite3D",
                  "name": "shui",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -11.739938735961914,
                      "y": 0.6743348303541126
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
                      "_$id": "pkgfwsj4",
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
                      "_$id": "uthpwy9w",
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
                      "_$id": "5pp9vds5",
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
                      "_$id": "pws8edv5",
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
                      "_$id": "w0ga2mai",
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
                      "_$id": "iejj3qy7",
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
                      "_$id": "mudb28bu",
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
                      "_$id": "66xf6ur9",
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
                      "_$id": "ch9i0t5r",
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
                      "_$id": "k6b4np6o",
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
                      "_$id": "ca8a20g4",
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
                      "_$id": "ep0ed2mz",
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
                      "_$id": "8gq5kroo",
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
                      "_$id": "tb9l7rkb",
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
                      "_$id": "hsay4aou",
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
                  "_$id": "evdad7u4",
                  "_$type": "Sprite3D",
                  "name": "caodi",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 0.089902608848618
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "o2ewyhjw",
                      "_$prefab": "da7a493d-b90d-47f6-895c-e2a3e65fd873",
                      "name": "Common_chaodi03_1",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 113.75124673138897,
                          "y": 0.15050817281002082,
                          "z": 63.27344890946596
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
                      "_$id": "74dbq4nv",
                      "_$prefab": "29435cd6-dc2d-4fc9-a11a-afcfe0032750",
                      "name": "Common_xiaolu_61",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -8.560441017150879,
                          "z": -21.387429018947422
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.2333246567319585,
                          "y": 1,
                          "z": 1.0360082746070856
                        }
                      }
                    },
                    {
                      "_$id": "pq034fbv",
                      "_$prefab": "b3591dd7-8f65-4867-a7c2-3d38d905d193",
                      "name": "Common_chaodi009_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -70.90047121080279,
                          "y": 1.7053025658242404e-13,
                          "z": -76.71660888740857
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
                      "_$id": "gol5xbob",
                      "_$prefab": "29435cd6-dc2d-4fc9-a11a-afcfe0032750",
                      "name": "Common_xiaolu_70",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 38.7773551940918,
                          "z": 29.869088783326113
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": -0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.8236680942538234,
                          "y": 1,
                          "z": 1.1955546305931322
                        }
                      }
                    },
                    {
                      "_$id": "2lhcz5vs",
                      "_$prefab": "9a0d994f-9681-4515-95c1-87ea2d675397",
                      "name": "Common_xiaolu_73",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 82.37309122479765,
                          "z": -75.32620806843113
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.2,
                          "y": 1,
                          "z": 1.3
                        }
                      }
                    },
                    {
                      "_$id": "ra2r9j10",
                      "_$prefab": "9a0d994f-9681-4515-95c1-87ea2d675397",
                      "name": "Common_xiaolu_74",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 82.61895895948774,
                          "z": -18.93266504442446
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": 0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.2,
                          "y": 1,
                          "z": 1.4
                        }
                      }
                    },
                    {
                      "_$id": "zk724mi3",
                      "_$prefab": "b3591dd7-8f65-4867-a7c2-3d38d905d193",
                      "name": "Common_chaodi009_3",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 82.48991396163227,
                          "y": 1.1368683772161603e-13,
                          "z": 73.42376707072236
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.861,
                          "y": 1,
                          "z": 1.0878688524590168
                        }
                      }
                    },
                    {
                      "_$id": "4jcxjzcc",
                      "_$prefab": "da7a493d-b90d-47f6-895c-e2a3e65fd873",
                      "name": "Common_chaodi03_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -107.7620531223063,
                          "y": 2.842170943040401e-14,
                          "z": 8.824110429546035
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
                      "_$id": "mzia4vlk",
                      "_$prefab": "da7a493d-b90d-47f6-895c-e2a3e65fd873",
                      "name": "Common_chaodi03_3",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 112.74984335728057,
                          "y": 1.4210854715202004e-12,
                          "z": -84.58501887221699
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 1,
                          "z": 0.91
                        }
                      }
                    },
                    {
                      "_$id": "dzomoj0s",
                      "_$prefab": "29435cd6-dc2d-4fc9-a11a-afcfe0032750",
                      "name": "Common_xiaolu_75",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 37.983253479003906,
                          "z": -21.387429018947422
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.2333246567319585,
                          "y": 1,
                          "z": 1.0360082746070856
                        }
                      }
                    },
                    {
                      "_$id": "woc1ptfe",
                      "_$prefab": "29435cd6-dc2d-4fc9-a11a-afcfe0032750",
                      "name": "Common_xiaolu_76",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -9.036556243896484,
                          "z": 29.869088783326113
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": -0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.8236680942538234,
                          "y": 1,
                          "z": 1.1955546305931322
                        }
                      }
                    },
                    {
                      "_$id": "e8gdfsjz",
                      "_$prefab": "5fe360cc-314d-40d8-899d-750c12d7ff64",
                      "name": "Common_chaodi01",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -102.19454865860784,
                          "y": 0.00915457308292389,
                          "z": 82.28304721791548
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.499999,
                          "y": 1,
                          "z": 0.9115044474601746
                        }
                      }
                    },
                    {
                      "_$id": "gmawa6qr",
                      "_$prefab": "29435cd6-dc2d-4fc9-a11a-afcfe0032750",
                      "name": "Common_xiaolu_78",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 37.93587248011663,
                          "z": -85.62212371826172
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.2230469512591922,
                          "y": 1,
                          "z": 1.1848739495798322
                        }
                      }
                    },
                    {
                      "_$id": "ms9dbalz",
                      "_$prefab": "29435cd6-dc2d-4fc9-a11a-afcfe0032750",
                      "name": "Common_xiaolu_79",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -8.219957895236863,
                          "z": -85.62212371826172
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.2230469512591922,
                          "y": 1,
                          "z": 1.1848739495798322
                        }
                      }
                    },
                    {
                      "_$id": "cg4881gw",
                      "_$prefab": "29435cd6-dc2d-4fc9-a11a-afcfe0032750",
                      "name": "Common_xiaolu_80",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -71.61230245549518,
                          "z": -19.153568267822266
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.4733246,
                          "y": 1,
                          "z": 1.1848739495798322
                        }
                      }
                    },
                    {
                      "_$id": "65s6tb00",
                      "_$prefab": "29435cd6-dc2d-4fc9-a11a-afcfe0032750",
                      "name": "Common_xiaolu_81",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -70.57685135473439,
                          "y": 0.2594274852840994,
                          "z": 32.30580915220414
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1.4333233,
                          "y": 1,
                          "z": 0.9248738
                        }
                      }
                    },
                    {
                      "_$id": "hvv0l13k",
                      "_$prefab": "da7a493d-b90d-47f6-895c-e2a3e65fd873",
                      "name": "Common_chaodi03_4",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 82.5621238197233,
                          "y": 0.15050817281007767,
                          "z": 30.62245602373092
                        },
                        "localRotation": {
                          "_$type": "Quaternion"
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.6612903225806455,
                          "y": 1,
                          "z": 0.542372881355933
                        }
                      }
                    },
                    {
                      "_$id": "51wjntlb",
                      "_$prefab": "29435cd6-dc2d-4fc9-a11a-afcfe0032750",
                      "name": "Common_xiaolu_82",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 38.7773551940918,
                          "z": 74.89693465458593
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": -0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.7199998,
                          "y": 1,
                          "z": 1.1955546305931322
                        }
                      }
                    },
                    {
                      "_$id": "rv7fgmnq",
                      "_$prefab": "29435cd6-dc2d-4fc9-a11a-afcfe0032750",
                      "name": "Common_xiaolu_83",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -9.036556243896484,
                          "z": 74.89693465458593
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "y": -0.7071067811865475,
                          "w": 0.7071067811865476
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 0.7199998,
                          "y": 1,
                          "z": 1.1955546305931322
                        }
                      }
                    }
                  ]
                },
                {
                  "_$id": "f9cxyzgd",
                  "_$type": "Sprite3D",
                  "name": "tree",
                  "_$child": [
                    {
                      "_$id": "flveol0o",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_6",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -11.610014134883368,
                          "y": -9.734435479913373e-13,
                          "z": 87.69664950302527
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
                      "_$id": "rmplnwia",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_7",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 32.22948569107079,
                          "y": -5.897504706808832e-13,
                          "z": 87.34804194595355
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
                      "_$id": "0g3vontw",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_8",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 61.478738225501104,
                          "y": -7.815970093361102e-14,
                          "z": 74.59309683137252
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
                      "_$id": "wilhbjl1",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_9",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 82.67152531959506,
                          "y": -2.0605739337042905e-13,
                          "z": 50.170022926477074
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
                      "_$id": "5oinurnx",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_10",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -43.29181741850475,
                          "y": -1.4495071809506044e-12,
                          "z": 32.29248500866813
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
                      "_$id": "kixap73j",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_11",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 61.31752014160156,
                          "y": 2.6290081223123707e-13,
                          "z": 30.18019489703274
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
                      "_$id": "tjt84l6s",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_12",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 94.61092305825152,
                          "y": 3.907985046680551e-13,
                          "z": 31.361899171530474
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
                      "_$id": "z149bzk0",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_13",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 70.47778500384455,
                          "y": 8.455458555545192e-13,
                          "z": 33.941488606961045
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
                      "_$id": "1aigow2y",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_14",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -31.13451513493373,
                          "y": 3.055333763768431e-13,
                          "z": 75.47733044375644
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
                      "_$id": "ofvl3key",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_15",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 93.42773349360041,
                          "y": -4.902744876744691e-13,
                          "z": 72.83578326537467
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
                      "_$id": "immsbqir",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_18",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -17.297449111938477,
                          "y": -1.2008172234345693e-12,
                          "z": -107.82243354864399
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
                      "_$id": "q5jjn5m0",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_19",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 13.089717864990234,
                          "y": -1.3287149158713873e-12,
                          "z": -107.80535896368305
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
                      "_$id": "7tfwe5e0",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_20",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -30.774046026906717,
                          "y": -4.384048679639818e-12,
                          "z": -11.008603165670724
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
                      "_$id": "x14g4c45",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_21",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 81.61763607388077,
                          "y": 4.618527782440651e-13,
                          "z": -98.25379635050369
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
                      "_$id": "6dkpe36p",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_22",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 94.76558011078339,
                          "y": -1.2292389328649733e-12,
                          "z": -85.68918438637405
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
                      "_$id": "7526cbwd",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_23",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 70.54311656802174,
                          "y": -9.663381206337363e-13,
                          "z": -81.60686036593142
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
                      "_$id": "dlizbrl0",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_24",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 47.78422867333973,
                          "y": -1.4992451724538114e-12,
                          "z": -64.07844242621069
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
                      "_$id": "r1q10703",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_25",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 94.5268783569336,
                          "y": -1.1866063687193673e-12,
                          "z": -27.2723331451416
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
                      "_$id": "0h2pqprt",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_26",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 47.748374200720775,
                          "y": -6.892264536872972e-13,
                          "z": -40.70657790128936
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
                      "_$id": "ph3csiw8",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_27",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 61.840349480823676,
                          "y": -1.5916157281026244e-12,
                          "z": -24.15464461271506
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
                      "_$id": "5dpbbx9q",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_28",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -31.29549102830294,
                          "y": -1.8616219676914625e-12,
                          "z": 26.97305950301776
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
                      "_$id": "6ivk2nbk",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_29",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 14.239349785897424,
                          "y": -1.5916157281026244e-12,
                          "z": 3.3832089577537765
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
                      "_$id": "vlfcubv1",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_30",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 16.120106285116652,
                          "y": -1.5489831639570184e-12,
                          "z": -40.96454446253304
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
                      "_$id": "1uysamvk",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_31",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -18.804661096736996,
                          "y": -6.608047442568932e-13,
                          "z": -63.93945599597488
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
                      "_$id": "i4j63imc",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_32",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -81.39298976941947,
                          "y": 4.405364961712621e-13,
                          "z": 14.887299537658691
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
                      "_$id": "bun77id7",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_33",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -14.36659885254825,
                          "y": -4.476419235288631e-13,
                          "z": 61.625891351977074
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
                      "_$id": "zc9s0h2l",
                      "_$prefab": "5a01a4f5-a340-40fb-9f8c-f46a61d30809",
                      "name": "Common_tree04",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -43.50931976337231,
                          "y": 7.105427357601002e-14,
                          "z": -3.862832853952378
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
                      "_$id": "y816obgx",
                      "_$prefab": "5a01a4f5-a340-40fb-9f8c-f46a61d30809",
                      "name": "Common_tree04_1",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -8.838806091432614,
                          "y": 7.815970093361102e-14,
                          "z": 3.0750669980832352
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
                      "_$id": "81upikic",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_1",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 30.439963520337862,
                          "y": -7.318590178329032e-13,
                          "z": 15.961152015020073
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
                      "_$id": "f4ff79ti",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_21",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 36.100401286970346,
                          "z": 31.884742814212743
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
                      "_$id": "njieifkd",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 46.93101119995117,
                          "y": -1.3855583347321954e-12,
                          "z": -107.7270279700307
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
                      "_$id": "tdn7uxca",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 83.06034608821719,
                          "y": 2.2737367544323206e-13,
                          "z": 31.398785132641414
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
                      "_$id": "c5qmm5k2",
                      "_$prefab": "a66f424e-5467-41b9-b345-0d904e44273f",
                      "name": "Common_tree02",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 90.97174771722496,
                          "y": 7.176481631177012e-13,
                          "z": -0.9885958975130058
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
                      "_$id": "lubbjcji",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 114.08164812869491,
                          "y": 1.4921397450962104e-13,
                          "z": 70.60429687716004
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
                      "_$id": "dv2i2lxp",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_4",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 114.60938097052862,
                          "y": 4.405364961712621e-13,
                          "z": 57.90278797331914
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
                      "_$id": "akwzvqoc",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_6",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 90.46603657122614,
                          "y": 2.7711166694643907e-13,
                          "z": -55.29505920251156
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
                      "_$id": "dn1j10w4",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_7",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 42.69222452478979,
                          "y": 3.339550858072471e-13,
                          "z": -95.86741284026623
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
                      "_$id": "8l3ssdvw",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_8",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 43.02559947207011,
                          "y": 5.400124791776761e-13,
                          "z": -71.77468929182439
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
                      "_$id": "l7c1ksxu",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_9",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 73.33613293381563,
                          "y": 6.110667527536862e-13,
                          "z": -53.853937633360665
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
                      "_$id": "q1p4gv6k",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_10",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 44.14025496980497,
                          "y": 1.0942358130705543e-12,
                          "z": -16.474769185417085
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
                      "_$id": "xqmu5goa",
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
                      "_$id": "t6bmdq7h",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_12",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 55.60075759887695,
                          "y": 5.968558980384842e-13,
                          "z": -92.01139884296053
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
                      "_$id": "x0bu1ocp",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_13",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -25.214477014038813,
                          "y": 5.968558980384842e-13,
                          "z": -70.7473072760562
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
                      "_$id": "m5r4rqky",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_14",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 12.431252479553223,
                          "y": 6.110667527536862e-13,
                          "z": -93.6982775833562
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
                      "_$id": "2pkd7dn9",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_15",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -79.4277623489311,
                          "y": 6.679101716144942e-13,
                          "z": -70.95602122515461
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
                      "_$id": "w1fock2p",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_17",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 87.1783936422227,
                          "y": -7.105427357601002e-15,
                          "z": 1.226908558469706
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
                      "_$id": "dviympd8",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_19",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 41.86887078428151,
                          "y": 3.197442310920451e-13,
                          "z": -24.465803464318036
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
                      "_$id": "ukyl7wxs",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -98.17416019367049,
                          "y": -1.4495071809506044e-12,
                          "z": -21.53289861625085
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
                      "_$id": "u7ezefpc",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_34",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -18.0819034576416,
                          "y": -4.476419235288631e-13,
                          "z": 50.07382660128118
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
                      "_$id": "utyaskkg",
                      "_$prefab": "5a01a4f5-a340-40fb-9f8c-f46a61d30809",
                      "name": "Common_tree04_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -83.57354061550696,
                          "y": 1.3500311979441904e-13,
                          "z": -77.68855917194321
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
                      "_$id": "durbj00l",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_35",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -18.853254029341606,
                          "y": -7.105427357601002e-15,
                          "z": 14.936473602393065
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
                      "_$id": "ds5k61al",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_36",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 39.56511706688573,
                          "y": -3.552713678800501e-14,
                          "z": 61.46126363671348
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
                      "_$id": "zm6afor1",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_37",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 70.95827659305363,
                          "y": -1.8332002582610585e-12,
                          "z": -27.02498544002023
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
                      "_$id": "4vfcccg9",
                      "_$prefab": "96e5c876-82d3-4813-87f2-4ee3706fb28e",
                      "name": "Common_tree03_22",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -64.03389219847462,
                          "y": 6.821210263296962e-13,
                          "z": -70.68746124129724
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
                      "_$id": "p6eeajvh",
                      "_$prefab": "5a01a4f5-a340-40fb-9f8c-f46a61d30809",
                      "name": "Common_tree04_3",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -58.223530761655795,
                          "y": 1.3500311979441904e-13,
                          "z": -76.2727342466398
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
                      "_$id": "qkkya0kl",
                      "_$prefab": "5a01a4f5-a340-40fb-9f8c-f46a61d30809",
                      "name": "Common_tree04_4",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -71.3094815764195,
                          "y": -7.105427357601002e-14,
                          "z": -86.70302081627298
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
                      "_$id": "hh2wyhg1",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_38",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 60.98238671838451,
                          "y": 8.455458555545192e-13,
                          "z": -82.1924160779898
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
                      "_$id": "ebjxilsv",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_39",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -76.56422180803273,
                          "y": -3.552713678800501e-14,
                          "z": -40.13570343467503
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
                      "_$id": "28k31yxl",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_40",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -98.21728407779555,
                          "y": 7.815970093361102e-14,
                          "z": 33.71649396747108
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
                      "_$id": "rdrexs9t",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_42",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 71.64347200402875,
                          "y": -1.2505552149377763e-12,
                          "z": 73.19759647436321
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
                      "_$id": "692f8int",
                      "_$prefab": "0f0734ff-3de7-4be2-b106-68ae0683c412",
                      "name": "Common_tree05_43",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 17.097540697973162,
                          "y": -1.5916157281026244e-12,
                          "z": -63.37299536691826
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
                  "_$id": "g2bc8hb9",
                  "_$type": "Sprite3D",
                  "name": "langan",
                  "_$child": [
                    {
                      "_$id": "2i87gqhm",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_6",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -29.600369374759488,
                          "z": 16.7473087310791
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
                      "_$id": "wtbbfp58",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_7",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 59.67095792752942,
                          "y": 1.4210854715202004e-14,
                          "z": 16.7957307851965
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
                      "_$id": "yvk86iu3",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_8",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 59.60908126831055,
                          "y": -4.867217739956686e-13,
                          "z": 86.19941947766044
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
                      "_$id": "xo8buwrh",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_9",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 92.46497960902546,
                          "y": -2.2737367544323206e-13,
                          "z": 47.81489944458008
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
                      "_$id": "r1ygb84r",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_10",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 92.5317676916007,
                          "y": -2.2737367544323206e-13,
                          "z": 0.9755241274833679
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
                      "_$id": "twxe4knk",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_11",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 92.45050107976374,
                          "y": -2.2737367544323206e-13,
                          "z": -54.61190667089239
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
                      "_$id": "j0qq8eis",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_13",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 72.62387006007528,
                          "y": -2.2737367544323206e-13,
                          "z": 0.9813619134348608
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
                      "_$id": "gkimhnec",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_14",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 59.75060423823414,
                          "y": -2.0605739337042905e-13,
                          "z": 63.60987725421598
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
                      "_$id": "rdsq1akx",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_15",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 59.71486282348633,
                          "y": -1.0516032489249483e-12,
                          "z": -38.92348653043082
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
                      "_$id": "cok85kjk",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_16",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 92.47255882155822,
                          "y": -1.0942358130705543e-12,
                          "z": -38.99428176879883
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
                      "_$id": "t911m6eo",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_18",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 92.35863218548664,
                          "y": -1.0800249583553523e-12,
                          "z": -96.33407386254784
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
                      "_$id": "5tosocof",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_21",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -44.871625037031336,
                          "y": -1.4210854715202004e-13,
                          "z": 47.91994094848633
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
                      "_$id": "jyww9ahf",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_22",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 59.70458221435547,
                          "y": -1.9895196601282805e-13,
                          "z": 43.41766052614918
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
                      "_$id": "d5r2956l",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_23",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -45.349160321708226,
                          "y": -1.8474111129762605e-13,
                          "z": 1.0143303871154785
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
                      "_$id": "tx3pgm4y",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_25",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -29.629815617733218,
                          "y": -2.2737367544323206e-13,
                          "z": 1.0168241262435913
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
                      "_$id": "pmbpi9x6",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_26",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -29.551132202148438,
                          "y": -2.5579538487363607e-13,
                          "z": -64.90607423285203
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
                      "_$id": "52q7q21r",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_28",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -96.33500459163756,
                          "y": -2.0605739337042905e-13,
                          "z": 47.760746002197266
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
                      "_$id": "tofxnmtj",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_29",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -29.540697988740042,
                          "y": 1.3145040611561853e-13,
                          "z": 63.600073958886874
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
                      "_$id": "7kb723om",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_30",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -96.3008404768525,
                          "y": 1.5631940186722204e-13,
                          "z": 16.870837003496852
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
                      "_$id": "upmp9f6d",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_31",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 72.59536525008237,
                          "y": 1.7053025658242404e-13,
                          "z": 16.86985837307135
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
                      "_$id": "seuz7oqd",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_32",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -29.64924430847168,
                          "y": -1.5631940186722204e-13,
                          "z": 43.44900437876168
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
                      "_$id": "2v043b1w",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_34",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -44.80052379542766,
                          "y": -5.329070518200751e-13,
                          "z": 16.930030822753906
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
                      "_$id": "t4mn42j3",
                      "_$prefab": "e9b56be7-c585-4159-843a-1f27486e7fe7",
                      "name": "Common_langan_35",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -29.553150177001953,
                          "y": 1.4210854715202004e-13,
                          "z": -106.12047911664177
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
                  "_$id": "n0ixshsu",
                  "_$type": "Sprite3D",
                  "name": "HaTan",
                  "_$child": [
                    {
                      "_$id": "gv9e5j2l",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 82.19744873046875,
                          "z": 8.964666616552567
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
                      "_$id": "gz5vemjj",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_3",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -2.611846923828125,
                          "z": 8.985472795736058
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
                      "_$id": "91zscej9",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_4",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -79.83497619628906,
                          "z": -46.78311514251894
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
                      "_$id": "1gh0m8q8",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_5",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -4.192205429077148,
                          "z": -46.790469726727316
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
                      "_$id": "8hdfyrq9",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_7",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 45.80059814453125,
                          "y": 7.389644451905042e-13,
                          "z": -46.803682238214215
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
                      "_$id": "66tb5wzd",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_8",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -73.5100614983651,
                          "z": 55.8157469969473
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
                      "_$id": "fawfpuuu",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_9",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -12.900615569216532,
                          "z": 55.82559232588919
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
                      "_$id": "91489hx4",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_10",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 29.877161043572777,
                          "z": 55.70681688734891
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
                      "_$id": "0shle08q",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_11",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 81.68775939941406,
                          "y": 2.4158453015843406e-13,
                          "z": 55.78551543764004
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
                      "_$id": "p77oeqw1",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_12",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 100.3608904260731,
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
                      "_$id": "stxurjtr",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_13",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 100.31004334793118,
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
                      "_$id": "8fzzje75",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_14",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 100.47942252387914,
                          "y": 3.552713678800501e-14,
                          "z": -68.84551118444551
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
                      "_$id": "k2g1y7si",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_18",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 100.41634125398261,
                          "z": 72.63033931972939
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
                      "_$id": "ugweme12",
                      "_$prefab": "aa50c585-2001-4f23-ab6d-0556571977a8",
                      "name": "Common_HaTan_19",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -69.76169683680163,
                          "z": 8.974409889303423
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
                  "_$id": "ynjj94ge",
                  "_$type": "Sprite3D",
                  "name": "shitou",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": -0.8274800669356353
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "sqprt0u9",
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
                      "_$id": "kfhtp9ni",
                      "_$prefab": "251e1529-1dc9-4214-a466-70e3fbe1ba6b",
                      "name": "shitou6_6",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -106.18205635342665,
                          "y": -0.7144834995269207,
                          "z": 112.53022009944414
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
                      "_$id": "39753s6q",
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
                      "_$id": "33m01g87",
                      "_$prefab": "251e1529-1dc9-4214-a466-70e3fbe1ba6b",
                      "name": "shitou6",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -116.62589057911083,
                          "y": -3.2601809501647807,
                          "z": -65.60963564911009
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
                      "_$id": "8hi3drmm",
                      "_$prefab": "2fcb8846-524f-4def-8c84-488b4ef62edf",
                      "name": "shitou5",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -130.34622244514648,
                          "y": -1.6485363245015492,
                          "z": 58.275009718738474
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
                      "_$id": "1go1nxc9",
                      "_$prefab": "b13672d1-a560-42c9-b297-6ed93d289c6b",
                      "name": "shitou4",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 36.577140488705865,
                          "y": 0.10413450002677394,
                          "z": 94.87221668527255
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
                      "_$id": "kzd7mgby",
                      "_$prefab": "251e1529-1dc9-4214-a466-70e3fbe1ba6b",
                      "name": "shitou6_1",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -108.6926912107726,
                          "y": -1.6382658481595982,
                          "z": -19.091269153793483
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
                      "_$id": "dqzax56g",
                      "_$prefab": "2fcb8846-524f-4def-8c84-488b4ef62edf",
                      "name": "shitou5_1",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -81.89969635009766,
                          "y": -2.3561367988586426,
                          "z": 114.72702931653367
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
                      "_$id": "jcsyavyq",
                      "_$prefab": "b13672d1-a560-42c9-b297-6ed93d289c6b",
                      "name": "shitou4_1",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 127.07097117803156,
                          "y": -1.4960901737213135,
                          "z": -89.00407409667969
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
                      "_$id": "cei415pd",
                      "_$prefab": "2fcb8846-524f-4def-8c84-488b4ef62edf",
                      "name": "shitou5_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 129.46232397631093,
                          "y": -1.7378367185592651,
                          "z": 69.26475002780177
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
                      "_$id": "sarpa24n",
                      "_$prefab": "2fcb8846-524f-4def-8c84-488b4ef62edf",
                      "name": "shitou5_3",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 97.17473036005192,
                          "y": -3.108996868133545,
                          "z": 105.75858670472114
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
                      "_$id": "0k8v294r",
                      "_$prefab": "2fcb8846-524f-4def-8c84-488b4ef62edf",
                      "name": "shitou5_4",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -111.94234801036464,
                          "y": -2.223273277282715,
                          "z": -88.7577351871553
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
                      "_$id": "tgkysxnb",
                      "_$prefab": "251e1529-1dc9-4214-a466-70e3fbe1ba6b",
                      "name": "shitou6_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -118.16655976788358,
                          "y": -2.0550901889801025,
                          "z": -29.686498955405153
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
                      "_$id": "qjkhposl",
                      "_$prefab": "2fcb8846-524f-4def-8c84-488b4ef62edf",
                      "name": "shitou5_5",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -117.87748811069491,
                          "y": -3.1088452339172363,
                          "z": 9.83375569570812
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
                      "_$id": "rlm55sbx",
                      "_$prefab": "251e1529-1dc9-4214-a466-70e3fbe1ba6b",
                      "name": "shitou6_3",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -127.8076242920688,
                          "y": -2.64031720161438,
                          "z": -50.09341037795969
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
                      "_$id": "4fubgn6s",
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
                      "_$id": "cmw1n4o9",
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
                      "_$id": "vizm4e45",
                      "_$prefab": "b5f4ad04-fd9c-4945-b436-cc1da529e24f",
                      "name": "shitou01",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 4.661525415337229,
                          "y": -2.4665446281433105,
                          "z": 94.24241732845252
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
                      "_$id": "tlmys9rs",
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
                      "_$id": "1mfy9jr3",
                      "_$prefab": "b13672d1-a560-42c9-b297-6ed93d289c6b",
                      "name": "shitou4_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -1.1638154983520508,
                          "y": -2.276151657104492,
                          "z": -115.57044671834738
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
                      "_$id": "y1sv0xdn",
                      "_$prefab": "cd3a0112-20ab-4ad8-8a1b-76f7937fb6f0",
                      "name": "shitou02_1",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 78.70886993408203,
                          "y": -1.1785457134246826,
                          "z": -114.56671269889037
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
                      "_$id": "a3x9ln8e",
                      "_$prefab": "cd3a0112-20ab-4ad8-8a1b-76f7937fb6f0",
                      "name": "shitou02_2",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -66.48995208740234,
                          "y": -2.0029101371765137,
                          "z": -113.72370554470245
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
                      "_$id": "8wp5151u",
                      "_$prefab": "2fcb8846-524f-4def-8c84-488b4ef62edf",
                      "name": "shitou5_9",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -44.48791965662764,
                          "y": -2.3561367988586426,
                          "z": 114.17169952392578
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
                      "_$id": "afraqv96",
                      "_$prefab": "251e1529-1dc9-4214-a466-70e3fbe1ba6b",
                      "name": "shitou6_7",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 29.41800888875001,
                          "y": -1.7182770967473004,
                          "z": -113.27984110905886
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
                      "_$id": "va9hq6vx",
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
                      "_$id": "kqcnane0",
                      "_$prefab": "2fcb8846-524f-4def-8c84-488b4ef62edf",
                      "name": "shitou5_10",
                      "active": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 80.46302232855092,
                          "y": -3.108996868133545,
                          "z": 105.75858306884766
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
                }
              ]
            },
            {
              "_$id": "yifqwyhg",
              "_$type": "Sprite3D",
              "name": "Npcs"
            },
            {
              "_$id": "h9hafq8k",
              "_$type": "Sprite3D",
              "name": "Players"
            },
            {
              "_$id": "uv3qn5jv",
              "_$type": "Sprite3D",
              "name": "Building",
              "layer": 3,
              "_$child": [
                {
                  "_$id": "b36us8a7",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_10",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -64.08594489777211,
                      "z": 20.687451962532027
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "lfc7cy13",
                  "_$prefab": "f186ecd5-dc9b-42bf-b724-cf99e3af5799",
                  "name": "putong_ditiezhan_4",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 49.42810791903358,
                      "y": -6.679101716144942e-13,
                      "z": 47.80242954166123
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "uclpa1l0",
                  "_$prefab": "e697fcaa-edb4-4f83-bc82-6480ad1ed034",
                  "name": "daxingjianzhu_yuanxing_1",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 52.01841825331867,
                      "z": -32.414747779146786
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "f2nh5sgo",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_11",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -64.2432967067514,
                      "z": 43.22311395104133
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "q2kzdqvi",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_12",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -22.235011607791453,
                      "y": 1.5631940186722204e-13,
                      "z": -70.77359272950238
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "7rce8my7",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_13",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.225522901795912,
                      "y": -7.105427357601002e-14,
                      "z": 25.999961591284176
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "xwoefky1",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_12",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -85.78690838417984,
                      "z": 73.65808426578397
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "029bk51u",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_13",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -85.78690838417984,
                      "z": 99.6123746557986
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "eil3no8u",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_14",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -72.7921726664064,
                      "z": 99.6123746557986
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "r9plsa3v",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_15",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -72.7921726664064,
                      "z": 73.34217774112577
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "saq44b0x",
                  "_$prefab": "0aa9a537-4d7c-4183-a5c2-764d39fa06ff",
                  "name": "putong_xiaoxing10_11",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -85.91997265419937,
                      "z": 86.04538857181424
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "ykl3g2cw",
                  "_$prefab": "0aa9a537-4d7c-4183-a5c2-764d39fa06ff",
                  "name": "putong_xiaoxing10_12",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -72.4061863382814,
                      "z": 86.04538857181424
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "vy6ph2gh",
                  "_$prefab": "f186ecd5-dc9b-42bf-b724-cf99e3af5799",
                  "name": "putong_ditiezhan_7",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.15644454956055,
                      "y": 2.7000623958883807e-13,
                      "z": -58.33854064052089
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "x4s1l1vo",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_28",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -21.347047042540616,
                      "y": 5.684341886080802e-14,
                      "z": 1.4602726377821975
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
                  "_$id": "oupekqoi",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_32",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -8.934142112731934,
                      "y": 5.684341886080802e-14,
                      "z": -58.349979400634766
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
                  "_$id": "m0ubl28e",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_33",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 6.710283279418945,
                      "y": 5.684341886080802e-14,
                      "z": -58.349979400634766
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
                  "_$id": "yg7e4gew",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_34",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 20.598974227905273,
                      "y": 5.684341886080802e-14,
                      "z": -58.349979400634766
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
                  "_$id": "qw66x0ul",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_35",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -50.11846923828125,
                      "z": 20.7064240683016
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
                  "_$id": "1q2ek2za",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_36",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -50.11846923828125,
                      "z": 31.59049732574789
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
                  "_$id": "sqaap6pb",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_37",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -50.11846923828125,
                      "z": 42.75267536529867
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
                  "_$id": "tgx6yy3d",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_38",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -16.151050758047436,
                      "y": -6.110667527536862e-13,
                      "z": 43.461581200184945
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
                  "_$id": "11e52izm",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_40",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 39.06257306158585,
                      "z": 24.143032227148783
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
                  }
                },
                {
                  "_$id": "jay23ym5",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_41",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 39.986297385400576,
                      "z": 17.332659145107947
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
                  }
                },
                {
                  "_$id": "3aewcvb0",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_42",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 54.17322540283203,
                      "y": -1.2221335055073723e-12,
                      "z": 18.715216516599412
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
                  }
                },
                {
                  "_$id": "e5r0yn17",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_11",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -6.764993190765381,
                      "y": 1.4210854715202004e-14,
                      "z": 22.07687759399414
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
                  "_$id": "s4ld7l3x",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_12",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -21.33607292175293,
                      "y": 1.4210854715202004e-14,
                      "z": 22.07687759399414
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
                  "_$id": "idq4jxgj",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_13",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -21.33607292175293,
                      "y": 1.4210854715202004e-14,
                      "z": 34.04322052001953
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
                  "_$id": "230nalb0",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_14",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -6.764993190765381,
                      "y": 1.4210854715202004e-14,
                      "z": 34.04322052001953
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
                  "_$id": "ihejc1en",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_44",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 55.71829605102539,
                      "y": 1.2789769243681803e-13,
                      "z": -58.55083783200743
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
                  "_$id": "tffi6ip6",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_45",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 56.786659240722656,
                      "y": -1.2647660696529783e-12,
                      "z": 42.95142581370257
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
                  "_$id": "7tt38981",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_46",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 56.786659240722656,
                      "y": -1.2647660696529783e-12,
                      "z": 65.72090911865234
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
                  "_$id": "j3dy67ra",
                  "_$prefab": "8430c7a4-b5b2-4b22-9296-20e57bb5f3de",
                  "name": "daxingjianzhu_zuqiuchang",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -70.63200869060155,
                      "z": -76.91079142232996
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "4otor40n",
                  "_$prefab": "9726d308-e0eb-4e08-a2ce-46315d7f644e",
                  "name": "daxingjianzhu_yuanhu",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.43572841698626,
                      "y": 4.263256414560601e-14,
                      "z": -85.53916892766684
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "l10hfmmo",
                  "_$prefab": "6b019b59-2b62-452a-ab80-6ddb5074b33d",
                  "name": "daxingjianzhu_shuita",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 44.355504402822355,
                      "y": -2.842170943040401e-14,
                      "z": 37.03451965732869
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "u5fttznl",
                  "_$prefab": "f56d272c-4990-4280-984f-6fac7fd6b4b2",
                  "name": "daxingjianzhu_lanse",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 83.0327025642477,
                      "y": 3.680611371237319e-12,
                      "z": 73.53934350908723
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "6dvkznkt",
                  "_$prefab": "e414f28c-a913-43c4-9590-7b1d49da04d4",
                  "name": "daxingjianzhu_fangxing",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -102.81731633207825,
                      "z": 83.49875774403945
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "0fwfgvo6",
                  "_$prefab": "931a193d-28a0-45d6-92ad-6d8bdd24109c",
                  "name": "putong_zhongxing16",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -29.27388960871864,
                      "z": -92.7482892369884
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "91gtea3w",
                  "_$prefab": "b874a152-89cd-4701-9521-e7aa643651f4",
                  "name": "putong_zhongxing15",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -29.27388960871864,
                      "z": -88.8329489204919
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "4jdf4kzv",
                  "_$prefab": "1385bc70-85bd-4db8-b2bb-45be7ceaa6c1",
                  "name": "putong_zhongxing14",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -29.27388960871864,
                      "z": -84.58005046186634
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "i42dzi46",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_29",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -29.2738892649486,
                      "z": -80.25916032039663
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "iwxp1i71",
                  "_$prefab": "8d384534-cb12-4904-8380-24d2281612a9",
                  "name": "putong_zhongxing12",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -24.96160124678142,
                      "z": -84.85994369709621
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "fjdz2uzl",
                  "_$prefab": "56e5ee0e-3110-4a2c-b1d1-0eed3160eb3b",
                  "name": "putong_zhongxing11",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -24.96160124678142,
                      "z": -79.8310309120952
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "n3bh6i8z",
                  "_$prefab": "15022849-e8d6-404c-af6b-620e9c7bfbe9",
                  "name": "putong_zhongxing10",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -24.96160124678142,
                      "z": -92.85549984786593
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "q1llboii",
                  "_$prefab": "6312d869-f268-44f5-92ae-6bae3af203cf",
                  "name": "putong_zhongxing09",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -24.96160124678142,
                      "z": -88.40965196654633
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "ncm2j4r4",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_7",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -43.801054499538935,
                      "y": 4.263256414560601e-14,
                      "z": 81.49190803453628
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "g0gvi9mj",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_6",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -47.199765869057266,
                      "y": 4.263256414560601e-14,
                      "z": 76.8634262084961
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "gyex6lfy",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_5",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -47.340882305504394,
                      "y": 4.263256414560601e-14,
                      "z": 86.51203155517578
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "m2xsgbhk",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_4",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -47.37698392718413,
                      "y": 4.263256414560601e-14,
                      "z": 88.96868896484375
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "ah5ktmwf",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_3",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -46.888888632974954,
                      "y": 6.572520305780927e-14,
                      "z": 83.9386221654824
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "3zf6njpu",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_2",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -47.208048739776004,
                      "y": 8.704148513061227e-14,
                      "z": 79.02101135253906
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "ocweggym",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_1",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -46.85566329956055,
                      "y": 0.07369473939206606,
                      "z": 74.33599853515625
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "tu47la5a",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_8",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -43.731284380811196,
                      "y": 4.263256414560601e-14,
                      "z": 71.86342900583146
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "3nprlq7q",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_9",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 31.859578335372014,
                      "y": 7.105427357601002e-14,
                      "z": 49.34406447944581
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "otz1wzt3",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_10",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 22.119464358857037,
                      "y": 7.105427357601002e-14,
                      "z": 49.194970351216845
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "omysk1gs",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_11",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 34.13847662660806,
                      "y": 7.105427357601002e-14,
                      "z": 49.4398666874977
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "ebg6pv5r",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_12",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 24.59107381698144,
                      "y": 7.105427357601002e-14,
                      "z": 49.39109439658155
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "e23tos4u",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_13",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 36.68057413884701,
                      "y": 1.7763568394002505e-15,
                      "z": 49.35545979096057
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "oxjes74y",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_14",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 27.12251031089317,
                      "y": 1.4033219031261979e-13,
                      "z": 49.34455561299382
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "63pi86ew",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_15",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 29.50004733150538,
                      "y": 8.881784197001252e-14,
                      "z": 52.846006095804675
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "0flipu9v",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_16",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 19.555461806184542,
                      "y": 7.105427357601002e-14,
                      "z": 49.47844587598102
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "djdx9h3y",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_18",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 34.3880879936931,
                      "y": 7.105427357601002e-14,
                      "z": 2.836547398960672
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "kurqv9gv",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_19",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 49.05761951542545,
                      "y": 7.105427357601002e-14,
                      "z": 3.223182808968339
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "vmo6yh27",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_20",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 39.400246458774006,
                      "y": 7.105427357601002e-14,
                      "z": 2.991998631884468
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "dwsg3lzs",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_21",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 51.57261446330368,
                      "y": -1.2434497875801753e-14,
                      "z": 2.9609751943708282
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "zyh30dyi",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_22",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.78396864017433,
                      "y": 1.4033219031261979e-13,
                      "z": 3.0565105583644243
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "9t3q4xj4",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_23",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 44.3022602787595,
                      "y": 8.881784197001252e-14,
                      "z": 3.0922868460171253
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "oq4pdxa5",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_24",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 34.60881423950195,
                      "y": 7.105427357601002e-14,
                      "z": -53.09411082804158
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "heq88zd7",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_25",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 36.79348373413086,
                      "y": 7.105427357601002e-14,
                      "z": -52.79905753199656
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "vw1uonri",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_26",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 48.943224559603344,
                      "y": 7.105427357601002e-14,
                      "z": -52.80092284462069
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "4l2q12sj",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_27",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 39.30724334716797,
                      "y": 7.105427357601002e-14,
                      "z": -52.81048137597882
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "g2mf57rg",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_28",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 51.40417952791051,
                      "y": -1.2434497875801753e-14,
                      "z": -53.007041931152344
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "sz56k3ti",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_29",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 41.79653125246075,
                      "y": 1.4033219031261979e-13,
                      "z": -52.9818838539731
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "jv93b5mu",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_30",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 44.174068450927734,
                      "y": 8.881784197001252e-14,
                      "z": -52.50070780925288
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "gzhiilx6",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_31",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 46.79946255791221,
                      "y": 7.105427357601002e-14,
                      "z": 2.935074273826455
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "pm6y4kmg",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_32",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 46.799461364746094,
                      "y": 7.105427357601002e-14,
                      "z": -53.03122150193946
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "45za0hp9",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_33",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 36.9538951895698,
                      "y": 7.105427357601002e-14,
                      "z": 2.875399029263849
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "4e73wxiu",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_47",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -95.74851590173283,
                      "y": 2.2737367544323206e-13,
                      "z": -57.59611222433219
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
                  "_$id": "ah7gsg81",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_48",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -95.7485122680664,
                      "y": 2.2737367544323206e-13,
                      "z": -94.23810508488583
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
                  "_$id": "grome4wb",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_49",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -49.565276218544476,
                      "y": 2.2737367544323206e-13,
                      "z": -95.67146362663031
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
                  "_$id": "070tkh6h",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_14",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 82.90898121264387,
                      "z": -35.09940514022003
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "z2yh2pwi",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_15",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 82.90898121264387,
                      "z": -24.41755470687042
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "w5gshoi0",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_16",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 82.90898121264387,
                      "z": -4.709389538108237
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "fpmxe1qe",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_17",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 82.90898121264387,
                      "z": -15.984515995322603
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "vs857a9c",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_18",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -16.146142110659532,
                      "z": -17.155103444874502
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "58442jgp",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_19",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -16.146142110659532,
                      "z": -37.849335514892054
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "zfz4lo9i",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_20",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -16.146142110659532,
                      "z": -27.167485081542427
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "a159zn74",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_21",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -16.146142110659532,
                      "z": -7.45931991278022
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "cgneu98f",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_22",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 7.210604895334903,
                      "z": -17.15510264677934
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "eh3n3b58",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_23",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 7.210604895334903,
                      "z": -37.849334716796875
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "mnvkuc5v",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_24",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 7.210604895334903,
                      "z": -27.167484283447266
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "hiizv2v3",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_25",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 7.210604895334903,
                      "z": -7.4593200683593714
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "rfuwtc7l",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_26",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 29.16031951618534,
                      "z": -17.15510264677934
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "msfsjwov",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_27",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 29.16031951618534,
                      "z": -37.849334716796875
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "83c91pw5",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_28",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 29.16031951618534,
                      "z": -27.167484283447266
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "7o1a6trf",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_29",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 29.16031951618534,
                      "z": -7.4593200683593714
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "xuplxicz",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_15",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -14.492373123430626,
                      "z": 27.965730332659838
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
                  "_$id": "i5anegdd",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_16",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -6.764993190765381,
                      "z": 43.832738548760055
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
                  "_$id": "is8ajo3a",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_17",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -28.721961234058845,
                      "z": 43.83273696899414
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
                  "_$id": "537ujhn7",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_18",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -28.721961975097656,
                      "z": 30.309625326295656
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
                  "_$id": "2o0e3jr3",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_19",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -28.721961975097656,
                      "z": 17.826547279896715
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
                  "_$id": "rjcszaxx",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_14",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 12.531747518520769,
                      "z": 25.999961952033857
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "e9wwar67",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_15",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 22.2612420193624,
                      "z": 25.999961952033857
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "akf78ft5",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_30",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 11.519628846926597,
                      "y": -2.842170943040401e-14,
                      "z": 40.628007305614304
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "19hjz9l0",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_50",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 34.46957700508152,
                      "z": 40.728755069012195
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
                  }
                },
                {
                  "_$id": "rdhtd4f7",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_34",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -87.29118084511734,
                      "z": 94.46010338504665
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "z2clqiaa",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_35",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -72.62164806923843,
                      "z": 94.84674202640407
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "90ej2vqd",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_36",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -82.27901959023453,
                      "z": 94.61555611331814
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "8l0v4acc",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_37",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -70.10665630898453,
                      "z": 94.5845311804568
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "u6ckses5",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_38",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -79.89529919228531,
                      "z": 94.68006645877712
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "n6i6q3mg",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_39",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -77.37700390419937,
                      "z": 94.71584450443142
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "pnlrsvdo",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_40",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -74.87980389199234,
                      "z": 94.55863320072048
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "lcpb1u5u",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_41",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -84.72536968789078,
                      "z": 94.49895607669704
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "u4kk7w64",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_16",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -64.08594512939453,
                      "z": 31.906693255883695
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "wu9mqbe9",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_17",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -85.99273616989557,
                      "z": 43.223114013671875
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "switfr0a",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_18",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -85.83538753708307,
                      "z": 31.906692504882812
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "vikv9i87",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_19",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -85.83538753708307,
                      "z": 20.68745231628418
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "3tab1b2a",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_20",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -69.63939318141581,
                      "z": -24.085019037340665
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "cy28ekmg",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_21",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -58.33316823920849,
                      "z": -24.085019037340665
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "428yhst5",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_22",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -48.60367414435986,
                      "z": -24.085019037340665
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "mfmiaxql",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_23",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -69.63939666748047,
                      "z": -5.169945771701288
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "jhkkt92t",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_24",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -58.333168029785156,
                      "z": -5.169945771701288
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "kvt8tf28",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_25",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -48.603675842285156,
                      "z": -5.169945771701288
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "ofcplnwh",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_31",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 83.39271864450475,
                      "z": 42.29161995607551
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "s1p1mb6a",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_32",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 83.39271864450475,
                      "z": 32.59583443361457
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "uknvh1u6",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_33",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 83.39271864450475,
                      "z": 22.583451926290365
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "6c7hpxwt",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_21",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -63.030295976301275,
                      "z": 71.07437579863704
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
                  "_$id": "jbbyi2ve",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_22",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -63.030295976301275,
                      "z": 65.33655709086207
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
                  "_$id": "so3hlz43",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_23",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -63.030296325683594,
                      "z": 76.70092966208678
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
                  "_$id": "0ud10da6",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_24",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -63.030296325683594,
                      "z": 82.43874551902037
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
                  "_$id": "wr1lw91v",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_25",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -63.030296325683594,
                      "z": 88.31784168935756
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
                  "_$id": "e76p1bbp",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_26",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -63.030296325683594,
                      "z": 94.05565754629116
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
                  "_$id": "iodsb1jo",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_27",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -63.030296325683594,
                      "z": 99.68221394277553
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
                  "_$id": "9v03npma",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_28",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -63.030296325683594,
                      "z": 105.42002979970913
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
                  "_$id": "0w5uhmca",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_26",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -5.032741284851472,
                      "z": 74.47200668929729
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "ou5y4u80",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_30",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -26.06846211004679,
                      "z": 74.47200668929729
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "x0189hps",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_31",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -14.762233472351472,
                      "z": 74.47200668929729
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "5y8r19re",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_32",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 24.12239401123786,
                      "z": 74.42121536962229
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "wg8iqtjy",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_33",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 35.428618953445195,
                      "z": 74.42121536962229
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "nm8uty0p",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_34",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 45.15811304829383,
                      "z": 74.42121536962229
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "4105jetx",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_35",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 10.393552895203419,
                      "z": 70.65669033276664
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "cjtavf84",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_36",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 10.393552780151367,
                      "z": 81.18785203818415
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "k3fvrv8a",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_35",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -22.23501205444336,
                      "z": -101.28595595202754
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "z5zqttua",
                  "_$prefab": "6312d869-f268-44f5-92ae-6bae3af203cf",
                  "name": "putong_zhongxing09_1",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -15.531923056508635,
                      "z": -88.40965270996094
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "s6ddszky",
                  "_$prefab": "15022849-e8d6-404c-af6b-620e9c7bfbe9",
                  "name": "putong_zhongxing10_1",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -15.531923056508635,
                      "z": -92.85549926757812
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "t60wue2o",
                  "_$prefab": "56e5ee0e-3110-4a2c-b1d1-0eed3160eb3b",
                  "name": "putong_zhongxing11_1",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -15.531923056508635,
                      "z": -79.8310317993164
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "3l1qieuu",
                  "_$prefab": "8d384534-cb12-4904-8380-24d2281612a9",
                  "name": "putong_zhongxing12_1",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -15.531923056508635,
                      "z": -84.85994720458984
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "nm3xhn4p",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_30",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -19.844211340810396,
                      "z": -80.25916290283203
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "khiw4e9m",
                  "_$prefab": "1385bc70-85bd-4db8-b2bb-45be7ceaa6c1",
                  "name": "putong_zhongxing14_1",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -19.844211340810396,
                      "z": -84.58004760742188
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "6eq206eo",
                  "_$prefab": "b874a152-89cd-4701-9521-e7aa643651f4",
                  "name": "putong_zhongxing15_1",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -19.844211340810396,
                      "z": -88.83294677734375
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "3fv073ma",
                  "_$prefab": "931a193d-28a0-45d6-92ad-6d8bdd24109c",
                  "name": "putong_zhongxing16_1",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -19.844211340810396,
                      "z": -92.748291015625
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "1jtypu4c",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_36",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.0030951086135946,
                      "z": -70.77359008789062
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "mfe949kf",
                  "_$prefab": "6312d869-f268-44f5-92ae-6bae3af203cf",
                  "name": "putong_zhongxing09_2",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -3.7296843114944522,
                      "z": -88.40965270996094
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "m0v6uuzg",
                  "_$prefab": "15022849-e8d6-404c-af6b-620e9c7bfbe9",
                  "name": "putong_zhongxing10_2",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -3.7296843114944522,
                      "z": -92.85549926757812
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "iropxgw7",
                  "_$prefab": "56e5ee0e-3110-4a2c-b1d1-0eed3160eb3b",
                  "name": "putong_zhongxing11_2",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -3.7296843114944522,
                      "z": -79.8310317993164
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "4eovxmbn",
                  "_$prefab": "8d384534-cb12-4904-8380-24d2281612a9",
                  "name": "putong_zhongxing12_2",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -3.7296843114944522,
                      "z": -84.85994720458984
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "mb05gya9",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_31",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -8.041972595796208,
                      "z": -80.25916290283203
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "7g12wtd6",
                  "_$prefab": "1385bc70-85bd-4db8-b2bb-45be7ceaa6c1",
                  "name": "putong_zhongxing14_2",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -8.041972595796208,
                      "z": -84.58004760742188
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "91pa3orh",
                  "_$prefab": "b874a152-89cd-4701-9521-e7aa643651f4",
                  "name": "putong_zhongxing15_2",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -8.041972595796208,
                      "z": -88.83294677734375
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "r4tuant4",
                  "_$prefab": "931a193d-28a0-45d6-92ad-6d8bdd24109c",
                  "name": "putong_zhongxing16_2",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -8.041972595796208,
                      "z": -92.748291015625
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "ro3i2mqm",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_37",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.0030951086135946,
                      "z": -101.28595733642578
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "7hp4ohk7",
                  "_$prefab": "6312d869-f268-44f5-92ae-6bae3af203cf",
                  "name": "putong_zhongxing09_3",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.699993651762382,
                      "z": -88.40965270996094
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "8s0046jj",
                  "_$prefab": "15022849-e8d6-404c-af6b-620e9c7bfbe9",
                  "name": "putong_zhongxing10_3",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.699993651762382,
                      "z": -92.85549926757812
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "of9tyuns",
                  "_$prefab": "56e5ee0e-3110-4a2c-b1d1-0eed3160eb3b",
                  "name": "putong_zhongxing11_3",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.699993651762382,
                      "z": -79.8310317993164
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "p16av2j2",
                  "_$prefab": "8d384534-cb12-4904-8380-24d2281612a9",
                  "name": "putong_zhongxing12_3",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.699993651762382,
                      "z": -84.85994720458984
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "e6dq81n0",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_32",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.3877053674606223,
                      "z": -80.25916290283203
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "ig49oig5",
                  "_$prefab": "1385bc70-85bd-4db8-b2bb-45be7ceaa6c1",
                  "name": "putong_zhongxing14_3",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.3877053674606223,
                      "z": -84.58004760742188
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "w53ulgs2",
                  "_$prefab": "b874a152-89cd-4701-9521-e7aa643651f4",
                  "name": "putong_zhongxing15_3",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.3877053674606223,
                      "z": -88.83294677734375
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "xo7k7omn",
                  "_$prefab": "931a193d-28a0-45d6-92ad-6d8bdd24109c",
                  "name": "putong_zhongxing16_3",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.3877053674606223,
                      "z": -92.748291015625
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "roucxiyj",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_38",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 20.549289253342867,
                      "z": -70.77359008789062
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "6njcqufr",
                  "_$prefab": "6312d869-f268-44f5-92ae-6bae3af203cf",
                  "name": "putong_zhongxing09_4",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 17.822700050462007,
                      "z": -88.40965270996094
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "9i5b5kg5",
                  "_$prefab": "15022849-e8d6-404c-af6b-620e9c7bfbe9",
                  "name": "putong_zhongxing10_4",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 17.822700050462007,
                      "z": -92.85549926757812
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "6sxudjhv",
                  "_$prefab": "56e5ee0e-3110-4a2c-b1d1-0eed3160eb3b",
                  "name": "putong_zhongxing11_4",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 17.822700050462007,
                      "z": -79.8310317993164
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "9p9drr6i",
                  "_$prefab": "8d384534-cb12-4904-8380-24d2281612a9",
                  "name": "putong_zhongxing12_4",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 17.822700050462007,
                      "z": -84.85994720458984
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "yyqp8fdv",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_33",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 13.510412242997408,
                      "z": -80.25916290283203
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "ooqgolcq",
                  "_$prefab": "1385bc70-85bd-4db8-b2bb-45be7ceaa6c1",
                  "name": "putong_zhongxing14_4",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 13.510412242997408,
                      "z": -84.58004760742188
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "r4a0l0o8",
                  "_$prefab": "b874a152-89cd-4701-9521-e7aa643651f4",
                  "name": "putong_zhongxing15_4",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 13.510412242997408,
                      "z": -88.83294677734375
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "4fa9kufz",
                  "_$prefab": "931a193d-28a0-45d6-92ad-6d8bdd24109c",
                  "name": "putong_zhongxing16_4",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 13.510412242997408,
                      "z": -92.748291015625
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "2dk99j0i",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_39",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 20.549289253342867,
                      "z": -101.28595733642578
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "42hitbz6",
                  "_$prefab": "6312d869-f268-44f5-92ae-6bae3af203cf",
                  "name": "putong_zhongxing09_5",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 27.252378013718843,
                      "z": -88.40965270996094
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "m3s57700",
                  "_$prefab": "15022849-e8d6-404c-af6b-620e9c7bfbe9",
                  "name": "putong_zhongxing10_5",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 27.252378013718843,
                      "z": -92.85549926757812
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "ilik9cl2",
                  "_$prefab": "56e5ee0e-3110-4a2c-b1d1-0eed3160eb3b",
                  "name": "putong_zhongxing11_5",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 27.252378013718843,
                      "z": -79.8310317993164
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "6vgdxi3h",
                  "_$prefab": "8d384534-cb12-4904-8380-24d2281612a9",
                  "name": "putong_zhongxing12_5",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 27.252378013718843,
                      "z": -84.85994720458984
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "o98s17hi",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_34",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 22.940089729417085,
                      "z": -80.25916290283203
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "gdrbl8v8",
                  "_$prefab": "1385bc70-85bd-4db8-b2bb-45be7ceaa6c1",
                  "name": "putong_zhongxing14_5",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 22.940089729417085,
                      "z": -84.58004760742188
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "8321tgv9",
                  "_$prefab": "b874a152-89cd-4701-9521-e7aa643651f4",
                  "name": "putong_zhongxing15_5",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 22.940089729417085,
                      "z": -88.83294677734375
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "w23vr1zw",
                  "_$prefab": "931a193d-28a0-45d6-92ad-6d8bdd24109c",
                  "name": "putong_zhongxing16_5",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 22.940089729417085,
                      "z": -92.748291015625
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "9hrvk5nu",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_37",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 43.70288796680699,
                      "z": -70.72179936047907
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "e6de4t5q",
                  "_$prefab": "99dec2ee-cff7-48fb-8f53-8260db6cad3b",
                  "name": "putong_dajianzhu03_38",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 43.31194299798597,
                      "z": -100.82542697248809
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "tute72ny",
                  "_$prefab": "95ce4798-eec9-47a0-a2f4-61170ad6a700",
                  "name": "putong_dajianzhu02_4",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 55.872596600147546,
                      "z": -14.15850255837221
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "4w69fjq8",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_40",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 55.292293907312136,
                      "z": -84.89417828444367
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "9tmviq2s",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_41",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 82.77587161354154,
                      "z": -59.665609189145314
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "ztb21q91",
                  "_$prefab": "6312d869-f268-44f5-92ae-6bae3af203cf",
                  "name": "putong_zhongxing09_6",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.04927859596341,
                      "z": -77.30167181121563
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "rfkvah9c",
                  "_$prefab": "15022849-e8d6-404c-af6b-620e9c7bfbe9",
                  "name": "putong_zhongxing10_6",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.04927859596341,
                      "z": -81.74751836883281
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "73f1ln5r",
                  "_$prefab": "56e5ee0e-3110-4a2c-b1d1-0eed3160eb3b",
                  "name": "putong_zhongxing11_6",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.04927859596341,
                      "z": -68.72305090057108
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "fljfwuq3",
                  "_$prefab": "8d384534-cb12-4904-8380-24d2281612a9",
                  "name": "putong_zhongxing12_6",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.04927859596341,
                      "z": -73.75196630584453
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "ouht0vds",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_35",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 75.73699221901029,
                      "z": -69.1511820040867
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "d9f5mgk8",
                  "_$prefab": "1385bc70-85bd-4db8-b2bb-45be7ceaa6c1",
                  "name": "putong_zhongxing14_6",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 75.73699221901029,
                      "z": -73.47206670867656
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "t2969wvl",
                  "_$prefab": "b874a152-89cd-4701-9521-e7aa643651f4",
                  "name": "putong_zhongxing15_6",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 75.73699221901029,
                      "z": -77.72496587859844
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "c9o0vcu0",
                  "_$prefab": "931a193d-28a0-45d6-92ad-6d8bdd24109c",
                  "name": "putong_zhongxing16_6",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 75.73699221901029,
                      "z": -81.64031011687969
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "ir1ngo7q",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_42",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 82.77587161354154,
                      "z": -90.17797643768047
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "giylvgu1",
                  "_$prefab": "6312d869-f268-44f5-92ae-6bae3af203cf",
                  "name": "putong_zhongxing09_7",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 89.47895846656888,
                      "z": -77.30167181121563
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "xfqihuuf",
                  "_$prefab": "15022849-e8d6-404c-af6b-620e9c7bfbe9",
                  "name": "putong_zhongxing10_7",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 89.47895846656888,
                      "z": -81.74751836883281
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "bu9zoiis",
                  "_$prefab": "56e5ee0e-3110-4a2c-b1d1-0eed3160eb3b",
                  "name": "putong_zhongxing11_7",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 89.47895846656888,
                      "z": -68.72305090057108
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "fkn7g940",
                  "_$prefab": "8d384534-cb12-4904-8380-24d2281612a9",
                  "name": "putong_zhongxing12_7",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 89.47895846656888,
                      "z": -73.75196630584453
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "ddckhazx",
                  "_$prefab": "0a66c114-5d44-4de3-9c19-704339b3dcf0",
                  "name": "putong_zhongxing13_36",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 85.16667208961576,
                      "z": -69.1511820040867
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "47umkymq",
                  "_$prefab": "1385bc70-85bd-4db8-b2bb-45be7ceaa6c1",
                  "name": "putong_zhongxing14_7",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 85.16667208961576,
                      "z": -73.47206670867656
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "ziql3yak",
                  "_$prefab": "b874a152-89cd-4701-9521-e7aa643651f4",
                  "name": "putong_zhongxing15_7",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 85.16667208961576,
                      "z": -77.72496587859844
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "v3opl2to",
                  "_$prefab": "931a193d-28a0-45d6-92ad-6d8bdd24109c",
                  "name": "putong_zhongxing16_7",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 85.16667208961576,
                      "z": -81.64031011687969
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "mpvs87it",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_42",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -80.44777787498384,
                      "z": -94.6884765625
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "hfwttm1g",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_43",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -65.77824509910494,
                      "z": -94.3018409586416
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "x49b533w",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_44",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -75.4356204347983,
                      "z": -94.53302764892578
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "dp7xkeom",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_45",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -63.26325333885103,
                      "z": -94.56404870514734
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "hbuwt3qz",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_46",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -73.05189622215181,
                      "z": -94.46851348876953
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "00ba4mhv",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_47",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -70.53360474876314,
                      "z": -94.43273705010279
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "18sp7o7c",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_48",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -68.03640473655611,
                      "z": -94.58994954590662
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "jbpkscte",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_49",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -77.88197053245455,
                      "z": -94.64962768554688
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "stu1ztbn",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_50",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -80.4477767944336,
                      "z": -99.60447692871094
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "6mv3vghy",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_51",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -65.77824401855469,
                      "z": -99.21784464480326
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "ji4xp5j4",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_52",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -75.43562316894531,
                      "z": -99.44902801513672
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "rjeqjwso",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_53",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -63.26325225830078,
                      "z": -99.48005167605326
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "t6lzxel8",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_54",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -73.05189514160156,
                      "z": -99.38451385498047
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "3m5epaef",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_55",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -70.53360748291016,
                      "z": -99.34874216677592
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "iluc2ijc",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_56",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -68.03640747070312,
                      "z": -99.50595347048686
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "zb4na29g",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_57",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -77.88197326660156,
                      "z": -99.56562805175781
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "d6cufgyc",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_58",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -80.4477767944336,
                      "z": -105.09963989257812
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "5lnkzk8a",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_59",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -65.77824401855469,
                      "z": -104.71300596451194
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "4stdrpew",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_60",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -75.43562316894531,
                      "z": -104.9441909790039
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "963wntoh",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_61",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -63.26325225830078,
                      "z": -104.97521299576194
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "hloe7cqn",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_62",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -73.05189514160156,
                      "z": -104.87967681884766
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "xv6c92rg",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_63",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -70.53360748291016,
                      "z": -104.84390348648459
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "fyzpu900",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_64",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -68.03640747070312,
                      "z": -105.00111479019553
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "jqohcqla",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_65",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -77.88197326660156,
                      "z": -105.060791015625
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "htv8f6zg",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_66",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -98.91014759824107,
                      "z": -70.66210364616639
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "6ekcnz00",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_67",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -93.89799397275279,
                      "z": -70.50665473259217
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "w10qjhpc",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_68",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -91.51426594540904,
                      "z": -70.44214057243592
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "jvrq2w9u",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_69",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -96.34434407040904,
                      "z": -70.62325476921326
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "yyuuvmnh",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_70",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -98.91014759824107,
                      "z": -75.57810401237732
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "gy9x05w4",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_71",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -93.89799397275279,
                      "z": -75.4226550988031
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "lgdgbogw",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_72",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -91.51426594540904,
                      "z": -75.35814093864686
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "c1qnpttm",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_73",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -96.34434407040904,
                      "z": -75.5392551354242
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "kf76c2qc",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_74",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -98.91014759824107,
                      "z": -81.07326697624451
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "swich0wy",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_75",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -93.89799397275279,
                      "z": -80.91781806267029
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "5rifpdr0",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_76",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -91.51426594540904,
                      "z": -80.85330390251404
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "moy8blja",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_77",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -96.34434407040904,
                      "z": -81.03441809929139
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "zuqby4xi",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_78",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -52.880675183269055,
                      "z": -70.91501283475938
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "3rid0iij",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_79",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -47.86852155778077,
                      "z": -70.75956392118516
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "skliirk8",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_80",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -45.48479353043701,
                      "z": -70.69504976102891
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "grpw5uf2",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_81",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -50.314871655437024,
                      "z": -70.87616395780626
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "g5d5uw8t",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_82",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -52.880675183269055,
                      "z": -75.83101320097032
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "uyjsebf8",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_83",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -47.86852155778077,
                      "z": -75.6755642873961
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "i5on61tf",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_84",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -45.48479353043701,
                      "z": -75.61105012723985
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "lkyuls2a",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_85",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -50.314871655437024,
                      "z": -75.7921643240172
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "ietgf4z0",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_86",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -52.880675183269055,
                      "z": -81.3261761648375
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "m5dextwy",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_87",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -47.86852155778077,
                      "z": -81.17072725126329
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "ltbbwzlu",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_88",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -45.48479353043701,
                      "z": -81.10621309110704
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "r4jsdubu",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_89",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -50.314871655437024,
                      "z": -81.28732728788438
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "sp8jc3p6",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_90",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -80.4477767944336,
                      "z": -56.033960328952986
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "bl15lqqu",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_91",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -65.77824401855469,
                      "z": -55.64732550229283
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "k1t7p6zu",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_92",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -75.43562316894531,
                      "z": -55.87851141537877
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "29kpuglu",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_93",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -63.26325225830078,
                      "z": -55.90953253354283
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "8aszr0sl",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_94",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -73.05189514160156,
                      "z": -55.81399725522252
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "46n8ptpz",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_95",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -70.53360748291016,
                      "z": -55.778223024265486
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "owp5qywh",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_96",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -68.03640747070312,
                      "z": -55.935434327976424
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "uck8n3l1",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_97",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -77.88197326660156,
                      "z": -55.99511145199986
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "st7rfphm",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_98",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -80.4477767944336,
                      "z": -60.949960695163924
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "64hop5bi",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_99",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -65.77824401855469,
                      "z": -60.56332586850377
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "sky9xbyr",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_100",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -75.43562316894531,
                      "z": -60.794511781589705
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "8gghyvkg",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_101",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -63.26325225830078,
                      "z": -60.82553289975377
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "dwym40s4",
                  "_$prefab": "2b4a74c3-f50b-43c5-8451-8a4ac6a32d6a",
                  "name": "transport_102",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -73.05189514160156,
                      "z": -60.729997621433455
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "45ycsmua",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_103",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -70.53360748291016,
                      "z": -60.694223390476424
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "rq38t7d8",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_104",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -68.03640747070312,
                      "z": -60.85143469418736
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "oaf2mrct",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_105",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -77.88197326660156,
                      "z": -60.9111118182108
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "mj82oeke",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_43",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -85.99273681640625,
                      "z": -3.6452335274769467
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "em8zy29o",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_44",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -85.83538818359375,
                      "z": -14.96165503626601
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "3hjleq45",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_45",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -85.83538818359375,
                      "z": -26.180895224864642
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.7071067811865475,
                      "w": 0.7071067811865476
                    }
                  }
                },
                {
                  "_$id": "3pi9mfst",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_16",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 109.71592522914457,
                      "z": -48.445116760063215
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "bkdod254",
                  "_$prefab": "0aa9a537-4d7c-4183-a5c2-764d39fa06ff",
                  "name": "putong_xiaoxing10_13",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 109.80083083883189,
                      "z": -52.546182443848096
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "soaicgml",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_17",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 109.71592522914457,
                      "z": -56.80026068090608
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "nu9r03i4",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_18",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 109.71592712402344,
                      "z": -31.847223885967225
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "soq89wb8",
                  "_$prefab": "0aa9a537-4d7c-4183-a5c2-764d39fa06ff",
                  "name": "putong_xiaoxing10_14",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 109.80082702636719,
                      "z": -35.94828666062543
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "2mp0wuwq",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_19",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 109.71592712402344,
                      "z": -40.202368386699646
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "8210gw2z",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_20",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 109.71592712402344,
                      "z": -14.578709137397318
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "rlovl0z2",
                  "_$prefab": "0aa9a537-4d7c-4183-a5c2-764d39fa06ff",
                  "name": "putong_xiaoxing10_15",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 109.80082702636719,
                      "z": -18.67977191205552
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "i054gbb6",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_21",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 109.71592712402344,
                      "z": -22.93385363812974
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "xsc27htb",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_22",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 109.71592712402344,
                      "z": 1.9248983308513488
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "ijvk9l6g",
                  "_$prefab": "0aa9a537-4d7c-4183-a5c2-764d39fa06ff",
                  "name": "putong_xiaoxing10_16",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 109.80082702636719,
                      "z": -2.1761644438068544
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "ec1xmsei",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_23",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 109.71592712402344,
                      "z": -6.430246169881073
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "34pyewao",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_24",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 109.71592712402344,
                      "z": 18.522791092081818
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "x0hxy5fx",
                  "_$prefab": "0aa9a537-4d7c-4183-a5c2-764d39fa06ff",
                  "name": "putong_xiaoxing10_17",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 109.80082702636719,
                      "z": 14.421728317423614
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "4ql42jg2",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_25",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 109.71592712402344,
                      "z": 10.167646591349396
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "oh6qcgiq",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_26",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 109.71592712402344,
                      "z": 35.79130763260916
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "sbirtj8q",
                  "_$prefab": "0aa9a537-4d7c-4183-a5c2-764d39fa06ff",
                  "name": "putong_xiaoxing10_18",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 109.80082702636719,
                      "z": 31.690244857950958
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "3sgmsiz8",
                  "_$prefab": "3b475904-cebf-49db-b0b9-efa802be7d0c",
                  "name": "putong_xiaoxing04_27",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 109.71592712402344,
                      "z": 27.43616313187674
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "mabnxdgc",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_46",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 113.87302081120842,
                      "z": 63.86093616751195
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "qn3354xe",
                  "_$prefab": "9314d608-878d-4e9e-8a61-537a00b746f6",
                  "name": "putong_dajianzhu01_47",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 111.82752512541956,
                      "z": -84.47948975647624
                    },
                    "localRotation": {
                      "_$type": "Quaternion"
                    }
                  }
                },
                {
                  "_$id": "e8qyqkw8",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_51",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 56.786659240722656,
                      "z": 73.74485488294282
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
                  "_$id": "o6wpnzhr",
                  "_$prefab": "e1edec1f-adcb-4a39-85b6-83900f3b5b35",
                  "name": "putong_xiaoxing02_52",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 56.786659240722656,
                      "z": 81.76880064723329
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
                  "_$id": "67vo4a87",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_106",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 98.35252671985135,
                      "z": -54.523513221071006
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
                      "_$id": "s83ped9z",
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
                  "_$id": "zsrspuyy",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_107",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 99.59454637317167,
                      "z": -54.23301639489913
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
                  "_$id": "t79ipv4j",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_108",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 97.94674211291776,
                      "z": -30.022519492433425
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
                  "_$id": "ljlss91j",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_109",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 98.02719407824979,
                      "z": 6.601238823606679
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
                      "_$id": "e3oimqdm",
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
                  "_$id": "wwgpno4q",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_110",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 99.2692137315701,
                      "z": 6.891735649778556
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
                  "_$id": "gshw89ot",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_111",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 98.62101274280057,
                      "z": 31.12457714147778
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
                  "_$id": "qmwkz6hg",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_112",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 102.03882890490993,
                      "z": 21.89783153600901
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
                  "_$id": "6zsnztib",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_113",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 65.19757645827526,
                      "z": -28.481944540527167
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
                      "_$id": "87t1523p",
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
                  "_$id": "y6az3k0d",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_114",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 65.21703612612225,
                      "z": -36.50521470024625
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
                  "_$id": "movi7mbk",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_115",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 65.11544703868108,
                      "z": -12.260162077351858
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
                  "_$id": "j7gg3r0l",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_116",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 65.15147171163615,
                      "z": 24.362604251500304
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
                      "_$id": "gocrszxj",
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
                  "_$id": "dddkggj2",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_117",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 65.30416352523332,
                      "z": 28.95078252492257
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
                  "_$id": "o5g5figi",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_118",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 66.39977130832371,
                      "z": 48.900569145713376
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
                  "_$id": "jh0djq0p",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_119",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 69.81758747043308,
                      "z": 39.673823540244626
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
                  "_$id": "wqdttx87",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_120",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -39.25246898197544,
                      "z": -62.530693345565716
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
                      "_$id": "68ypa096",
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
                  "_$id": "16hzwd97",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_121",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -38.74542002721226,
                      "z": -57.017340314517256
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
                  "_$id": "v0jvblt9",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_122",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -39.658253588909034,
                      "z": -38.029699616928035
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
                  "_$id": "5mbyfjdb",
                  "_$prefab": "7778d123-330c-4237-a152-b4176c756a3e",
                  "name": "transport_123",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -39.577801623577,
                      "z": -1.4059408240508173
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
                      "_$id": "eztb4zfb",
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
                  "_$id": "u39jeiz1",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_124",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -38.33578197025669,
                      "z": -1.115443997878942
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
                  "_$id": "uqkr67ps",
                  "_$prefab": "72dcf5d3-d717-4288-b010-d0ae5bddc9ed",
                  "name": "transport_125",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -38.98398295902622,
                      "z": 23.117397016983126
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
                  "_$id": "ovfe753d",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_126",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -35.566166796916846,
                      "z": 13.890651411514357
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
                  "_$id": "91hmnn4q",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_127",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 15.862224444672092,
                      "z": -47.8941764831543
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
                  "_$id": "hdrmt8rp",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_128",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 21.345065936371306,
                      "z": -47.92235565185547
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
                  "_$id": "4v3ezuah",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_129",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 24.082675799652563,
                      "z": -44.734107971191406
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
                  "_$id": "am5pyh44",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_130",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 29.564811572357634,
                      "z": -44.55574417114258
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
                  "_$id": "1d9bn43m",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_131",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -25.627176294374706,
                      "z": -47.8941764831543
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
                  "_$id": "3lw28ne5",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_132",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -20.144334802675488,
                      "z": -47.92235565185547
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
                  "_$id": "rgls874l",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_133",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -17.406724939394238,
                      "z": -44.734107971191406
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
                  "_$id": "pba8fnsx",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_134",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -11.92458916668916,
                      "z": -44.55574417114258
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
                  "_$id": "x0l2c29u",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_135",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 78.70646379940473,
                      "z": -47.8941764831543
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
                  "_$id": "ok5ldy1u",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_136",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 84.18930529110392,
                      "z": -47.92235565185547
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
                  "_$id": "rd1xtyx9",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_137",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 86.92691515438517,
                      "z": -44.734107971191406
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
                  "_$id": "a62qw06f",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_138",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 92.40905092709025,
                      "z": -44.55574417114258
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
                  "_$id": "t8nv2cdv",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_139",
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
                  "_$id": "74j5w138",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_140",
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
                  "_$id": "mngd2kwy",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_141",
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
                  "_$id": "9iy608pr",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_142",
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
                  "_$id": "vj1wwsmn",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_143",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -92.13224512608205,
                      "z": 7.018266168777629
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
                  "_$id": "tx9a4lz2",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_144",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -86.64940363438284,
                      "z": 6.990087000076457
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
                  "_$id": "qxc1z053",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_145",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -83.91179377110159,
                      "z": 10.17833468074052
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
                  "_$id": "26xz7da6",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_146",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -78.42965799839651,
                      "z": 10.356698480789348
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
                  "_$id": "ocygilep",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_147",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -44.94822075618572,
                      "z": 7.425025003236378
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
                  "_$id": "5ugd1hvh",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_148",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -39.4653792644865,
                      "z": 7.396845834535206
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
                  "_$id": "6vdhegvt",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_149",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -36.72776940120525,
                      "z": 10.58509351519927
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
                  "_$id": "mnhe7kff",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_150",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -31.245633628500173,
                      "z": 10.763457315248099
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
                  "_$id": "p3csxxcd",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_151",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 8.133806659947691,
                      "z": 7.221645586007001
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
                  "_$id": "9m6qkmpq",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_152",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 13.61664815164691,
                      "z": 7.193466417305829
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
                  "_$id": "oudwuq39",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_153",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 16.35425801492816,
                      "z": 10.381714097969892
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
                  "_$id": "9z6fnexy",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_154",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 21.836393787633238,
                      "z": 10.560077898018719
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
                  "_$id": "5mx52rk9",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_155",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 60.605695829918645,
                      "z": 7.628404420465751
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
                  "_$id": "xdzjqoop",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_156",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 66.08853732161786,
                      "z": 7.600225251764579
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
                  "_$id": "fv446wic",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_157",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 68.82614718489914,
                      "z": 10.78847293242864
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
                  "_$id": "vjrw8ner",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_158",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 74.30828295760422,
                      "z": 10.966836732477468
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
                  "_$id": "gv62criu",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_159",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -92.13224792480469,
                      "z": 53.63984874813581
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
                  "_$id": "b92v6176",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_160",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -86.64940643310547,
                      "z": 53.61166957943464
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
                  "_$id": "f8wakldw",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_161",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -83.91179656982422,
                      "z": 56.799916783261544
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
                  "_$id": "dplu1bfh",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_162",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -78.42965698242188,
                      "z": 56.97828058331037
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
                  "_$id": "w11vptie",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_163",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -44.948219299316406,
                      "z": 54.046607533383614
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
                  "_$id": "dlc9g0g2",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_164",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -39.46537780761719,
                      "z": 54.01842836468244
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
                  "_$id": "m4n20nnz",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_165",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -36.72776794433594,
                      "z": 57.206676045346505
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
                  "_$id": "2xzidxcv",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_166",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -31.245634078979492,
                      "z": 57.38503984539533
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
                  "_$id": "aat2tigx",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_167",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 8.133806228637695,
                      "z": 53.843227902341134
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
                  "_$id": "myvsocxm",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_168",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 13.616647720336914,
                      "z": 53.81504873363996
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
                  "_$id": "tlk0ndt1",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_169",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 16.354257583618164,
                      "z": 57.003296414304025
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
                  "_$id": "njssdnyu",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_170",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 21.836393356323242,
                      "z": 57.18166021435285
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
                  "_$id": "unfdhm5s",
                  "_$prefab": "b1868237-20e3-4480-8b0e-232ee095ecaa",
                  "name": "transport_171",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 60.60569763183594,
                      "z": 54.249987164426095
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
                  "_$id": "avlrawpc",
                  "_$prefab": "914b0603-66fe-4513-b09d-5084f60abab1",
                  "name": "transport_172",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 66.08853912353516,
                      "z": 54.22180799572492
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
                  "_$id": "z5bjjx9o",
                  "_$prefab": "fff3eb6b-0fcb-4ceb-afc1-183c9459bdb6",
                  "name": "transport_173",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 68.8261489868164,
                      "z": 57.410055676388986
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
                  "_$id": "egm70463",
                  "_$prefab": "e1f8bb45-dc62-48e0-80fe-89eb381be3f1",
                  "name": "transport_174",
                  "active": true,
                  "layer": 3,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 74.30828094482422,
                      "z": 57.588419476437814
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
                }
              ]
            },
            {
              "_$id": "0mbusf3q",
              "_$type": "Sprite3D",
              "name": "NpcBorn",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "y": 0.1
                }
              },
              "_$child": [
                {
                  "_$id": "gi9d2g7w",
                  "_$type": "Sprite3D",
                  "name": "Plane",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -97.28242020751841,
                      "y": 5.684341886080802e-14,
                      "z": -102.04986602114509
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "y3grnq15",
                  "_$type": "Sprite3D",
                  "name": "Plane_1",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -97.26184435568015,
                      "y": 1.1368683772161603e-13,
                      "z": -87.40577215145194
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "34qg8imx",
                  "_$type": "Sprite3D",
                  "name": "Plane_2",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -97.28241729736328,
                      "y": 5.684341886080802e-14,
                      "z": -71.9544625643664
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "gv31dn45",
                  "_$type": "Sprite3D",
                  "name": "Plane_3",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -97.2618408203125,
                      "y": 1.1368683772161603e-13,
                      "z": -57.310366189854676
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ffyktoeq",
                  "_$type": "Sprite3D",
                  "name": "Plane_4",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -97.28241729736328,
                      "y": 5.684341886080802e-14,
                      "z": -42.507058670561086
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ojpowz2b",
                  "_$type": "Sprite3D",
                  "name": "Plane_5",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -97.2618408203125,
                      "y": 1.1368683772161603e-13,
                      "z": -27.862962296049357
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "00m7fztf",
                  "_$type": "Sprite3D",
                  "name": "Plane_6",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -97.28241729736328,
                      "y": 5.684341886080802e-14,
                      "z": -12.411653091947777
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "pmrqsu7q",
                  "_$type": "Sprite3D",
                  "name": "Plane_8",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -97.28241729736328,
                      "y": 5.684341886080802e-14,
                      "z": 0.6097613802037007
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "sr2dvu4y",
                  "_$type": "Sprite3D",
                  "name": "Plane_9",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -97.2618408203125,
                      "y": 1.1368683772161603e-13,
                      "z": 15.253857754715412
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "upl567vs",
                  "_$type": "Sprite3D",
                  "name": "Plane_10",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -97.28241729736328,
                      "y": 5.684341886080802e-14,
                      "z": 30.705166958816974
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "rf5uqrss",
                  "_$type": "Sprite3D",
                  "name": "Plane_11",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -97.2618408203125,
                      "y": 1.1368683772161603e-13,
                      "z": 45.34925951863144
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ty2fdj9a",
                  "_$type": "Sprite3D",
                  "name": "Plane_12",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -97.28241729736328,
                      "y": 5.684341886080802e-14,
                      "z": 60.152569912918565
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "w1y43ve0",
                  "_$type": "Sprite3D",
                  "name": "Plane_13",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "hr4tiafj",
                  "_$type": "Sprite3D",
                  "name": "Plane_14",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ne71mewb",
                  "_$type": "Sprite3D",
                  "name": "Plane_15",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -97.2618408203125,
                      "y": 1.1368683772161603e-13,
                      "z": 101.22912110884006
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "0tqjj6hb",
                  "_$type": "Sprite3D",
                  "name": "Plane_16",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -83.56599954566971,
                      "y": 5.684341886080802e-14,
                      "z": -102.04986572265625
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "9ntexkg1",
                  "_$type": "Sprite3D",
                  "name": "Plane_17",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "nr1fq94r",
                  "_$type": "Sprite3D",
                  "name": "Plane_18",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "l2uo2oee",
                  "_$type": "Sprite3D",
                  "name": "Plane_19",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "msoj2wbj",
                  "_$type": "Sprite3D",
                  "name": "Plane_20",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "bwh63c9z",
                  "_$type": "Sprite3D",
                  "name": "Plane_21",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "6lmz7ql8",
                  "_$type": "Sprite3D",
                  "name": "Plane_22",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "4sjmup28",
                  "_$type": "Sprite3D",
                  "name": "Plane_23",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "qoa1n1mf",
                  "_$type": "Sprite3D",
                  "name": "Plane_24",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ok413h71",
                  "_$type": "Sprite3D",
                  "name": "Plane_25",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "5llyxcpx",
                  "_$type": "Sprite3D",
                  "name": "Plane_26",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "1nk8eflu",
                  "_$type": "Sprite3D",
                  "name": "Plane_27",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "0lkz94gk",
                  "_$type": "Sprite3D",
                  "name": "Plane_28",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ghx3peqk",
                  "_$type": "Sprite3D",
                  "name": "Plane_29",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "e8redou7",
                  "_$type": "Sprite3D",
                  "name": "Plane_30",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -83.54542306861893,
                      "y": 1.1368683772161603e-13,
                      "z": 101.22911834716797
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "sf5k8j7n",
                  "_$type": "Sprite3D",
                  "name": "Plane_31",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -68.05330171138978,
                      "y": 5.684341886080802e-14,
                      "z": -102.04986572265625
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "hvrcsy3b",
                  "_$type": "Sprite3D",
                  "name": "Plane_32",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "rp41uw62",
                  "_$type": "Sprite3D",
                  "name": "Plane_33",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "22jws2vb",
                  "_$type": "Sprite3D",
                  "name": "Plane_34",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "z7o9707b",
                  "_$type": "Sprite3D",
                  "name": "Plane_35",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "icaujxnw",
                  "_$type": "Sprite3D",
                  "name": "Plane_36",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "nmfwrxr3",
                  "_$type": "Sprite3D",
                  "name": "Plane_37",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "zjq8c72e",
                  "_$type": "Sprite3D",
                  "name": "Plane_38",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -68.032725234339,
                      "y": 1.1368683772161603e-13,
                      "z": 101.22911834716797
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "qqe9k47y",
                  "_$type": "Sprite3D",
                  "name": "Plane_39",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "5y13904c",
                  "_$type": "Sprite3D",
                  "name": "Plane_40",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "uyeufhnv",
                  "_$type": "Sprite3D",
                  "name": "Plane_41",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "7l7bn7e9",
                  "_$type": "Sprite3D",
                  "name": "Plane_42",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "3bi2rkez",
                  "_$type": "Sprite3D",
                  "name": "Plane_43",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "kudjosnd",
                  "_$type": "Sprite3D",
                  "name": "Plane_44",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "rc5rd7jr",
                  "_$type": "Sprite3D",
                  "name": "Plane_45",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "uel03mlo",
                  "_$type": "Sprite3D",
                  "name": "Plane_46",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -54.33688630611631,
                      "y": 5.684341886080802e-14,
                      "z": -102.04986572265625
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "9gltq306",
                  "_$type": "Sprite3D",
                  "name": "Plane_47",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "3o1uaj1w",
                  "_$type": "Sprite3D",
                  "name": "Plane_48",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "vzuyerxk",
                  "_$type": "Sprite3D",
                  "name": "Plane_49",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "83io8xfx",
                  "_$type": "Sprite3D",
                  "name": "Plane_50",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "jj2u2dz9",
                  "_$type": "Sprite3D",
                  "name": "Plane_51",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "6gxy153r",
                  "_$type": "Sprite3D",
                  "name": "Plane_52",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "u16uzun7",
                  "_$type": "Sprite3D",
                  "name": "Plane_53",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "kr6nawof",
                  "_$type": "Sprite3D",
                  "name": "Plane_54",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "p41503nd",
                  "_$type": "Sprite3D",
                  "name": "Plane_55",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "1pn1yqce",
                  "_$type": "Sprite3D",
                  "name": "Plane_56",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "myz5d0u8",
                  "_$type": "Sprite3D",
                  "name": "Plane_57",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "yplky734",
                  "_$type": "Sprite3D",
                  "name": "Plane_58",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "jorbhehi",
                  "_$type": "Sprite3D",
                  "name": "Plane_59",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -54.33688630611631,
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "tkeuj1o3",
                  "_$type": "Sprite3D",
                  "name": "Plane_60",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -54.31630982906553,
                      "y": 1.1368683772161603e-13,
                      "z": 101.22911834716797
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "3ix1xv98",
                  "_$type": "Sprite3D",
                  "name": "Plane_61",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -37.416879469233315,
                      "y": 5.684341886080802e-14,
                      "z": -102.04986572265625
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ewfewrqw",
                  "_$type": "Sprite3D",
                  "name": "Plane_62",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "nopcpub2",
                  "_$type": "Sprite3D",
                  "name": "Plane_63",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "s7go76w7",
                  "_$type": "Sprite3D",
                  "name": "Plane_64",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "16t9l7ge",
                  "_$type": "Sprite3D",
                  "name": "Plane_65",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "zlb077q7",
                  "_$type": "Sprite3D",
                  "name": "Plane_66",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "miamdkiu",
                  "_$type": "Sprite3D",
                  "name": "Plane_67",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "17bqx9br",
                  "_$type": "Sprite3D",
                  "name": "Plane_68",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -37.396302992182534,
                      "y": 1.1368683772161603e-13,
                      "z": 101.22911834716797
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "dxs7ytr7",
                  "_$type": "Sprite3D",
                  "name": "Plane_69",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "v91zdk0c",
                  "_$type": "Sprite3D",
                  "name": "Plane_70",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "cpi2gox0",
                  "_$type": "Sprite3D",
                  "name": "Plane_71",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "mfcf64oi",
                  "_$type": "Sprite3D",
                  "name": "Plane_72",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "3jzupn6a",
                  "_$type": "Sprite3D",
                  "name": "Plane_73",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "2bdc9u6b",
                  "_$type": "Sprite3D",
                  "name": "Plane_74",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -37.396302992182534,
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "mobxlj8n",
                  "_$type": "Sprite3D",
                  "name": "Plane_75",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -37.416879469233315,
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "s35ot7l0",
                  "_$type": "Sprite3D",
                  "name": "Plane_76",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -23.700464063959863,
                      "y": 5.684341886080802e-14,
                      "z": -102.04986572265625
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "buufsqk2",
                  "_$type": "Sprite3D",
                  "name": "Plane_77",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "dz45whf7",
                  "_$type": "Sprite3D",
                  "name": "Plane_78",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "kimcb9f3",
                  "_$type": "Sprite3D",
                  "name": "Plane_79",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "cx2ngnyv",
                  "_$type": "Sprite3D",
                  "name": "Plane_80",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "7yebhwel",
                  "_$type": "Sprite3D",
                  "name": "Plane_81",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "w2sllj7f",
                  "_$type": "Sprite3D",
                  "name": "Plane_82",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "392ea2w2",
                  "_$type": "Sprite3D",
                  "name": "Plane_83",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "vfm2qnaq",
                  "_$type": "Sprite3D",
                  "name": "Plane_84",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "f353edbm",
                  "_$type": "Sprite3D",
                  "name": "Plane_85",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "oc2l9lu0",
                  "_$type": "Sprite3D",
                  "name": "Plane_86",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "zdnz1ywv",
                  "_$type": "Sprite3D",
                  "name": "Plane_87",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "6bo4mb1t",
                  "_$type": "Sprite3D",
                  "name": "Plane_88",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "6oqw4gyz",
                  "_$type": "Sprite3D",
                  "name": "Plane_91",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -8.187761122065346,
                      "y": 5.684341886080802e-14,
                      "z": -102.04986572265625
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "1yo94yde",
                  "_$type": "Sprite3D",
                  "name": "Plane_92",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "rlfrchtd",
                  "_$type": "Sprite3D",
                  "name": "Plane_93",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "14l0c95v",
                  "_$type": "Sprite3D",
                  "name": "Plane_94",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "g9zu3t3k",
                  "_$type": "Sprite3D",
                  "name": "Plane_95",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "28e6hmer",
                  "_$type": "Sprite3D",
                  "name": "Plane_96",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "evw4bbep",
                  "_$type": "Sprite3D",
                  "name": "Plane_97",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "kwgpjlmz",
                  "_$type": "Sprite3D",
                  "name": "Plane_99",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "txu2uaze",
                  "_$type": "Sprite3D",
                  "name": "Plane_100",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "tnqfb5eo",
                  "_$type": "Sprite3D",
                  "name": "Plane_101",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "0jh31fuo",
                  "_$type": "Sprite3D",
                  "name": "Plane_102",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "uzizj9cg",
                  "_$type": "Sprite3D",
                  "name": "Plane_103",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "27mkwra2",
                  "_$type": "Sprite3D",
                  "name": "Plane_104",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "5o0czbq6",
                  "_$type": "Sprite3D",
                  "name": "Plane_106",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.528650468510829,
                      "y": 5.684341886080802e-14,
                      "z": -102.04986572265625
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "fe7cilq2",
                  "_$type": "Sprite3D",
                  "name": "Plane_107",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ya0mv9u2",
                  "_$type": "Sprite3D",
                  "name": "Plane_108",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "0lw37m3m",
                  "_$type": "Sprite3D",
                  "name": "Plane_109",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "g8o8a8ug",
                  "_$type": "Sprite3D",
                  "name": "Plane_110",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "nw05mv18",
                  "_$type": "Sprite3D",
                  "name": "Plane_111",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "59mkko1s",
                  "_$type": "Sprite3D",
                  "name": "Plane_112",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "zuszvfjw",
                  "_$type": "Sprite3D",
                  "name": "Plane_113",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "bj21fj4c",
                  "_$type": "Sprite3D",
                  "name": "Plane_114",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "lt2eevp8",
                  "_$type": "Sprite3D",
                  "name": "Plane_115",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "syo7tb0x",
                  "_$type": "Sprite3D",
                  "name": "Plane_116",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "y19rawux",
                  "_$type": "Sprite3D",
                  "name": "Plane_117",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "qma4j65m",
                  "_$type": "Sprite3D",
                  "name": "Plane_118",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "zfs41whp",
                  "_$type": "Sprite3D",
                  "name": "Plane_121",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 20.698788317710026,
                      "y": 5.684341886080802e-14,
                      "z": -102.04986572265625
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "hm3xfb1z",
                  "_$type": "Sprite3D",
                  "name": "Plane_122",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "m8lmhoxw",
                  "_$type": "Sprite3D",
                  "name": "Plane_123",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "8u6qbxmt",
                  "_$type": "Sprite3D",
                  "name": "Plane_124",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "obnfld9f",
                  "_$type": "Sprite3D",
                  "name": "Plane_125",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "u5ms7gpb",
                  "_$type": "Sprite3D",
                  "name": "Plane_126",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "xpsmyft5",
                  "_$type": "Sprite3D",
                  "name": "Plane_127",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "5tv97hfw",
                  "_$type": "Sprite3D",
                  "name": "Plane_129",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "dd30kh0l",
                  "_$type": "Sprite3D",
                  "name": "Plane_130",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "wkffkwfi",
                  "_$type": "Sprite3D",
                  "name": "Plane_131",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "di41yn7d",
                  "_$type": "Sprite3D",
                  "name": "Plane_132",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "tfwvn4ne",
                  "_$type": "Sprite3D",
                  "name": "Plane_133",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "8lzmhmwl",
                  "_$type": "Sprite3D",
                  "name": "Plane_134",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "v2qbtwex",
                  "_$type": "Sprite3D",
                  "name": "Plane_136",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 34.41520372298346,
                      "y": 5.684341886080802e-14,
                      "z": -102.04986572265625
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "gtvsg3ya",
                  "_$type": "Sprite3D",
                  "name": "Plane_137",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "uk0ep7hg",
                  "_$type": "Sprite3D",
                  "name": "Plane_138",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "89kbl4ko",
                  "_$type": "Sprite3D",
                  "name": "Plane_139",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "e4cojy49",
                  "_$type": "Sprite3D",
                  "name": "Plane_140",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ldkwtmk4",
                  "_$type": "Sprite3D",
                  "name": "Plane_141",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "sop6mr5m",
                  "_$type": "Sprite3D",
                  "name": "Plane_142",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "l3e48mkx",
                  "_$type": "Sprite3D",
                  "name": "Plane_143",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "q9qng9cu",
                  "_$type": "Sprite3D",
                  "name": "Plane_144",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "q9sjknxw",
                  "_$type": "Sprite3D",
                  "name": "Plane_145",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "zhzn1fs3",
                  "_$type": "Sprite3D",
                  "name": "Plane_146",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "1do2x0lc",
                  "_$type": "Sprite3D",
                  "name": "Plane_147",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "mjxzwapa",
                  "_$type": "Sprite3D",
                  "name": "Plane_148",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "cnzhkmkj",
                  "_$type": "Sprite3D",
                  "name": "Plane_151",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 49.92790666487801,
                      "y": 5.684341886080802e-14,
                      "z": -102.04986572265625
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "0vi0bcqd",
                  "_$type": "Sprite3D",
                  "name": "Plane_152",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "w3k3xs4z",
                  "_$type": "Sprite3D",
                  "name": "Plane_153",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "53lpkl9n",
                  "_$type": "Sprite3D",
                  "name": "Plane_154",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "588ffxpz",
                  "_$type": "Sprite3D",
                  "name": "Plane_155",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "10fpsnlv",
                  "_$type": "Sprite3D",
                  "name": "Plane_156",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "fcvwo0b3",
                  "_$type": "Sprite3D",
                  "name": "Plane_157",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "o7g1he74",
                  "_$type": "Sprite3D",
                  "name": "Plane_159",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "nzs3veo5",
                  "_$type": "Sprite3D",
                  "name": "Plane_160",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "nnapax09",
                  "_$type": "Sprite3D",
                  "name": "Plane_161",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "lefzmuu6",
                  "_$type": "Sprite3D",
                  "name": "Plane_162",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "7rmbx6r7",
                  "_$type": "Sprite3D",
                  "name": "Plane_163",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "f3hhxnxi",
                  "_$type": "Sprite3D",
                  "name": "Plane_164",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "8bn2v5zz",
                  "_$type": "Sprite3D",
                  "name": "Plane_166",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 63.64431825545418,
                      "y": 5.684341886080802e-14,
                      "z": -102.04986572265625
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "hpxe837y",
                  "_$type": "Sprite3D",
                  "name": "Plane_167",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "4dk99o6h",
                  "_$type": "Sprite3D",
                  "name": "Plane_168",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "o87qzm38",
                  "_$type": "Sprite3D",
                  "name": "Plane_169",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "bxty7d0z",
                  "_$type": "Sprite3D",
                  "name": "Plane_170",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "jtf95opb",
                  "_$type": "Sprite3D",
                  "name": "Plane_171",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "gdyz5xvy",
                  "_$type": "Sprite3D",
                  "name": "Plane_172",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "bm9yzamo",
                  "_$type": "Sprite3D",
                  "name": "Plane_173",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "cooa7n9p",
                  "_$type": "Sprite3D",
                  "name": "Plane_174",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "as3hobo7",
                  "_$type": "Sprite3D",
                  "name": "Plane_175",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "swreakzb",
                  "_$type": "Sprite3D",
                  "name": "Plane_176",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "piotoqh9",
                  "_$type": "Sprite3D",
                  "name": "Plane_177",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "xt5h75fc",
                  "_$type": "Sprite3D",
                  "name": "Plane_178",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "vixilmu2",
                  "_$type": "Sprite3D",
                  "name": "Plane_179",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 66.60071077580409,
                      "z": 90.24797058105469
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 12,
                      "y": 1,
                      "z": 12
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "h7qk5vrk",
                  "_$type": "Sprite3D",
                  "name": "Plane_181",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.56432786849129,
                      "y": 5.684341886080802e-14,
                      "z": -102.04986572265625
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "l24qzogf",
                  "_$type": "Sprite3D",
                  "name": "Plane_182",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "1tds41yz",
                  "_$type": "Sprite3D",
                  "name": "Plane_183",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "sawctcyy",
                  "_$type": "Sprite3D",
                  "name": "Plane_184",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "5w5ssy6s",
                  "_$type": "Sprite3D",
                  "name": "Plane_185",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "qf725ife",
                  "_$type": "Sprite3D",
                  "name": "Plane_186",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ecindnlo",
                  "_$type": "Sprite3D",
                  "name": "Plane_187",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "2p8535kx",
                  "_$type": "Sprite3D",
                  "name": "Plane_189",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "0rx15893",
                  "_$type": "Sprite3D",
                  "name": "Plane_190",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "mplbalp9",
                  "_$type": "Sprite3D",
                  "name": "Plane_191",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "r6kf4vqf",
                  "_$type": "Sprite3D",
                  "name": "Plane_192",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "djy1ppq1",
                  "_$type": "Sprite3D",
                  "name": "Plane_193",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "t5wxbjjc",
                  "_$type": "Sprite3D",
                  "name": "Plane_194",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "nqlmc1aj",
                  "_$type": "Sprite3D",
                  "name": "Plane_195",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 80.56432786849129,
                      "y": 5.684341886080802e-14,
                      "z": 90.24797058105469
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 12,
                      "y": 1,
                      "z": 12
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "3xdey8vp",
                  "_$type": "Sprite3D",
                  "name": "Plane_196",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 107.20601331389949,
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "d0oyiydy",
                  "_$type": "Sprite3D",
                  "name": "Plane_197",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 107.22658979095027,
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ood0dj5g",
                  "_$type": "Sprite3D",
                  "name": "Plane_198",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 107.20601331389949,
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "mtem595i",
                  "_$type": "Sprite3D",
                  "name": "Plane_199",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 107.22658979095027,
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "dytfa6dm",
                  "_$type": "Sprite3D",
                  "name": "Plane_200",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 107.20601331389949,
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "iepohv9k",
                  "_$type": "Sprite3D",
                  "name": "Plane_201",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 107.22658979095027,
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "5oks4uyc",
                  "_$type": "Sprite3D",
                  "name": "Plane_202",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 107.20601331389949,
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "adiqiuf9",
                  "_$type": "Sprite3D",
                  "name": "Plane_203",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 107.22658979095027,
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "1jaxtixj",
                  "_$type": "Sprite3D",
                  "name": "Plane_204",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 112.72546396445841,
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "qazw5wd3",
                  "_$type": "Sprite3D",
                  "name": "Plane_205",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 112.7460404415092,
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "klwris40",
                  "_$type": "Sprite3D",
                  "name": "Plane_206",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 109.47600182645907,
                      "y": 3.552713678800501e-15,
                      "z": 82.42082074060879
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 12,
                      "y": 1,
                      "z": 12
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "urvuhzyx",
                  "_$type": "Sprite3D",
                  "name": "Plane_207",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 112.72546396445841,
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "3h6ncist",
                  "_$type": "Sprite3D",
                  "name": "Plane_208",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.80545053672404,
                      "y": 5.684341886080802e-14,
                      "z": -102.04986572265625
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "de3ifymu",
                  "_$type": "Sprite3D",
                  "name": "Plane_209",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "4l8c4w7c",
                  "_$type": "Sprite3D",
                  "name": "Plane_210",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "dwxmudzr",
                  "_$type": "Sprite3D",
                  "name": "Plane_211",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "wvvrken9",
                  "_$type": "Sprite3D",
                  "name": "Plane_212",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "nj422240",
                  "_$type": "Sprite3D",
                  "name": "Plane_213",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "887nabst",
                  "_$type": "Sprite3D",
                  "name": "Plane_214",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "ddoyfkui",
                  "_$type": "Sprite3D",
                  "name": "Plane_215",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "n0pg1g1o",
                  "_$type": "Sprite3D",
                  "name": "Plane_216",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "17ldytid",
                  "_$type": "Sprite3D",
                  "name": "Plane_217",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "04h5u3mz",
                  "_$type": "Sprite3D",
                  "name": "Plane_218",
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "5cr30tpf",
                  "_$type": "Sprite3D",
                  "name": "Plane_219",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.80545053672404,
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "p6wcbt22",
                  "_$type": "Sprite3D",
                  "name": "Plane_220",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.82602701377482,
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "xz0snf0m",
                  "_$type": "Sprite3D",
                  "name": "Plane_221",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 95.80545053672404,
                      "y": 5.684341886080802e-14,
                      "z": 90.24797058105469
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 12,
                      "y": 1,
                      "z": 12
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "sn2g1fpr",
                  "_$type": "Sprite3D",
                  "name": "Plane_222",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 112.7460404415092,
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "y0bzz647",
                  "_$type": "Sprite3D",
                  "name": "Plane_223",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 112.72546396445841,
                      "y": 5.684341886080802e-14,
                      "z": -102.04986572265625
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "51x7a4zl",
                  "_$type": "Sprite3D",
                  "name": "Plane_224",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -114.48721969795517,
                      "y": 1.1368683772161603e-13,
                      "z": -54.311741704975226
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "7m99xzw9",
                  "_$type": "Sprite3D",
                  "name": "Plane_225",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -114.50779724121094,
                      "z": -40.405286663479295
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "2yzh8z9l",
                  "_$type": "Sprite3D",
                  "name": "Plane_226",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -104.70484306248824,
                      "y": 1.1368683772161603e-13,
                      "z": 2.1140646527956406
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "mq7fv0to",
                  "_$type": "Sprite3D",
                  "name": "Plane_227",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -104.72541809082031,
                      "z": 16.353894912928187
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "m2w7g0w0",
                  "_$type": "Sprite3D",
                  "name": "Plane_228",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -114.74242348832985,
                      "y": 1.1368683772161603e-13,
                      "z": 50.364484671905004
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "qu3lj4cx",
                  "_$type": "Sprite3D",
                  "name": "Plane_229",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -114.76300048828125,
                      "z": 63.35741893710069
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "c07476fa-0d5f-49b6-a2cb-dd3f0e15a138",
                      "scriptPath": "../src/Game/Scene/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                },
                {
                  "_$id": "dhahwha3",
                  "_$type": "Sprite3D",
                  "name": "Plane_230",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -89.98553438746987,
                      "z": 56.27814168687094
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "bgf1599u",
                  "_$type": "Sprite3D",
                  "name": "Plane_231",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -37.90228959520016,
                      "z": 56.278141021728516
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "873yvumn",
                  "_$type": "Sprite3D",
                  "name": "Plane_232",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 21.260230753617883,
                      "z": 56.278141021728516
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "1i73qrej",
                  "_$type": "Sprite3D",
                  "name": "Plane_233",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 66.26420005831602,
                      "z": 56.278141021728516
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "13tt65r2",
                  "_$type": "Sprite3D",
                  "name": "Plane_234",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 101.15491587375318,
                      "z": 56.278141021728516
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "hv379ybr",
                  "_$type": "Sprite3D",
                  "name": "Plane_235",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -89.98553466796875,
                      "z": 8.240194202012688
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "d6ohs0om",
                  "_$type": "Sprite3D",
                  "name": "Plane_236",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -37.90229034423828,
                      "z": 8.240194202012688
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "12mu2knk",
                  "_$type": "Sprite3D",
                  "name": "Plane_237",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 21.260231018066406,
                      "z": 8.240194202012688
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "kcod0hvm",
                  "_$type": "Sprite3D",
                  "name": "Plane_238",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 66.26419830322266,
                      "z": 8.240194202012688
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "q54sxnsl",
                  "_$type": "Sprite3D",
                  "name": "Plane_239",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 101.15491485595703,
                      "z": 8.240194202012688
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "cpor1m3f",
                  "_$type": "Sprite3D",
                  "name": "Plane_240",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -89.98553466796875,
                      "z": -45.865703676264445
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "fkbpthm5",
                  "_$type": "Sprite3D",
                  "name": "Plane_241",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -37.90229034423828,
                      "z": -45.865703676264445
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "0fvl06b4",
                  "_$type": "Sprite3D",
                  "name": "Plane_242",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 21.260231018066406,
                      "z": -45.865703676264445
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "pok0ag4c",
                  "_$type": "Sprite3D",
                  "name": "Plane_243",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 66.26419830322266,
                      "z": -45.865703676264445
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "qbyq72yu",
                  "_$type": "Sprite3D",
                  "name": "Plane_244",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 101.15491485595703,
                      "z": -45.865703676264445
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "yss4wv63",
                  "_$type": "Sprite3D",
                  "name": "Plane_245",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -89.98553466796875,
                      "z": -96.9376259910935
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "xwd30r8b",
                  "_$type": "Sprite3D",
                  "name": "Plane_246",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -37.90229034423828,
                      "z": -96.9376259910935
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "jx72527o",
                  "_$type": "Sprite3D",
                  "name": "Plane_247",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 21.260231018066406,
                      "z": -96.9376259910935
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "kpsyv65g",
                  "_$type": "Sprite3D",
                  "name": "Plane_248",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 66.26419830322266,
                      "z": -96.9376259910935
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
                  "_$id": "yje34klx",
                  "_$type": "Sprite3D",
                  "name": "Plane_249",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 101.15491485595703,
                      "z": -96.9376259910935
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 1,
                      "z": 10
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
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
              "_$id": "412jmm0p",
              "_$type": "Sprite3D",
              "name": "PlayerBorn",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -37.176753997802734,
                  "z": 66.65020751953125
                }
              },
              "_$child": [
                {
                  "_$id": "0a2fxf1p",
                  "_$type": "Sprite3D",
                  "name": "Plane",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -14.11387160952755,
                      "z": -10.904087093453732
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
                  "_$id": "bu0lqa9v",
                  "_$type": "Sprite3D",
                  "name": "Plane_1",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 39.78463752429185,
                      "z": -10.696107729173171
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
                  "_$id": "fe6qdiu8",
                  "_$type": "Sprite3D",
                  "name": "Plane_2",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 92.46849360444234,
                      "z": -10.785928027737967
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
                  "_$id": "323vixg0",
                  "_$type": "Sprite3D",
                  "name": "Plane_3",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 92.17657758713028,
                      "z": -57.96933888524299
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
                  "_$id": "ynt4trcw",
                  "_$type": "Sprite3D",
                  "name": "Plane_4",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 103.1571159362793,
                      "y": 3.552713678800501e-15,
                      "z": -113.82696039905804
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
                  "_$id": "nzwigtrc",
                  "_$type": "Sprite3D",
                  "name": "Plane_5",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 47.91612751193441,
                      "z": -113.82695770263672
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
                  "_$id": "yobme45u",
                  "_$type": "Sprite3D",
                  "name": "Plane_6",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 64.95953987219255,
                      "z": -57.89436721801758
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
                  "_$id": "6sasrnn7",
                  "_$type": "Sprite3D",
                  "name": "Plane_7",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 11.30216287235437,
                      "z": -57.89436721801758
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
                  "_$id": "5skiske5",
                  "_$type": "Sprite3D",
                  "name": "Plane_8",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -34.973387086787085,
                      "z": -57.89436721801758
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
                  "_$id": "znx4vcm7",
                  "_$type": "Sprite3D",
                  "name": "Plane_9",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -33.91090686402174,
                      "z": -11.339698791503906
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
                  "_$id": "57b04rwd",
                  "_$type": "Sprite3D",
                  "name": "Plane_10",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.49408129902232645,
                      "z": -147.65444946289062
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
                  "_$id": "8oli70tw",
                  "_$type": "Sprite3D",
                  "name": "Plane_11",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.26456950497611587,
                      "z": -85.3582763671875
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
                  "_$id": "61lsto85",
                  "_$type": "Sprite3D",
                  "name": "Plane_12",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -52.51440426912835,
                      "z": -113.18417315912689
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
                  "_$id": "v87ku6cu",
                  "_$type": "Sprite3D",
                  "name": "Plane_13",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 136.9846083463235,
                      "y": 3.552713678800501e-15,
                      "z": -85.3582763671875
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
                  "_$id": "cp0n3my0",
                  "_$type": "Sprite3D",
                  "name": "Plane_14",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -21.43525349719716,
                      "y": 3.552713678800501e-15,
                      "z": -133.92250055443304
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
              "_$id": "uf87hm7x",
              "_$type": "Sprite3D",
              "name": "ItemBorn",
              "_$child": [
                {
                  "_$id": "pso2g1ds",
                  "_$type": "Sprite3D",
                  "name": "Plane",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 103.25308954226469,
                      "y": 3.552713678800501e-15,
                      "z": -103.77513923867403
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
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
                  "_$id": "fck4vxl6",
                  "_$type": "Sprite3D",
                  "name": "Plane_1",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -106.39864550473297,
                      "y": 3.552713678800501e-15,
                      "z": 103.31234442806402
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
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
                  "_$id": "bwa1clmx",
                  "_$type": "Sprite3D",
                  "name": "Plane_2",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -97.6329056946572,
                      "y": 3.552713678800501e-15,
                      "z": -103.00101172878314
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
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
                  "_$id": "gqsywxom",
                  "_$type": "Sprite3D",
                  "name": "Plane_3",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 108.28491802607742,
                      "y": 3.552713678800501e-15,
                      "z": 94.0143389076466
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
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
                  "_$id": "hddy5r5v",
                  "_$type": "Sprite3D",
                  "name": "Plane_4",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -70.92551564185051,
                      "y": 3.552713678800501e-15,
                      "z": -17.45997054003343
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
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
                  "_$id": "isvouva0",
                  "_$type": "Sprite3D",
                  "name": "Plane_5",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 51.3865755850201,
                      "y": 3.552713678800501e-15,
                      "z": -15.911716221848497
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
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
                  "_$id": "hn51zz00",
                  "_$type": "Sprite3D",
                  "name": "Plane_6",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 20.808551339951034,
                      "y": 3.552713678800501e-15,
                      "z": 33.6324196154227
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
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
                  "_$id": "y0eo2hkq",
                  "_$type": "Sprite3D",
                  "name": "Plane_7",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -23.703759375322846,
                      "y": 3.552713678800501e-15,
                      "z": -65.84291613012499
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
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
                  "_$id": "87dm9hh0",
                  "_$type": "Sprite3D",
                  "name": "Plane_8",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -75.18321566679766,
                      "y": 3.552713678800501e-15,
                      "z": 33.63241732030915
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
                      "_$type": "MeshFilter"
                    },
                    {
                      "_$type": "MeshRenderer",
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