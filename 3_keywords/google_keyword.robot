*** Settings ***
Library   SeleniumLibrary
Resource    ../2_element/google_login.robot


*** Keywords ***
Truy cập google
    [Arguments]    ${url}    ${brower}
    Open Browser    ${url}    ${brower}    
    Maximize Browser Window


Tìm kiếm từ khóa "MSB"
    [Arguments]    ${input_key}    ${input_location}
    Wait Until Element Is Visible    ${input_key}    3s        
    Press Keys    ${input_key}    ${input_location} 

Click search
    [Arguments]    ${index}
    Wait Until Element Is Visible    ${index}    3s    
    Click Element     ${index}

Out Popup
    [Arguments]    ${out_pap}
    Wait Until Element Is Visible    ${out_pap}    5s    
    Click Element    ${out_pap}

Verify trang có chứa
    [Arguments]    ${text_key}
    Wait Until Element Is Visible    //div[@class="main-banner-section"]//div[text()='${text_key}']   10s

