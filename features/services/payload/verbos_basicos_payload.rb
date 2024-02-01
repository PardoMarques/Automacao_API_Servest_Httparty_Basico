Dir[File.join(File.dirname(__FILE__), "/features/services/models/*_body.rb")].each{|file| require file}

class VerbosBasicosPayload
    attr_accessor :body, :tabela_gherkin

    def initialize
        self.body = nil
        self.tabela_gherkin = nil
    end

    # BASE PAYLOAD

        # POST

            def create_post_verbos_basicos_body()
                if self.body == nil
                    self.body = JSON.parse(post_verbos_basicos_body)
                end
            end

            def create_post_verbos_basicos_body_default()
                self.body = JSON.parse(post_verbos_basicos_body)
            end

        # END

        # PUT

            def create_put_verbos_basicos_body()
                self.body = JSON.parse(post_verbos_basicos_body)
            end
        
        # END

    # END


    def edit_post_verbos_basicos_body_by_table(table)
        self.tabela_gherkin = table

        self.tabela_gherkin.each do |chave, valor|

        case chave

            # UPDATE KEY

                when "title"
                    update_title(valor)

                when "body"
                    update_body(valor)

                when "userId"
                    update_userId(valor)
                
            # END

            # CLEAR KEY

                when "delete_title"
                    delete_title(valor)

                when "delete_body"
                    delete_body(valor)

                when "delete_userId"
                    delete_userId(valor)

            # END

            else
                raise "Invalid Parameter!!! -> #{chave}"
            end
        end
    end

    # SET KEY WITH JSON

        def set_JSON_exemplo(jsonExemplo)
            self.body["exemplo"] = exemplo
        end

    # END

    # CLEAR KEY

        def delete_title(condicao)
            if condicao == "sem informações"
                self.body["title"] = nil
            elsif condicao == "sem o objeto"
                self.body.delete("title")
            end
        end

        def delete_body(condicao)
            if condicao == "sem informações"
                self.body["body"] = nil
            elsif condicao == "sem o objeto"
                self.body.delete("body")
            end
        end

        def delete_userId(condicao)
            if condicao == "sem informações"
                self.body["userId"] = nil
            elsif condicao == "sem o objeto"
                self.body.delete("userId")
            end
        end

    # END

    # UPDATE KEY

        def update_title(title)
            self.body["title"] = title
        end

        def update_body(body)
            self.body["body"] = body
        end

        def update_userId(userId)
            self.body["userId"] = userId
        end

    # END

end
