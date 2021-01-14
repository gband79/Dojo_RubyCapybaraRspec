#language: pt

Funcionalidade: Realizar compra
Como usuário comprador do site
Quero poder ter acesso ao carrinho de compras
Para efetuar compras

@select
Cenário: Adicionar produto ao carrinho
Dado que estou na tela do site
Quando selecionar o produto desejado
Então validar se o produto esta no carrinho de compras