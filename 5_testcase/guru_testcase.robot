*** Settings ***
Resource    ../6_report/import.robot

Test Setup    Truy cập vào trang guru99    https://demo.guru99.com/test/login.html    chrome
Test Teardown    Close Browser

*** Test Cases ***
[TC_01] - Script Automation Test Guru 99 
    [Documentation]    verify the first line
    [Tags]    bt1_guru    
  
    login guru99 thành công    ngthuydung88@gmail.com    Baochau@1
    Kiểm thử màn hình hiển thị chờ    Successfully Logged in...

