*** Settings ***
Resource     ../2_pages/guru99_submit.robot
Resource    ../5_datas/valid_data.robot
Library     SeleniumLibrary


*** Keywords ***


Choice Add Customer menu
    Wait Until Element Is Visible    ${btn_addCustomer}
    Click Element    ${btn_addCustomer}

Insert Info
    [Arguments]  ${BackGr_check}   ${firstname}    ${lastname}    ${email}    ${address}    ${mobile_number}
    
    Wait Until Element Is Visible     ${ipn_Done}
    
    Click Element    //label[contains(text(),'${BackGr_check}')]
    Input Text    ${ipn_FName}    ${firstname}
    Input Text    ${ipn_LName}    ${lastname}
    Input Text    ${ipn_Email}    ${email}
    Input Text    ${ipn_Address}    ${address}
    Input Text    ${ipn_Mobile}    ${mobile_number}
    Click Element     ${btn_Submit}

Get ID
    Wait Until Element Is Visible     ${lbl_ID}     10s
    ${element_text} =    Get Text    ${lbl_ID}
    Set Shared Variable    ${element_text}
    Log    Element Text: ${element_text}     # đây là step demo nhé
    Log    Share value: ${CustomerID_valid}    # đây là step demo nhé
    
    Click Element     ${btn_Home}

Choice Add Plan menu
    Wait Until Element Is Visible    ${btn_addPlan}
    Click Element    ${btn_addPlan}

Enter ID and Submit
    Wait Until Element Is Visible    ${ipn_CustormerID}     10s
    ...    30s
    ${shared_value}    Get Shared Variable
    Log   Share Value: ${shared_value}    # đây là step in log demo nhé
    Input Text     ${ipn_CustormerID}    ${shared_value}
    Click Element    ${btn_PlanSubmit}

Verify text in Plan Page
    Wait Until Element Is Visible     ${lbl_approved}    10s
    Page Should Contain Element    ${lbl_approved}





