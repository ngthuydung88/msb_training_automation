*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
[TC_01] - Tìm kiếm MSB trên google        #Tổng trừ    -1.1
    [Documentation]    Tìm kiếm MSB trên google
    [Tags]    bai2_btvn_google
    Truy cập vào trang    https://www.google.com/    chrome
    Nhập vào ô tìm kiếm    //textarea[@id='APjFqb']    MSB    # class động KHÔNG NÊN DÙNG     -0.2
    Sleep    2s    # đã có wait ở keyword dưới     - 0.1
    Ấn button Tìm trên Google    //div[@jsname="VlcLAe"]//input[@class="gNO89b"]    # class động KHÔNG NÊN DÙNG     -0.2
    Sleep    2s    # đã có wait ở keyword dưới     - 0.1
    Click kết quả tìm kiếm đầu tiên    //div[@class="tF2Cxc"]//h3[@class="LC20lb MBeuO DKV0Md"]      # class động KHÔNG NÊN DÙNG     -0.2   //h3[1]
    Sleep    4s    # đã có wait ở keyword dưới     - 0.1
    Đóng popup    //*[@id="fragment-34202-joci"]/div[1]/div[1]/div[1]/span[1]         # //span[@class = "pop-up-porlet-close-btn"]    -0.1
    Sleep    2s    # đã có wait ở keyword dưới     - 0.1
    Xác nhận popup chứa text    Chọn thẻ phù hợp với bạn


*** Keywords ***
Truy cập vào trang
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Nhập vào ô tìm kiếm
    [Arguments]    ${locator}    ${text}
    Input Text    ${locator}    ${text}

Ấn button Tìm trên Google
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    7s
    Click Element    ${locator}

Click kết quả tìm kiếm đầu tiên
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    7s
    Click Element    ${locator}

Đóng popup
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    7s
    Click Element    ${locator}

Xác nhận popup chứa text
    [Arguments]    ${text}
    Wait Until Element Is Visible    //*[contains(text(), "${text}")]    7s
