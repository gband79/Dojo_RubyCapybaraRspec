
Dado("que estou na tela do site") do
    page.windows[0].maximize
    visit "http://automationpractice.com/index.php"
end


Quando("pesquisar o produto desejado") do
    @act.input_value("#search_query_top", "blouse")
    @act.click_on_link(".button-search")
    sleep 3
    
end

Quando("adicionar no carrinho") do
    @act.scroll_to_element("#color_7")
    sleep 3
    @act.click_on_link("#color_7")
    @act.click_on_link("#color_7")
    sleep 3
    @act.scroll_to_element("#add_to_cart")
    @act.click_on_link("#add_to_cart")
    sleep 10
        
end


Então("validar se o produto esta no carrinho de compras") do
    
    product = find("#layer_cart_product_title").text
    total = find("#layer_cart_product_price").text
    
    log("\nProduto: '#{product}'")
    log("Preço: '#{total}'")
    
end