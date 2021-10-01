class ContatoModel
    attr_accessor :name, :last_name, :email, :age, :phone, :address, :state, :city

    def cadastro_hash_completo

        {
            name: @name,
            last_name: @last_name,
            email: @email,
            age: @age,
            phone: @phone,
            address: @address,
            state: @state,
            city: @city
        }
    end

    def cadastro_hash_email_inválido

        {
            name: @name,
            last_name: @last_name,
            email: @email,
            age: @age,
            phone: @phone,
            address: @address,
            state: @state,
            city: @city
        }
    end

    def cadastro_hash_email_em_branco

        {
            name: @name,
            last_name: @last_name,
            email: @email,
            age: @age,
            phone: @phone,
            address: @address,
            state: @state,
            city: @city
        }
    end

    def cadastro_hash_email_cadastrado

        {
            name: @name,
            last_name: @last_name,
            email: @email,
            age: @age,
            phone: @phone,
            address: @address,
            state: @state,
            city: @city
        }
    end

    def cadastro_patch

        {
            name: @name
        }
    end

    

    





    
end