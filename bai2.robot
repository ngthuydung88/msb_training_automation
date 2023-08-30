*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
[AUT_01] - Tìm kiếm Nồi chiên
    [Documentation]    Tìm kiếm Nồi chiên
    [Tags]    timkiem_tiki_tag
    Truy cập vào trang    https://tiki.vn/    chrome
    Nhập vào ô tìm kiếm    //input[@data-view-id='main_search_form_input']    Nồi chiên
    Click nồi chiên không dầu
    Nhấn vào sản phẩm thứ    4
    Ấn button Chọn mua    //button[@data-view-id='pdp_add_to_cart_button']
    Tên thành công    Xin chào,


*** Keywords ***
Truy cập vào trang
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Nhập vào ô tìm kiếm
    [Arguments]    ${locator}    ${text}
    Input Text    ${locator}    ${text}

Click nồi chiên không dầu
    Wait Until Element Is Visible    //div[text() = 'nồi chiên không dầu']    10s
    Click Element    //div[text() = 'nồi chiên không dầu']

Nhấn vào sản phẩm thứ
    [Arguments]    ${index}
    Wait Until Element Is Visible    //div[@data-view-id = "product_list_container"]/div[${index}]    10s
    Click Element    //div[@data-view-id = "product_list_container"]/div[${index}]

Ấn button Chọn mua
    [Arguments]    ${tim_kiem_btn}
    Wait Until Element Is Visible    //button[@data-view-id='pdp_add_to_cart_button']    5s
    Click Button    ${tim_kiem_btn}

Tên thành công
    [Arguments]    ${text}
    Wait Until Element Is Visible    //h4[contains(text(), "${text}")]    5s    # có text chính xác rồi thì không dùng contains  -0.2
    Sleep    10s    # nếu cần chờ, dùng wait     - 0.1
