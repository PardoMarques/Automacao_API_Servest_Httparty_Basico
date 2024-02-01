            #language: pt

            @regression_testing @usuarios
            Funcionalidade: Validar endpoints Usuarios

            #################################
            ##################### SMOKE TESTS
            #################################

            # Verbo: POST
            #     * path: "/usuarios"
            #     * descrição: Criar um novo usuario
            @smoke_testing
            Cenário: Criar um novo usuário
            Dado API1_Login_POST - realizo o login
            E API1_verbos_basicos_POST - cadastro um novo usuario - conforme a tabela
            | nome          | email          | password     | administrador |
            | "random_name" | "random_email" | "random_num" | "true"        |
            E API1_verbos_basicos_GET - pesquiso o usuario pelo Id
            E API1_Usuarios - Validar se os dados correspondem ao cadastro


            # Verbo: PUT
            #     * path: "/usuarios"
            #     * descrição: "Atualizar"(deveria ser patch) um usuario
            @smoke_testing
            Cenário: Atualizar um usuário
            Dado API1_Login_POST - realizo o login
            E API1_verbos_basicos_POST - cadastro um novo usuario - conforme a tabela
            | nome          | email          | password     | administrador |
            | "random_name" | "random_email" | "random_num" | "true"        |
            E API1_verbos_basicos_GET - pesquiso o usuario pelo Id
            E API1_Usuarios - Validar se os dados correspondem ao cadastro
            E API1_verbos_basicos_PUT - atualizo um novo usuario - conforme a tabela
            | nome          | email          | password     | administrador |
            | "random_name" | "random_email" | "random_num" | "true"        |
            E API1_verbos_basicos_GET - pesquiso o usuario pelo Id
            E API1_Usuarios - Validar se os dados correspondem a atualização


            @temp
            Esquema do Cenário: Tentar criar um usuário por diversas formas de payload
            Dado API1_Login_POST - realizo o login
            E API1_verbos_basicos_POST - cadastro um novo usuario - recebo o erro <erro_esperado>
            | delete_nome | delete_email | password   | administrador   |
            | <nome>      | <email>      | <password> | <administrador> |

            Exemplos:
            | nome              | email             | password     | administrador | erro_esperado |
            | "sem informacoes" | "random_email"    | "random_num" | "true"        | 400           |
            | "sem o objeto"    | "random_email"    | "random_num" | "true"        | 400           |
            | "random_name"     | "sem informacoes" | "random_num" | "true"        | 400           |
            | "random_name"     | "sem o objeto"    | "random_num" | "true"        | 400           |