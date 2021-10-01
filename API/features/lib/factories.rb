require 'faker'

require_relative '../models/Contato_model'


FactoryBot.define do
    factory :user_completo, class: ContatoModel do
        name{Faker::Name.first_name}
        last_name{Faker::Name.last_name}
        email{Faker::Internet.email}
        age{Faker::Number.number(digits: 2)}
        phone{37999586431}
        address{Faker::Address.street_address}
        state{Faker::Address.state}
        city {Faker::Address.city}
    end

    factory :user_email_invalido, class: ContatoModel do
        name{Faker::Name.first_name}
        last_name{Faker::Name.last_name}
        email{"janete.oliveiracom.br"}
        age{Faker::Number.number(digits: 2)}
        phone{37999586431}
        address{Faker::Address.street_address}
        state{Faker::Address.state}
        city {Faker::Address.city}
    end

    factory :user_email_em_branco, class: ContatoModel do
        name{Faker::Name.first_name}
        last_name{Faker::Name.last_name}
        email{nil}
        age{Faker::Number.number(digits: 2)}
        phone{37999586431}
        address{Faker::Address.street_address}
        state{Faker::Address.state}
        city {Faker::Address.city}
    end

    factory :user_email_cadastrado, class: ContatoModel do
        name{Faker::Name.first_name}
        last_name{Faker::Name.last_name}
        email{"emery@nicolas.co"}
        age{Faker::Number.number(digits: 2)}
        phone{37999586431}
        address{Faker::Address.street_address}
        state{Faker::Address.state}
        city {Faker::Address.city}
    end

    factory :user_sem_nome, class: ContatoModel do
        name{nil}
        last_name{Faker::Name.last_name}
        email{Faker::Internet.email}
        age{Faker::Number.number(digits: 2)}
        phone{37999586431}
        address{Faker::Address.street_address}
        state{Faker::Address.state}
        city {Faker::Address.city}
    end

    factory :user_age_com_letras, class: ContatoModel do
        name{Faker::Name.first_name}
        last_name{Faker::Name.last_name}
        email{Faker::Internet.email}
        age{Faker::Name.first_name}
        phone{37999586431}
        address{Faker::Address.street_address}
        state{Faker::Address.state}
        city {Faker::Address.city}
    end

    factory :user_phone_com_letras, class: ContatoModel do
        name{Faker::Name.first_name}
        last_name{Faker::Name.last_name}
        email{Faker::Internet.email}
        age{Faker::Number.number(digits: 2)}
        phone{"Rogeriofiat"}
        address{Faker::Address.street_address}
        state{Faker::Address.state}
        city {Faker::Address.city}
    end

    factory :user_patch, class: ContatoModel do
        name{Faker::Name.first_name}
    end


end