*** Settings ***
Resource    ../2_Elements/google.robot
Library   SeleniumLibrary

*** Keywords ***
Truy cập trang google.com
    [Arguments]    ${url}   ${Browser} 
    Open Browser    ${url}    ${Browser}
Tìm kiếm thông tin MSB
    [Arguments]    ${text}    ${timeout}
    Input Text    ${Input_Text}    ${text}
    Wait Until Element Is Visible    ${Press_Keys}    ${timeout}
    Click Element    ${Press_Keys}
    Wait Until Element Is Visible    ${first_result}    ${timeout}
    Click Element    ${first_result}
    Wait Until Element Is Visible    ${Close_popup_msb}    ${timeout}
    Execute JavaScript    ${Close_popup_msb1}
    Wait Until Element Is Visible    ${Verify_text}    ${timeout}
    Page Should Contain Element    ${Verify_text}