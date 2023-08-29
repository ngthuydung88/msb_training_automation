*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
[AUT_01] - Tìm kiếm MSB
    [Documentation] 
    [Tags]    
    Truy cập vào trang  https://google.com/        chrome
    Input Text    xpath=.//textarea[@id='APjFqb']  MSB
    Sleep      3s
     Click Element    locator


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

Nhấn vào kết quả thứ
    [Arguments]    ${index}
    Wait Until Element Is Visible    //div[@data-view-id = "product_list_container"]/div[${index}]    10s
    Click Element    //div[@data-view-id = "product_list_container"]/div[${index}]

Tên sản phẩm có chứa chữ
    [Arguments]    ${text}
    Wait Until Element Is Visible    //h1[contains(text(), "${text}")]    3s


Điền vào button Email address
    [Arguments]    ${locator}    ${text}
    Click Element    ${locator}
    Sleep    1s
    Input Text    ${locator}    ${text}

