*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
[AUT_01] - Tìm kiếm MSB
    [Documentation]    Tìm kiếm MSB
    [Tags]    timkiem_msb
    Truy cập vào trang    https://www.google.com/    chrome
    Nhập vào ô tìm kiếm    //textarea[@id='APjFqb']    MSB
    Click msb
    Click vào web đầu tiên hiển thị
    Tắt popup
    Tên thành công


*** Keywords ***
Truy cập vào trang
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Nhập vào ô tìm kiếm
    [Arguments]    ${locator}    ${text}
    Input Text    ${locator}    ${text}

Click msb
    Wait Until Element Is Visible    //span[text() = 'msb']    5s    # nhỡ từ khóa đấy không nằm trong list recommnend thì sao? nên ấn button tìm kiếm -0.2
    Click Element    //span[text() = 'msb']

Click vào web đầu tiên hiển thị
    Wait Until Element Is Visible    //a[@href='https://www.msb.com.vn/vi/']    15s    # kết quả đầu tiên, không cụ thể là MSB, tìm theo index   -0.1
    Click Element    //a[@href='https://www.msb.com.vn/vi/']

Tắt popup
    Wait Until Element Is Visible
    ...    //source[@srcset='/documents/20121/6432149/Mobile+%281%29-min.png/45e15e61-e0b2-362a-930b-6f1e661a4f9d?t=1681377016095']//ancestor::a//following::span[@class ='pop-up-porlet-close-btn']
    # tối ưu lại xpath -0.1
    Click Element
    ...    //source[@srcset='/documents/20121/6432149/Mobile+%281%29-min.png/45e15e61-e0b2-362a-930b-6f1e661a4f9d?t=1681377016095']//ancestor::a//following::span[@class ='pop-up-porlet-close-btn']

Tên thành công    # keyword???    -0.1
    Wait Until Element Is Visible
    ...    //div[@class = 'col banner-title' and contains(text(), 'Chọn thẻ phù hợp với bạn')]    # có text chính xác rồi thì không dùng contains  -0.2
    ...    5s
    Sleep    10s    # nếu cần chờ, dùng wait     - 0.1
