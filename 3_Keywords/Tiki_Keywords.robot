*** Settings ***
Resource    ../2_Elements/Tiki.robot
Library   SeleniumLibrary

*** Keywords ***
Mở trang web Tiki
    [Arguments]    ${url}    ${Browser}
    Open Browser    ${url}    ${Browser}
Mua sản phẩm nồi chiên không dầu
    [Arguments]    ${text}    ${timeout}
    Input Text    ${inp_text}    ${text}
    Wait Until Element Is Visible    ${div_suggest}    ${timeout}
    Click Element    ${div_suggest}
    Wait Until Element Is Visible    ${div_product4}    ${timeout}
    Click Element    ${div_product4}
    Wait Until Element Is Visible    ${btn_Chọn mua}    ${timeout}
    Click Element    ${btn_Chọn mua}
    Wait Until Element Is Visible    ${hello_text}    ${timeout}
    Page Should Contain Element    ${hello_text}