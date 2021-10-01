module Rest
    class Contatos
        include HTTParty
        headers 'Content-Type' => 'application/json'
        base_uri CONFIG['base_uri']

        def get_listar_tudo
            self.class.get('/contacts')
            
        end

        def get_listar_por_id(id)
            self.class.get("/contacts/#{id}")
            
        end

        def post_cadastro_completo(user_completo)
            self.class.post('/contacts', body: user_completo.to_json)
        end

        def post_cadastro_email_invalido(user_email_invalido)
            self.class.post('/contacts', body: user_email_invalido.to_json)
        end

        def post_cadastro_email_em_branco(user_email_em_branco)
            self.class.post('/contacts', body: user_email_em_branco.to_json)
        end

        def post_cadastro_email_cadastrado(user_email_cadastrado)
            self.class.post('/contacts', body: user_email_cadastrado.to_json)
        end

        def post_cadastro_sem_nome(user_sem_nome)
            self.class.post('/contacts', body: user_sem_nome.to_json)
        end
        def post_cadastro_age_com_letras(user_age_com_letras)
            self.class.post('/contacts', body: user_age_com_letras.to_json)
        end

        def post_cadastro_phone_com_letras(user_phone_com_letras)
            self.class.post('/contacts', body: user_phone_com_letras.to_json)
        end

        def put_cadastro_completo(id, user_completo)
            self.class.put("/contacts/#{id}", body: user_completo.to_json)
        end

        def patch_cadastro(id, user_patch)
            self.class.patch("/contacts/#{id}", body: user_patch.to_json)
        end

        def delete_cadastro(id)
            self.class.delete("/contacts/#{id}")
        end

    end
    
end