Dado("que estou na tela do site") do
    page.windows[0].maximize
    visit "http://automationpractice.com/index.php"
end


Quando("selecionar o produto desejado") do
    @act.scroll_to_element('.left-block')
    @shop.select_product('Blouse')
    @act.click_on_link("#homefeatured")
    sleep 10
end


Então("validar se o produto esta no carrinho de compras") do

end