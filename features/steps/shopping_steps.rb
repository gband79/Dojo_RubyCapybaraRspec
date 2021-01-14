Dado("que estou na tela do site") do
    page.windows[0].maximize
    visit "http://automationpractice.com/index.php"
end


Quando("selecionar o produto desejado") do
    @act.scroll_to_element("//img[@title='Blouse']")
    @shop.select_product('Blouse')
end


Então("validar se o produto esta no carrinho de compras") do

end