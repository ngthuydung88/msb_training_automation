*** Settings ***
Resource    ../2_Elements/Login_Guru99.robot
Library   SeleniumLibrary

*** Keywords ***
Mở trang web bằng trình duyệt
    [Arguments]    ${url}   ${Browser} 
    Open Browser    ${url}    ${Browser}
Login guru99 thành công
    [Arguments]    ${email}    ${password}    ${timeout}
    Wait Until Element Is Visible    ${inp_email}    ${timeout}
    Input Text    ${inp_email}    ${email}
    Input Password    ${inp_password}    ${password}
    Click Element    ${btn_login}
Verify màn hình
    [Arguments]    ${timeout}
    Wait Until Element Is Visible    ${verify_text_guru99}    ${timeout}