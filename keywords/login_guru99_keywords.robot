*** Settings ***
Resource    ../pages/guru99.robot
Library     SeleniumLibrary


*** Keywords ***
Login guru99
    [Arguments]    ${username}    ${password}
    Click Element    ${input_email}     # không cần click   -0.1
    Input Text    ${input_email}    ${username}
    Click Element    ${input_password}     # không cần click   -0.1
    Input Text    ${input_password}    ${password}
    Click Button    ${btn_login}
    Sleep    2s      # nếu cần chờ, dùng wait     - 0.1

Verify text
    Page Should Contain Element    ${label_success}
