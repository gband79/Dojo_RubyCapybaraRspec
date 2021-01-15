#language: pt

Funcionalidade: Realizar compra.
Como usuário comprador do site
Quero poder ter acesso ao carrinho de compras
Para efetuar compras

@search
Cenário: Pesquisar produto.
Dado que estou na tela do site
Quando pesquisar o produto desejado
E adicionar no carrinho
Então validar se o produto esta no carrinho de compras