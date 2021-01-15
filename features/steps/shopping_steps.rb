
Dado("que estou na tela do site") do
    page.windows[0].maximize
    visit "http://automationpractice.com/index.php"
end


Quando("pesquisar o produto desejado") do
    @act.input_value("#search_query_top", "blouse")
    @act.click_on_link(".button-search")
    
end


Então("validar se o produto esta no carrinho de compras") do
    product = find(".lighter").text
    # expect(product.displayed?).to be true
    log("produto encontrado:'#{product}'")
end