*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${inp_email}    //input[@id='email']


*** Keywords ***
input email
    [Arguments]    ${inp_email}    ${email}
    Input Text    ${inp_email}    ${email}

input paswork
    [Arguments]    ${inp_pwd}    ${pass}
    Input Password    ${inp_pwd}    ${pass}

click button
    [Arguments]    ${click_btn}
    Click Element    ${click_btn}
    # Page Should Contain Element    Successfully Logged in...

verify key
    [Arguments]    ${key}
    Wait Until Element Is Visible    //h3[text()='${key}']    10s
