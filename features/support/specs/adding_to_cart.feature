#language: pt

Funcionalidade: Adicionar ao carrinho de compra.
Como usuário comprador do site
Quero poder adicionar o produto ao carrinho de compras
Para efetuar a compra

@search
Cenário: Pesquisar produto.
Dado que estou na tela do site
Quando pesquisar o produto desejado
E adicionar no carrinho
Então validar se o produto esta no carrinho de compras

