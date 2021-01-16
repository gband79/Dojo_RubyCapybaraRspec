Dado ("que estou no carrinho de compras") do
    page.windows[0].maximize
    visit "http://automationpractice.com/index.php"

    @act.input_value("#search_query_top", "blouse")
    @act.click_on_link(".button-search")
    sleep 2

    @act.scroll_to_element("#color_7")
    sleep 2
    @act.click_on_link("#color_7")
    @act.click_on_link("#color_7")
    sleep 2
    @act.scroll_to_element("#add_to_cart")
    @act.click_on_link("#add_to_cart")
    
    
end


Quando("proceder para o checkout") do
    @act.click_on_link(".button-medium")
end

Então("revisar dados de endereço") do
    
    @act.scroll_to_element(".label-success")
    
    @act.click_on_link('.cart_navigation .standard-checkout')
    
    @act.input_value("#email", "usuarioteste.stefanini@gmail.com")
    @act.input_value("#passwd", "q1w2e3")
    @act.click_on_link('#SubmitLogin')
    
    @act.scroll_to_element(".address_delivery")
    
    

    client_name = find('.col-sm-6 .item .address_firstname').text
    street = find('.col-sm-6 .item .address_address1').text
    city = find('.col-sm-6 .item .address_city').text
    phone = find('.col-sm-6 .item .address_phone_mobile').text
    #.cart_navigation .button-medium
    log("\n")
    log(client_name)
    log(street)
    log(city)
    log(phone)

end

