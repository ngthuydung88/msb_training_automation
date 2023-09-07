*** Settings ***
Library  SeleniumLibrary
  
Resource    ../2_element/guru_customer.robot

*** Variables ***

${share_value}        intital value

*** Keywords ***  
login vào trang
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Chọn thêm khách hàng  
    Wait Until Element Is Visible     ${btn_addCustomer}    
    Click Element    ${btn_addCustomer}  

keyword tham số truyền vào
    [Arguments]    ${index}    ${firstname}    ${lastname}    ${email}    ${message}    ${mobile}    
    Wait Until Element Is Visible     //label[contains(text(),'${index}')]    
    Click Element        //label[contains(text(),'${index}')] 
    Input Text    ${input_firstname}    ${firstname}   
    Input Text    ${input_lastname}    ${lastname}   
    Input Text    ${input_email}    ${email}
    Input Text    ${input_message}    ${message}    
    Input Text    ${input_mobile}    ${mobile}
    Click Element    ${btn_submit}              

Lấy Customer ID
    Wait Until Element Is Visible     ${lbl_CustomerID} 
    ${Customer_ID} =    Get Text    ${lbl_CustomerID}
    Set Shared Variable      ${Customer_ID} 
    # Click Element    ${btn_Home}
    # Wait Until Element Is Visible      ${btn_Home}
    Click Element    ${btn_Home}
    

Ấn nút Add Tariff Plan to Customer
    Wait Until Element Is Visible     ${btn_Add Tarif}    
    Click Element    ${btn_Add Tarif}

Nhập Customer ID vừa tạo Nhấn Submit
    Wait Until Element Is Visible    ${input_customerID}  
    ${shared_value}    Get Shared Variable    
    Input Text    ${input_customerID}     ${shared_value}
    Click Element    ${btn_submit}

Kiểm tra text hiển thị: Approved Tariff Plans
    Wait Until Element Is Visible    ${lbl_checkFinal}    10s  
    # Page Should Contain Element    lbl_checkFinal

Set Shared Variable
    [Arguments]    ${value}
    Set Global Variable    ${share_value}    ${value}

Get Shared Variable
    [Return]    ${share_value}   