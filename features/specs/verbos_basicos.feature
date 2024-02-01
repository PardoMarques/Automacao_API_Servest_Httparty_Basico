            #language: pt

            @regression_testing @usuarios
            Funcionalidade: Validar endpoints verbos_basicos

            #################################
            ##################### SMOKE TESTS
            #################################

            # Verbo: POST
            #     * path: "/usuarios"
            #     * descrição: Criar um novo usuario
            @smoke_testing1
            Cenário: Criar um novo usuário
            E API1_verbos_basicos_POST - cadastro um novo usuario - conforme a tabela
            | title | body  | userId |
            | "aaa" | "bbb" | 1      |
            E API1_verbos_basicos_GET - pesquiso o usuario pelo Id
            E API1_verbos_basicos - Validar se os dados correspondem ao cadastro


            # Verbo: DELETE
            #     * path: "/usuarios"
            #     * descrição: Criar um novo usuario
            @smoke_testing
            Cenário: Criar um novo usuário
            E API1_verbos_basicos_POST - cadastro um novo usuario - conforme a tabela
            | title | body  | userId |
            | "aaa" | "bbb" | 1      |
            E API1_verbos_basicos_GET - pesquiso o usuario pelo Id
            E API1_verbos_basicos - Validar se os dados correspondem ao cadastro


            # Verbo: PUT
            #     * path: "/usuarios"
            #     * descrição: "Atualizar"(deveria ser patch) um usuario
            @smoke_testing
            Cenário: Atualizar um usuário
            E API1_verbos_basicos_POST - cadastro um novo usuario - conforme a tabela
            | nome          | email          | password     | administrador |
            | "random_name" | "random_email" | "random_num" | "true"        |
            E API1_verbos_basicos_GET - pesquiso o usuario pelo Id
            E API1_verbos_basicos - Validar se os dados correspondem ao cadastro
            E API1_verbos_basicos_PUT - atualizo um novo usuario - conforme a tabela
            | nome          | email          | password     | administrador |
            | "random_name" | "random_email" | "random_num" | "true"        |
E API1_verbos_basicos_GET - pesquiso o usuario pelo Id
E API1_verbos_basicos - Validar se os dados correspondem a atualização


