#language: pt

Funcionalidade: Criar conta no site
Como usuário do site
Desejo criar uma conta
Para poder logar no site

@sign
Cenário: Abrir a tela de registro
Dado que acesso a página automationpractice
Quando clicar no link Sign in
Então devo ver a sessão "AUTHENTICATION"

@add_email
Cenário: Criar conta
Dado que estou na tela "AUTHENTICATION"
Quando inserir o email "usuarioteste.stefanini@gmail.com" para cadastro
E clicar no botão Create an account
Então ver tela "CREATE AN ACCOUNT"

@form
Cenário: Preencher formulário
Dado que estou na tela dos formaulários "CREATE AN ACCOUNT"
Quando preencher o formulário de cadastro
E clicar no botão Register
Então ver a tela "MY ACCOUNT"