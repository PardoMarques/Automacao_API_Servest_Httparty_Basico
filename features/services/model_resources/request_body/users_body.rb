def post_users_body
    payload = {
        "title": "post desafio meutudo",
        "body": "post teste",
        "userId": 1,
      }
    payload.to_json
end

def put_users_body
    payload = {
        "id": 1,
        "title": "put desafio meutudo",
        "body": "put teste",
        "userId": 1,
      }
    payload.to_json
end