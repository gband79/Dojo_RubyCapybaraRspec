class Browser
    include Capybara::DSL

    def click_on_link(link)
        find("#{link}").click        
    end

    def input_value(element, value)
        find("#{element}").send_keys("#{value}")
    end

    def scroll_to_element(elem)
        page.execute_script("document.querySelector('#{elem}').scrollIntoView()")
    end

    def select_from(list, text)
        list_option = find("#{list}").hover
        list_option.find("option", text: "#{text}").select_option
    end


end