*** Settings ***
Library     SeleniumLibrary
Resource    ../2_elements/BTVN_B2_page.robot


*** Keywords ***
# Viêt lại Bai2 cua buoi 1
Input "text" on the Search in TIKI
    [Arguments]    ${text}
    Input Text    ${inp_search}    ${text}

Click "text" appear in propose list
    [Arguments]    ${text}
    Wait Until Element Is Visible    //div[text()='${text}']    2s
    Click Element    //div[text()='${text}']

Click "n" th product
    [Arguments]    ${element_n}
    Wait Until Element Is Visible    //div[@data-view-id='product_list_container']/div[${element_n}]    5s
    Click Element    //div[@data-view-id='product_list_container']/div[${element_n}]

Click "Chọn mua"
    Wait Until Element Is Visible    ${btn_chon_mua}    5s
    Click Element    ${btn_chon_mua}

Verify popup contain "text"
    [Arguments]    ${text}
    Wait Until Element Is Visible    //h4[text()='${text}']

# Viết lại Bai 3 cua buoi 1
Input "text" to search in GG
    [Arguments]    ${text}
    Input Text    ${GG_search}    ${text}

Click button "Tìm trên GG"
    Click Element    ${btn_tim_tren_GG}

Choose result "n"
    [Arguments]    ${n}
    Wait Until Element Is Visible    //div[@class='eKjLze']//h3[${n}]    5s
    Click Element    //div[@class='eKjLze']//h3[${n}]

Click X button on the popup
    Wait Until Element Is Visible    ${btn_X}    5s
    Click Element    ${btn_X}

Verify "text " in page
    [Arguments]    ${text}
    Wait Until Element Is Visible    //div[text()='${text}']

# Viết mới Bai 2 buoi 2
Click on Add Customer
    Click Element    ${Add_customer_page}

Input successful customer
    [Arguments]    ${fname}    ${lname}    ${mail}    ${addres}    ${phoneno}
    Wait Until Element Is Visible    //label[text()='Done']    20s
    Click Element    //label[text()='Done']
    Input Text    ${fisrt_name}    ${fname}
    Input Text    ${last_name}    ${lname}
    Input Text    ${email}    ${mail}
    Input Text    ${addr}    ${addres}
    Input Text    ${phone}    ${phoneno}
    Click Element    ${btn_submit}
    ${id}    Get Text    ${id_customer}
    Set Test Variable    ${id_var}    ${id}

Click Home button
    Click Element    ${btn_home}

Click Add Tariff Plan to Customer page
    Click Element    ${Add_Tariff_page}

Input successful customer id and submit
    [Arguments]    ${text}
    Input Text    ${inp_cus_id}    ${id_var}
    Click Element    ${btn_submit}
    Wait Until Element Is Visible    //h2[text()='${text}']
