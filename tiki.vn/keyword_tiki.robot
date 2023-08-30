*** Settings ***
Library     SeleniumLibrary
# *** Variables ***
# ${click_btn}    //div[@data-view-id="header_header_account_container"]/span


*** Keywords ***
input keywords
    [Arguments]    ${inp_key}    ${text}
    Input Text    ${inp_key}    ${text}
    Sleep    2s

click keywords
    [Arguments]    ${btn_key}
    Click Element    ${btn_key}
    Sleep    5s

click find second product
    [Arguments]    ${index}
    # Wait Until Element Is Visible    //div[@data-view-id='product_list_container']/div[4]    5s
    Click Element    //div[@data-view-id='product_list_container']/div[${index}]
    Sleep    5s

click buy button
    [Arguments]    ${text_buy}
    Click Element    //button[text()='${text_buy}']
    Sleep    5s

verify key
    [Arguments]    ${text_key}
    Wait Until Element Is Visible    //h4[text()='${text_key}']    5s
    # Page Should Contain Element    //h4[text()='Xin chào,']
