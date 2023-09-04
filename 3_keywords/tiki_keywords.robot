*** Settings ***
Resource    ../2_pages/tiki.robot
Library  SeleniumLibrary    

*** Keywords ***
search keyword
    [Arguments]     ${value_type}  
    Click Element    ${input_search}
    Input Text     ${input_search}    ${value_type}

Choice key 
    Wait Until Element Is Visible    ${choice_value}    20s
    Click Element    ${choice_value}
   

Choice by element number
    Wait Until Element Is Visible    ${product_4}       20s
    Click Element    ${product_4}


Click buynow Button
    Wait Until Element Is Visible    ${btn_BuyNow}    15s
    # Mouse Over    //h1[1]
    Click Element    ${btn_BuyNow}
   
Verify text Hello
    Wait Until Element Is Visible   ${label_hello}
    Page Should Contain Element    ${label_hello}
