def post_verbos_basicos_body
    payload = {
        "title": "foo",
        "body": "bar",
        "userId": 1,
      }
    payload.to_json
end

def put_verbos_basicos_body
    payload = {
        "id": 1,
        "title": "foo",
        "body": "bar",
        "userId": 1,
      }
    payload.to_json
end