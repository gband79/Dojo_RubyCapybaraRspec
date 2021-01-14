class Shop
    include Capybara::DSL

    def select_product(product)
        find("//*[@id='homefeatured']//*[contains(text(), '#{product}')]").hover
    end

    
end
