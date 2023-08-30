*** Settings ***
Library     SeleniumLibrary

# nên truyền biến từ test case -1.0
# documentation cho test case -0.2
# thêm file .gitignore để thêm các file không đẩy lên git như .png, output.xml    -0.2
*** Test Cases ***
Login_success
    [Tags]    login
    Truy cập trang web guru
    Nhập username/password bất kỳ
    Bấm signIN
    verify login thành công


*** Keywords ***
Truy cập trang web guru
    Open Browser    https://demo.guru99.com/test/login.html    chrome
    Maximize Browser Window

Nhập username/password bất kỳ
    Input Text    //input[@id='email']    dieungan@gmail.com
    Input Password    //input[@id='passwd']    123

Bấm signIN
    Click Button    //button[@id='SubmitLogin']

verify login thành công
    Page Should Contain Element    //h3[normalize-space()='Successfully Logged in...']    # nên dùng hàm text(), khó quá mới dùng hàm normalize-space()
