*** Settings ***
Resource    ../6_report/import.robot

Test Setup     Truy cập google    https://www.google.com/    chrome    
Test Teardown    Close Browser


*** Test Cases ***
[AUT] - Automation Test google
    [Documentation]    truy cap google
    [Tags]    bt3_google

    Tìm kiếm từ khóa "MSB"    //textarea[@id='APjFqb']    MSB+RETURN 
    Click search    (//a[@jsname="qOiK6e"])[1]
    Out Popup    (//div[@class='pop-up-porlet-banner'])[2]//span
    Verify trang có chứa    Chọn thẻ phù hợp với bạn
