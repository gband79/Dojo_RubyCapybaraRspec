Dado("que estou na tela dos formaulários {string}") do |string|
    page.windows[0].maximize
    visit "http://automationpractice.com/index.php"

    @act.click_on_link(".login")

    @act.click_on_link("#email_create")
    @act.input_value("#email_create", "usuarioteste.stefanini@gmail.com")
    @act.click_on_link("#SubmitCreate")

    
    title = find(:xpath, "//*[contains(text(),'Create an account')]")
    expect(title.text).to eql string
    sleep 5
end

Quando("preencher o formulário de cadastro") do
    
    @act.click_on_link("#customer_firstname")
    @act.input_value("#customer_firstname", "James")
    
    @act.click_on_link("#customer_lastname")
    @act.input_value("#customer_lastname", "Ryan")
        
    @act.click_on_link("#passwd")
    @act.input_value("#passwd", "q1w2e3")
    
    @act.scroll_to_element("#company")

    @act.click_on_link('#address1')
    @act.input_value('#address1', "3061  Joyce Street")

    @act.click_on_link('#city')
    @act.input_value('#city', "Gulf Shores")

    @act.select_from("#uniform-id_state", "Alabama")
        
    @act.click_on_link('#postcode')
    @act.input_value('#postcode', '36542')

    @act.select_from("#uniform-id_country", "United States")
    
    @act.click_on_link('#phone_mobile')
    @act.input_value('#phone_mobile', '256-200-0534')

      
    sleep 5

end

Quando("clicar no botão Register") do
    @act.click_on_link("#submitAccount")
end


Então("ver a tela {string}") do |string|
    title = find('.page-heading').text
    expect(title).to eql string 
end