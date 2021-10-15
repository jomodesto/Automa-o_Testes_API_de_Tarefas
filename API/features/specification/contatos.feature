#language: pt

Funcionalidade: Gerenciamento de contatos

Como funcionário
Quero listar, criar, editar e deletar contatos
Para fazer gerenciamento dos meus contatos

####GET
@listar_tudo
Cenario: [GET] Listar todos os contatos
Quando faço um GET para listar todos os contatos
Então a API retorna os cadastros
E retorna o status code 200 "OK"

@listar_um
Cenario: [GET] Listar contato por ID
Quando faço um GET para listar por ID de usuario
Então a API retorna o cadastro correspondente ao ID
E retorna o status code 200 "OK"

####POST
@Cadastro_com_sucesso
Cenario: [Post] Criar Contato com sucesso
Quando faço um POST para cadastrar um usuário
Então a API cadastra o usuario com sucesso
E retorna o status code 201 "Created"
E retorna os dados de contrato da API de cadastro

    ###Variações de EMAIL

@Cadastro_email_invalido
Cenario: [Post] Criar Contato informando e-mail inválido
Quando faço um POST para cadastrar um usuário, informando um e-mail inválido. 
Então a API retorna uma response de "email" "não é válido"
E retorna o status code 422 "Unprocessable Entity"

Cenario: [Post] Criar Contato sem informar e-mail
Quando faço um POST para cadastrar um usuário, sem informar e-mail. 
Então a API retorna uma response de "email" "não pode ficar em branco"
E retorna o status code 422 "Unprocessable Entity"

Cenario: [Post] Criar Contato informando e-mail já cadastrado
Quando faço um POST para cadastrar um usuário, informando um e-mail já cadastrado. 
Então a API retorna uma response de "email" "já está em uso"
E retorna o status code 422 "Unprocessable Entity"

    ###Variações de NAME
Cenario: [Post] Criar Contato sem informar o nome
Quando faço um POST para cadastrar um usuário, sem informar o nome. 
Então a API retorna uma response de "name" "não pode ficar em branco"
E retorna o status code 422 "Unprocessable Entity"

    ###Variações de Age
Cenario: [Post] Criar Contato informando letras no campo "Age"
Quando faço um POST para cadastrar um usuário, informando letras no campo Age. 
Então a API retorna uma response de "age" "não é um número"
E retorna o status code 422 "Unprocessable Entity"

   ###Variações de Phone
Cenario: [Post] Criar Contato informando letras no campo "Phone"
Quando faço um POST para cadastrar um usuário, informando letras no campo Phone. 
Então a API retorna uma response de "phone" "não é válido"
E retorna o status code 422 "Unprocessable Entity"

####PUT
@Put
Cenario: [Put] Editar Contato
Quando faço um PUT para editar um usuário
Então a API edita o usuario com sucesso
E retorna o status code 200 "OK"


####PATCH
@patch
Cenario: [PATCH] Editar só uma parte do Contato
Quando faço um PATCH para editar alguma informação específica do usuário
Então a API edita o usuario com sucesso
E retorna o status code 200 "OK"

Cenario: [DELETE] deletar Contato
Quando faço um DELETE para deletar um usuário
Então a API retorna uma response como null
E retorna o status code 204 "No Content"

