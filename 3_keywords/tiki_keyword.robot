*** Settings ***
Library  SeleniumLibrary
Resource    ../2_element/tiki_login.robot

*** Keywords ***   
Truy cập vào trang tiki
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    
input keywords
    [Arguments]    ${text}
    Wait Until Element Is Visible    ${inp_key}    4s  
    Input Text    ${inp_key}    ${text}

click keywords
    [Arguments]    ${btn_key}
    Wait Until Element Is Visible    ${btn_key}    4s
    Click Element    ${btn_key}

click find second product
    [Arguments]    ${index}
    Wait Until Element Is Visible    //div[@data-view-id='product_list_container']/div[${index}]    3s
    Click Element    //div[@data-view-id='product_list_container']/div[${index}] 
 
click buy button
    [Arguments]    ${text_buy}
    Wait Until Element Is Visible    //button[text()='${text_buy}']    4s
    Click Element    //button[text()='${text_buy}']

verify key
    [Arguments]    ${text_key}   
    Wait Until Element Is Visible    //h4[text()='${text_key}']    5s