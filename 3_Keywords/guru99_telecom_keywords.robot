*** Settings ***
Resource    ../2_Elements/guru99_telecom_element.robot
Library   SeleniumLibrary

*** Keywords ***
Mở trang web
    [Arguments]    ${url}    ${Browser}
    Open Browser    ${url}    ${Browser}
Điền form
    [Arguments]    ${fname}    ${lname}    ${email}    ${adress}    ${phone}    ${timeout}
    Wait Until Element Is Visible    ${a_Addcustomer}    ${timeout}
    Click Element    ${a_Addcustomer}
    Reload Page
    Wait Until Element Is Visible    ${a_Addcustomer}    ${timeout}
    Click Element    ${a_Addcustomer}
    Wait Until Element Is Visible    ${inp_BGC}    ${timeout}
    Click Element    ${inp_BGC}
    Input Text    ${inp_fname}    ${fname}
    Input Text    ${inp_lname}    ${lname}
    Input Text    ${inp_email}    ${email}
    Input Text    ${inp_address}    ${adress}
    Input Text    ${inp_phone}    ${phone}
    Click Element    ${btn_submit}
    ${value}=    Get Text    ${customer_id}
    Click Element    ${btn_home}
    Wait Until Element Is Visible    ${a_ATBcustomer}    ${timeout}
    Click Element    ${a_ATBcustomer}
    Wait Until Element Is Visible    ${inp_customerid}    ${timeout}
    Input Text    ${inp_customerid}    ${value}
    Click Element    ${btn_submit2}
    Wait Until Element Is Visible    ${verify_text1}    ${timeout}