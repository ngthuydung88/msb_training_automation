*** Settings ***
Library     SeleniumLibrary

# thêm file .gitignore để thêm các file không đẩy lên git như .png, output.xml    -0.2
# nên truyền biến từ test case -1.0

*** Test Cases ***
[AU_01] - Đăng nhập vào Guru 99
    [Documentation]    Đăng nhập vào Guru 99
    [Tags]    tc_01
    Truy cập trang Guru 99
    Sleep    2s
    Nhập email address
    Nhập password
    Click button Sign in
    Verify màn hình có chứa dòng chữ "Successfully Logged in..."
    #Sleep    5s     # suýt bị -0.1


*** Keywords ***
Truy cập trang Guru 99
    Open Browser    https://demo.guru99.com/test/login.html    chrome

Nhập email address
    Input Text    //input[@id='email']    hiennt60

Nhập password
    Input Text    //input[@id='passwd']    demo123

Click button Sign in
    Click Button    //button[@id="SubmitLogin"]

Verify màn hình có chứa dòng chữ "Successfully Logged in..."
    Wait Until Element Is Visible    //h3[contains(text(),'Successfully Logged in...')]    10s
