*** Settings ***
Resource     ../2_pages/guru99.robot    
Library     SeleniumLibrary


*** Keywords ***
Login guru99
    [Arguments]    ${username}    ${password}
    # Click Element     ${input_email}   
    Input Text    ${input_email}    ${username}
    # Click Element     ${input_password}
    Input Text    ${input_password}    ${password}
    Click Button    ${btn_login}
    # Sleep    2s
Verify text    
    Page Should Contain Element    ${label_success}
    

    