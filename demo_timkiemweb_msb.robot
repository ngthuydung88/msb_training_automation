*** Settings ***
Library     SeleniumLibrary

# steps cách nhau làm gì?  -0.3
*** Test Cases ***
Tc_o1_Truy cập web msb
    Truy cập google.com
    Click vào ô tìm kiềm và nhập từ khóa "MSB"
    Nhấn phím Enter để tìm kiếm
    Sleep    10s    # nếu cần chờ, dùng wait     - 0.1
    Click vào kết quả tìm kiếm đầu tiên
    Tắt Popup
    Verify trang có chứa "Chọn thẻ phù hợp với bạn"


*** Keywords ***
Truy cập google.com
    Open Browser    https://www.google.com/    chrome
    Maximize Browser Window

Click vào ô tìm kiềm và nhập từ khóa "MSB"
    Wait Until Element Is Visible    //textarea[@id='APjFqb']    30s
    Input Text    //textarea[@id='APjFqb']    msb    # //textarea[@title='Tìm kiếm']

Nhấn phím Enter để tìm kiếm
    Press Keys    //textarea[@id='APjFqb']    ENTER    # nên ấn button tìm kiếm nếu có

Click vào kết quả tìm kiếm đầu tiên
    Wait Until Element Is Visible    //div[@id='search']//a[@href='https://www.msb.com.vn/vi/']    5s    # kết quả đầu tiên, không cụ thể là MSB, tìm theo index   -0.1
    Click Element    //div[@id='search']//a[@href='https://www.msb.com.vn/vi/']

Tắt Popup
    Wait Until Element Is Visible    (//span[@class='pop-up-porlet-close-btn'])[2]    5s
    Click Element    (//span[@class='pop-up-porlet-close-btn'])[2]

Verify trang có chứa "Chọn thẻ phù hợp với bạn"
    Wait Until Element Is Visible    (//div[normalize-space()='Chọn thẻ phù hợp với bạn'])[1]    # nên dùng hàm text(), khó quá mới dùng hàm normalize-space()
