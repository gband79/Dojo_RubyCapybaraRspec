
Dado('que acesso a página automationpractice') do
    page.windows[0].maximize
    visit "http://automationpractice.com/index.php"
end

Dado('que estou na tela {string}') do |string|
    page.windows[0].maximize
    visit "http://automationpractice.com/index.php"
    
    @act.click_on_link(".login")

    section = find('.page-heading').text
    expect(section).to eql string
    
end

  
Quando('clicar no link Sign in') do
    @act.click_on_link(".login")
        
end

Quando("inserir o email {string} para cadastro") do |email|
    @act.click_on_link("#email_create")
    @act.input_value("#email_create", email)
    @act.click_on_link("#SubmitCreate")
end 

Quando("clicar no botão Create an account") do
    @act.click_on_link("#SubmitCreate")
end
  
Então('devo ver a sessão {string}') do |string|
    section = find('.page-heading').text
    expect(section).to eql string
    sleep 5
end

Então("ver tela {string}") do |string|
    title = find(:xpath, "//*[contains(text(),'Create an account')]")
    expect(title.text).to eql string
    sleep 5
end
