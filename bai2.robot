*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
[AUT - 1] - Sản phẩm tìm kiếm thứ 4
    [Documentation]    Sản phẩm tìm kiếm thứ 4
    [Tags]    tc_01
    Truy cập trang Tiki.vn
    Nhập vào ô tìm kiếm text "nồi chiên"
    Click chọn sản phẩm thứ 4
    Sleep    5s    # nếu cần chờ, dùng wait     - 0.1
    Click button "Chọn mua"
    Sleep    10s    # nếu cần chờ, dùng wait     - 0.1
    Text trên màn hình có chứa "Xin chào"


*** Keywords ***
Truy cập trang Tiki.vn
    Open Browser    https://tiki.vn/    chrome

Nhập vào ô tìm kiếm text "nồi chiên"
    Input Text    //input[@data-view-id="main_search_form_input"]    nồi chiên
    Wait Until Element Is Visible    //div[text()='nồi chiên không dầu']    20s
    Click Element    //div[text()='nồi chiên không dầu']

Click chọn sản phẩm thứ 4
    Wait Until Element Is Visible    //div[@data-view-id="product_list_container"]/div[4]    5s
    Click Element    //div[@data-view-id="product_list_container"]/div[4]

Click button "Chọn mua"
    Click Button    //button[text()='Chọn mua']

Text trên màn hình có chứa "Xin chào"
    Wait Until Element Is Visible    //h4[contains(text(),'Xin chào')]    10s
