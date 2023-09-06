*** Settings ***
Resource    ../6_Report/import.robot

Test Setup    Mở trang web bằng trình duyệt    https://demo.guru99.com/test/login.html    firefox
Test Teardown    Close Browser

*** Test Cases ***
[TCs_01] - Đăng nhập Guru 99
    [Documentation]    Đăng nhập Guru 99
    [Tags]    demo_Guru99_tagro
    Login guru99 thành công    Hanglt@gmail.com    11111111    20s
    Verify màn hình    20s