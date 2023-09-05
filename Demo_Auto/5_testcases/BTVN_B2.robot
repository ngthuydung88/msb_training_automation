*** Settings ***
Library     SeleniumLibrary
Resource    ../import.robot


*** Test Cases ***
[TCS2-B1] Script Automation Test for Tiki page
    [Documentation]    Mua nồi chiên
    [Tags]    btvn2_b1
    Open Browser    https://tiki.vn/    chrome
    Input "text" on the Search in TIKI    nồi chiên
    Click "text" appear in propose list    nồi chiên không dầu
    Click "n" th product    4
    Click "Chọn mua"
    Verify popup contain "text"    Xin chào,

[TCS3-B1] Script Automation Test for GG
    [Documentation]    search MSB
    [Tags]    btvn3_b1
    Open Browser    https://www.google.com/    chrome
    Input "text" to search in GG    MSB
    Click button "Tìm trên GG"
    Choose result "n"    1
    Click X button on the popup
    Verify "text " in page    Chọn thẻ phù hợp với bạn

[BTVN2] Làm bài sau theo hướng keyword
    [Documentation]    Làm bài sau theo hướng keyword
    [Tags]    btvn2_b2
    Open Browser    https://demo.guru99.com/telecom/index.html    chrome
    Click on Add Customer
    Reload Page
    Click on Add Customer
    Input successful customer    Ngan    Hoang    a1@mailinator.com    HungYen    012345678
    Click Home button
    Click Add Tariff Plan to Customer page
    Input successful customer id and submit    Approved Tariff Plans
