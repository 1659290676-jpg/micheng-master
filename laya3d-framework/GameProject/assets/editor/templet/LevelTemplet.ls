{
  "_$ver": 1,
  "_$id": "k3ihnwsz",
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
      "fogColor": {
        "_$type": "Color",
        "r": 0.7019607843137254,
        "g": 0.7019607843137254,
        "b": 0.7019607843137254
      },
      "_$child": [
        {
          "_$id": "v3s2opq6",
          "_$type": "Camera",
          "name": "Main Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 7.457133079282734,
              "y": 106.9983522447561,
              "z": 45.32937549219479
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.5169068966820246,
              "y": -1.4093029526479603e-16,
              "z": -2.9350328570966e-17,
              "w": 0.8560416229147733
            }
          },
          "fieldOfView": 45,
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
          "_$id": "5ucp0q1b",
          "_$type": "Sprite3D",
          "name": "{name}",
          "_$comp": [
            {
              "_$type": "e8f192ec-d9e8-4176-864f-af4349fa93bd",
              "scriptPath": "../src/Components/Level_Scene.ts",
              "owner": {
                "_$ref": "5ucp0q1b"
              },
              "npcBorns": [],
              "playerBorns": [],
              "itemBorns": [],
              "buildings": []
            }
          ],
          "_$child": [
            {
              "_$id": "2zemrpqm",
              "_$type": "Sprite3D",
              "name": "Light",
              "_$child": [
                {
                  "_$id": "gnrrghw3",
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
                      "x": -0.42261826174069955,
                      "y": -3.7239367515606707e-9,
                      "z": -7.98600813526174e-9,
                      "w": 0.9063077870366499
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
              "_$id": "dyz3jqz0",
              "_$type": "Sprite3D",
              "name": "Range",
              "_$child": [
                {
                  "_$id": "uwt9m6g0",
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
                            "size": {
                              "_$type": "Vector3",
                              "x": 250,
                              "y": 1,
                              "z": 240
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
              "_$id": "kmchlq97",
              "_$type": "Sprite3D",
              "name": "Ground",
              "isStatic": true
            },
            {
              "_$id": "4h4kdssa",
              "_$type": "Sprite3D",
              "name": "Npcs"
            },
            {
              "_$id": "pk0rpkle",
              "_$type": "Sprite3D",
              "name": "Players"
            },
            {
              "_$id": "dnl29m4u",
              "_$type": "Sprite3D",
              "name": "Building",
              "layer": 3
            },
            {
              "_$id": "8nh10lup",
              "_$type": "Sprite3D",
              "name": "NpcBorn",
              "_$child": [
                {
                  "_$id": "ue6ltn8e",
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
                      "scriptPath": "../src/Components/Point_NpcBorn.ts",
                      "type": 1
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "uzyyrdwi",
              "_$type": "Sprite3D",
              "name": "PlayerBorn",
              "_$child": [
                {
                  "_$id": "jpb6lq4b",
                  "_$type": "Sprite3D",
                  "name": "Plane",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 3.552713678800501e-15,
                      "z": -10
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
                      "scriptPath": "../src/Components/Point_PlayerBorn.ts"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "b752e14u",
              "_$type": "Sprite3D",
              "name": "ItemBorn",
              "_$child": [
                {
                  "_$id": "p22ljcnf",
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
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}