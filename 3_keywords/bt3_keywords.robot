*** Settings ***
Resource    ${EXECDIR}/imports.robot


*** Keywords ***
Verify text MSB
    Open Browser    https://www.google.com    Chrome
    Wait Until Element Is Visible    ${google_textbox}
    Input Text    ${google_textbox}    MSB
    Press Keys    ${google_textbox}    ENTER
    Wait Until Element Is Visible    ${first_result}
    Click Element    ${first_result}
    Wait Until Element Is Visible    ${close_btn}
    Click Element    ${close_btn}
    Sleep    5s    # nếu cần chờ, dùng wait     - 0.1
    Wait Until Element Is Visible    ${text_matching_card}
    Page Should Contain Element    ${text_matching_card}
