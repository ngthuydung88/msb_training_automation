*** Settings ***
Resource    ../6_report/import.robot

Test Setup    Truy cập vào trang tiki    https://tiki.vn/    chrome 
Test Teardown    Close Browser

*** Test Cases ***
[TC_01] - Script Automation Test Guru 99 
    [Documentation]    Verify search tiki
    [Tags]    bt1_tiki    

    input keywords    nồi chiên
    click keywords        //div[text()='nồi chiên không dầu']
    click find second product    4
    click buy button    Chọn mua
    verify key    Xin chào,
