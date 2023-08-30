*** Settings ***
Library     SeleniumLibrary    # thầy tự import
# file gốc không phải .robot -0.5
# chưa import thư viện SeleniumLibrary -0.5
# đặt tags, documentation cho test case -0.5

*** Test Cases ***
Bai 1
    # open browser https://demo.guru99.com/test/login.html chrome    # lưu ý, 4 space = 1 tab, nên dùng tab, ít nhất 2 space    -0.2
    open browser    https://demo.guru99.com/test/login.html    chrome
    input text    //input[@name="email"]    nana
    input text    //input[@name="passwd"]    123456
    click button    //button[@id='SubmitLogin']
    Wait Until Element Is Visible    //h3[contains(text(),'Successfully Logged in...')]

Bai 2
    open browser    https://tiki.vn    chrome
    click button    //button[@data-view-id='main_search_form_button']
    # input text    //input[@data-view-id="main_search_form_input"]
    input text    //input[@data-view-id="main_search_form_input"]    nồi chiên
    click element    //div[@class="SearchAutocomplete__Root-sc-35nyl5-0 jlBoKO"]/div[1]/a[1]    # tối ưu lại xpath -0.1
    Click button    //button[@data-view-id="main_search_form_button"]
    Click element    //div[@data-view-id="product_list_container"]/div[4]
    # Click button //button[@data-view-id="pdp_add_to_cart_button"]
    Click button    //button[@data-view-id="pdp_add_to_cart_button"]
    # có text chính xác rồi thì không dùng contains    -0.2
    Wait Until Element Is Visible
    ...    //h4[contains(text(),'Xin chào,')]

Bai 3
    # open browser    https://www.google.com.vn/?client=safari
    open browser    https://www.google.com.vn    chrome
    # input text //input[@data-ved='0ahUKEwi9hN6s1YGBAxW8xDgGHQ9dA0YQ4dUDCAs']
    input text    //input[@data-ved='0ahUKEwi9hN6s1YGBAxW8xDgGHQ9dA0YQ4dUDCAs']    MSB    # tối ưu lại xpath -0.1
    click element    //div[@class='OBMEnb']/ul[1]/li[1]
    click element    //div[@id="fragment-34202-joci"]/div/div/div/span
    # có text chính xác rồi thì không dùng contains    -0.2
    Wait Until Element Is Visible
    ...    //div[contains(text(),'Chọn thẻ phù hợp với bạn')]
