def get_users_schema
  payload = {
    "type": "object",
    "properties": {
      "id": {
        "type": "number"
      },
      "name": {
        "type": "string"
      },
      "username": {
        "type": "string"
      },
      "email": {
        "type": "string"
      },
      "address": {
        "type": "object",
        "properties": {
          "street": {
            "type": "string"
          },
          "suite": {
            "type": "string"
          },
          "city": {
            "type": "string"
          },
          "zipcode": {
            "type": "string"
          },
          "geo": {
            "type": "object",
            "properties": {
              "lat": {
                "type": "string"
              },
              "lng": {
                "type": "string"
              }
            },
            "required": [
              "lat",
              "lng"
            ]
          }
        },
        "required": [
          "street",
          "suite",
          "city",
          "zipcode",
          "geo"
        ]
      },
      "phone": {
        "type": "string"
      },
      "website": {
        "type": "string"
      },
      "company": {
        "type": "object",
        "properties": {
          "name": {
            "type": "string"
          },
          "catchPhrase": {
            "type": "string"
          },
          "bs": {
            "type": "string"
          }
        },
        "required": [
          "name",
          "catchPhrase",
          "bs"
        ]
      }
    },
    "required": [
      "id",
      "name",
      "username",
      "email",
      "address",
      "phone",
      "website",
      "company"
    ]
  }
  payload.to_json
end

def post_users_schema
    payload = {
      "type": "object",
      "properties": {
        "title": {
          "type": "string"
        },
        "body": {
          "type": "string"
        },
        "userId": {
          "type": "number"
        },
        "id": {
          "type": "number"
        }
      },
      "required": [
        "title",
        "body",
        "userId",
        "id"
      ]
    }
    payload.to_json
end

def put_users_schema
  payload = {
    "type": "object",
    "properties": {
      "id": {
        "type": "number"
      },
      "title": {
        "type": "string"
      },
      "body": {
        "type": "string"
      },
      "userId": {
        "type": "number"
      }
    },
    "required": [
      "id",
      "title",
      "body",
      "userId"
    ]
  }
  payload.to_json
end
