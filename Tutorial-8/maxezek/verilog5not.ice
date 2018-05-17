{
  "version": "1.1",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "ae2a86d4-9717-46c1-9b09-e3c7e95666bb",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "LED7",
                "value": "104"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 744,
            "y": 96
          }
        },
        {
          "id": "8cda72ca-61d0-4a3f-beee-4276af909747",
          "type": "basic.input",
          "data": {
            "name": "Boton",
            "pins": [
              {
                "index": "0",
                "name": "SW1",
                "value": "10"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 80,
            "y": 184
          }
        },
        {
          "id": "0080b305-adda-4995-a313-ebf0f29c3590",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "LED0",
                "value": "95"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 696,
            "y": 200
          }
        },
        {
          "id": "3648d114-a308-408b-892a-3ff1ff27f1f0",
          "type": "basic.input",
          "data": {
            "name": "Boton",
            "pins": [
              {
                "index": "0",
                "name": "SW2",
                "value": "11"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 96,
            "y": 296
          }
        },
        {
          "id": "1421c043-f47b-4a8b-8032-e9227776f3a6",
          "type": "basic.code",
          "data": {
            "code": "assign out = ~in;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "in"
                }
              ],
              "out": [
                {
                  "name": "out"
                }
              ]
            }
          },
          "position": {
            "x": 448,
            "y": 24
          },
          "size": {
            "width": 192,
            "height": 128
          }
        },
        {
          "id": "5b8da6cf-3f3f-4ee8-96c6-fb4c00221ed6",
          "type": "basic.code",
          "data": {
            "code": "assign k0 = ~i;\nassign k1 = i;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "i"
                }
              ],
              "out": [
                {
                  "name": "k1"
                },
                {
                  "name": "k0"
                }
              ]
            }
          },
          "position": {
            "x": 312,
            "y": 280
          },
          "size": {
            "width": 192,
            "height": 128
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "8cda72ca-61d0-4a3f-beee-4276af909747",
            "port": "out"
          },
          "target": {
            "block": "1421c043-f47b-4a8b-8032-e9227776f3a6",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "3648d114-a308-408b-892a-3ff1ff27f1f0",
            "port": "out"
          },
          "target": {
            "block": "5b8da6cf-3f3f-4ee8-96c6-fb4c00221ed6",
            "port": "i"
          }
        },
        {
          "source": {
            "block": "1421c043-f47b-4a8b-8032-e9227776f3a6",
            "port": "out"
          },
          "target": {
            "block": "ae2a86d4-9717-46c1-9b09-e3c7e95666bb",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "8cda72ca-61d0-4a3f-beee-4276af909747",
            "port": "out"
          },
          "target": {
            "block": "0080b305-adda-4995-a313-ebf0f29c3590",
            "port": "in"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 0,
        "y": 0
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}