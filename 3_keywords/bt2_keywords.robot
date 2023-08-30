*** Settings ***
Resource    ../imports.robot
Resource    ../8_imports/bt2.robot


*** Keywords ***
Verifiy popup Tiki
    Open Browser    https://tiki.vn/    Chrome
    Input Text    ${search_form}    nồi chiên
    Wait Until Element Is Visible    ${search_keyword}
    Click Element    ${search_keyword}
    Wait Until Element Is Visible    ${product_4}
    Click Element    ${product_4}
    Wait Until Element Is Visible    ${add_to_cart_btn}
    Click Button    ${add_to_cart_btn}
    Wait Until Element Is Visible    ${hello_text}
    Page Should Contain Element    ${hello_text}
