*** Settings ***
Resource     ../2_pages/MSB.robot 
Library     SeleniumLibrary


*** Keywords ***

search MSB
    [Arguments]     ${google_keyword}  
    Wait Until Element Is Visible        ${input_google}
    Input Text     ${input_google}    ${google_keyword}
    

Send ENTER key
    Press Keys    ${input_google}    ENTER


Choice 1st MSB area
    Wait Until Element Is Visible  ${MSB_area1}
    Click Element    ${MSB_area1}


Close by button X   
    Wait Until Element Is Visible        ${X_button}
    Click Element        ${X_button} 


Verify text Welcome MSB
    Wait Until Element Is Visible        ${label_WelcomeMSB}
    Page Should Contain Element    ${label_WelcomeMSB}



    

