*** Settings ***
Library  SeleniumLibrary
Resource    ../2_element/guru_login_page.robot


# *** Variables ***
# ${click_btn}    //div[@data-view-id="header_header_account_container"]/span    


*** Keywords ***  
Truy cập vào trang guru99
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

login guru99 thành công 
    [Arguments]    ${email}    ${password}
    Wait Until Element Is Visible    ${inp_email}
    Input Text    ${inp_email}    ${email} 
    Input Text    ${inp_password}    ${password}        
    Click Element    ${btn_login} 
    
Kiểm thử màn hình hiển thị chờ
    [Arguments]    ${text}
    Wait Until Element Is Visible    //h3[text()='${text}']    10s  
    