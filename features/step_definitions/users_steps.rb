require "./features/services/model_resources/response_schema/users_schema.rb"
require "./features/services/model_resources/request_body/users_body.rb"

Quando('cadastro um novo usuario') do
  @request_body = JSON.parse(post_users_body)

  @response = users_request.post_users(@request_body.to_json)
  log %{
    RESPONSE: #{@response}
  }
end

Quando('adiciono um novo usuario') do
  @request_body = JSON.parse(post_users_body)

  @response = users_request.put_users(@request_body.to_json, 1)
  log %{
    RESPONSE: #{@response}
  }
end

Quando('pesquiso um usuario') do
  @response = users_request.get_users(1)
  log %{
    RESPONSE: #{@response}
  }
end

Quando('deleto um usuario') do
  @response = users_request.delete_users(1)
  log %{
    RESPONSE: #{@response}
  }
end

Então('o JSONSchema para {string} é respeitado') do |verbo|
  case verbo
    when "cadastro"
      schema = JSON.parse(post_users_schema)
    when "adição"
      schema = JSON.parse(put_users_schema)
    when "pesquisa"
      schema = JSON.parse(get_users_schema)
  end

  resultSchema = JSON::Validator.validate(schema, @response.parsed_response)
  expect(resultSchema).to eql(true)
end

Então('recebo o statusCode {int}') do |statusCode|
  expect(@response.code).to eql(statusCode)
end