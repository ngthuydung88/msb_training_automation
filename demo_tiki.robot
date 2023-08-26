*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
[AUT_01] - Sản phẩm đầu tiên tìm kiếm được
    [Documentation]    Sản phẩm đầu tiên tìm kiếm được
    [Tags]    demo_tiki_tag
    Truy cập vào trang    https://tiki.vn/    chrome
    Nhập vào ô tìm kiếm    //input[@data-view-id='main_search_form_input']    Xe đạp
    Ấn button Tìm kiếm    //button[@data-view-id="main_search_form_button"]
    Nhấn vào sản phẩm thứ    3
    Tên sản phẩm có chứa chữ    Xe

*** Keywords ***
Truy cập vào trang     #nên viết tiếng anh
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Nhập vào ô tìm kiếm
    [Arguments]    ${locator}    ${text}
    Input Text    ${locator}    ${text}

Ấn button Tìm kiếm
    [Arguments]    ${tim_kiem_btn}
    Click Button    ${tim_kiem_btn}

Nhấn vào sản phẩm thứ
    [Arguments]    ${index}
    Wait Until Element Is Visible    //div[@data-view-id = "product_list_container"]/div[${index}]    10s
    Click Element    //div[@data-view-id = "product_list_container"]/div[${index}]

Tên sản phẩm có chứa chữ
    [Arguments]    ${text}
    Wait Until Element Is Visible    //h1[contains(text(), "${text}")]    3s
