Quando('faço um GET para listar todos os contatos') do
    @request_contatos = contatos.get_listar_tudo
  end
  
  Então('a API retorna os cadastros') do
    expect(@request_contatos.parsed_response['data']).not_to be_empty
  end
  
  Então('retorna o status code {int} {string}') do |status_code, message|
    expect(@request_contatos.code).to eq status_code
    expect(@request_contatos.message).to eq message
  end
  
  Quando('faço um GET para listar por ID de usuario') do
    @id = "631"
    @request_contatos = contatos.get_listar_por_id(@id)
  end
  
  Então('a API retorna o cadastro correspondente ao ID') do
    expect(@request_contatos.parsed_response['data']['id']).to eq @id
  end
  
  Quando('faço um POST para cadastrar um usuário') do
    @payload_contatos = build(:user_completo).cadastro_hash_completo
    @request_contatos = contatos.post_cadastro_completo(@payload_contatos)    
  end
  
  Então('a API cadastra o usuario com sucesso') do
    expect(@request_contatos.parsed_response).not_to eq nil
  end
  
  Quando('faço um POST para cadastrar um usuário, informando um e-mail inválido.') do
    @payload_contatos = build(:user_email_invalido).cadastro_hash_email_inválido  
    @request_contatos = contatos.post_cadastro_email_invalido(@payload_contatos)
  end
  
  Então('a API retorna uma response de {string} {string}') do |tipo_de_objeto, response|
    expect(@request_contatos['errors']["#{tipo_de_objeto}"]).to include response
  end
  
  Quando('faço um POST para cadastrar um usuário, sem informar e-mail.') do
    @payload_contatos = build(:user_email_em_branco).cadastro_hash_email_em_branco
    @request_contatos = contatos.post_cadastro_email_em_branco(@payload_contatos)
  end
  
  Quando('faço um POST para cadastrar um usuário, informando um e-mail já cadastrado.') do
    @payload_contatos = build(:user_email_cadastrado).cadastro_hash_email_cadastrado
    @request_contatos = contatos.post_cadastro_email_cadastrado(@payload_contatos)
  end
  
  Quando('faço um POST para cadastrar um usuário, sem informar o nome.') do
    @payload_contatos = build(:user_sem_nome).cadastro_hash_completo
    @request_contatos = contatos.post_cadastro_sem_nome(@payload_contatos)
  end
  
  Quando('faço um POST para cadastrar um usuário, informando letras no campo Age.') do
    @payload_contatos = build(:user_age_com_letras).cadastro_hash_completo
    @request_contatos = contatos.post_cadastro_age_com_letras(@payload_contatos)
  end
  
  Quando('faço um POST para cadastrar um usuário, informando letras no campo Phone.') do
    @payload_contatos = build(:user_phone_com_letras).cadastro_hash_completo
    @request_contatos = contatos.post_cadastro_phone_com_letras(@payload_contatos)
  end
  
  Quando('faço um PUT para editar um usuário') do
    @id = "592"
    @payload_contatos = build(:user_completo).cadastro_hash_completo
    @request_contatos = contatos.put_cadastro_completo(@id, @payload_contatos)
  end
  
  Então('a API edita o usuario com sucesso') do
    expect(@request_contatos['data']['id']).to eq @id
  end
  
  Quando('faço um PATCH para editar alguma informação específica do usuário') do
    @id = "631"
    @payload_contatos = build(:user_completo).cadastro_patch
    puts @payload_contatos
    @request_contatos = contatos.patch_cadastro(@id, @payload_contatos)
    puts @payload_contatos
  end
  
  Quando('faço um DELETE para deletar um usuário') do
    @id = 630
    @request_contatos = contatos.delete_cadastro(@id)
  end
  
  Então('a API retorna uma response como null') do
    expect(@request_contatos.parsed_response).to eq nil
  end

  Então('retorna os dados de contrato da API de cadastro') do
        expect(@request_contatos).to match_json_schema("contracts_schema")
  end