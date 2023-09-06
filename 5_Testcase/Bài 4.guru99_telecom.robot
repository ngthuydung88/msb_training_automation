*** Settings ***
Resource    ../6_Report/import.robot

Test Setup    Mở trang web   https://demo.guru99.com/telecom/index.html    firefox
Test Teardown    Close Browser

** Test Cases **
[TCs_01] - Thêm thông tin gói cước telecom
    [Documentation]    Thêm thông tin gói cước telecom 
    [Tags]    demo.guru99.com/telecom
    Điền form    Hang    Anh    Hanglt@gmail.com    Ha Noi    0967140000    20s

