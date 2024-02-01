#language: pt

@usuarios
Funcionalidade: Validar endpoints users

Cenário: Cadastrar um novo usuário
Quando cadastro um novo usuario
Então o JSONSchema para "cadastro" é respeitado
Então recebo o statusCode 201


Cenário: Adicionar um usuário
Quando adiciono um novo usuario
Então o JSONSchema para "adição" é respeitado
Então recebo o statusCode 200


Cenário: Pesquiso um usuário
Quando pesquiso um usuario
Então o JSONSchema para "pesquisa" é respeitado
Então recebo o statusCode 200


Cenário: Deletar um usuário
Quando deleto um usuario
Então recebo o statusCode 200