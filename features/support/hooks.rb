Before do
  @act = Browser.new
  log("\nExecutando o cenário...")
end

After do |scenario|
    
  temp_shot = page.save_screenshot("logs/#{scenario.__id__}.png") 
  
  Allure.add_attachment(
    name: "screenshot",
    type: Allure::ContentType::PNG,
    source: File.open(temp_shot)
  )
  
  log("Teste finalizado!")
end