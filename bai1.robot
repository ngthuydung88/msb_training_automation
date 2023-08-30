*** Settings ***
Library     SeleniumLibrary


# thêm file .gitignore để thêm các file không đẩy lên git như .png, output.xml    -0.2
*** Variables ***
# biết đặt variable riêng +0.2
${url}          https://demo.guru99.com/test/login.html
${browser}      chrome


*** Test Cases ***
[TC_01] - Open Guru 99
    [Documentation]    Mở Guru 99
    [Tags]    open_guru
    Open Guru 99    ${url}    ${browser}
    Maximize Browser Window

[TC_02] - Input login Guru 99
    [Documentation]    Đăng nhập Guru 99
    [Tags]    input_login_guru
    Open Guru 99    ${url}    ${browser}
    Maximize Browser Window
    Input Email    //input[@id='email']    binhttt4@gmail.com
    Input Password    //input[@id='passwd']    binhthu
    Sleep    10s    # nếu cần chờ, dùng wait     - 0.1

[TC_03] - Login Guru 99
    [Documentation]    Đăng nhập Guru 99
    [Tags]    login_guru
    Open Guru 99    ${url}    ${browser}
    Maximize Browser Window
    Input Email    //input[@id='email']    binhttt4@gmail.com
    Input Password    //input[@id='passwd']    binhthu
    Sleep    10s
    Click button Login    //button[@id='SubmitLogin']
    Login Success    Successfully Logged in...


*** Keywords ***
Open Guru 99
    [Arguments]    ${url_guru}    ${browser_chrome}
    Open Browser    ${url_guru}    ${browser_chrome}

Input Email
    [Arguments]    ${locator}    ${text}
    Input Text    ${locator}    ${text}

Input Password
    [Arguments]    ${locator}    ${text}
    Input Text    ${locator}    ${text}

Click button Login
    [Arguments]    ${tim_kiem_btn}
    Click Button    ${tim_kiem_btn}

Login Success
    [Arguments]    ${text}
    Wait Until Element Is Visible    //h3[contains(text(), "${text}")]    5s
