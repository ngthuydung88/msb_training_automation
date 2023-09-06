*** Variables ***
${Input_Text}    //textarea[@id="APjFqb"]
${Press_Keys}    //div[@id="jZ2SBf"]
${first_result}    //div[@id="rso"]//h3[text()="MSB"]
${Close_popup_msb}    //span[@class='pop-up-porlet-close-btn']
${Close_popup_msb1}    document.querySelector('.pop-up-porlet-close-btn').click()
${Verify_text}    //div[contains(text(), "Chọn thẻ phù hợp với bạn")]