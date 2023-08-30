*** Settings ***
Resource    ../imports.robot
Resource    ../8_imports/bt1.robot


*** Keywords ***
Verify Guru99
    Open Browser    https://demo.guru99.com/test/login.html    Chrome
    Input Text    ${email_textbox}    ${email}
    Input Text    ${password_textbox}    ${password}
    Click Button    ${signin_btn}
    Wait Until Element Is Visible    ${login_txt}
    Page Should Contain Element    ${login_txt}
