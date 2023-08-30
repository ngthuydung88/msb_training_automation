*** Settings ***
Library     SeleniumLibrary

# steps cách nhau làm gì?  -0.3
*** Test Cases ***
TC_timkiem
    Truy cap trang tiki
    Tai thanh search nhap tu khoa "nồi chiên"
    Click vào "nồi chiên không dầu" xuất hiện trong cụm gợi ý tìm kiếm sau khi thực hiện bước 2
    Click vào sản phẩm nồi chiên thứ 4
    Click "Chọn mua"
    sleep    10s    # nếu cần chờ, dùng wait     - 0.1
    Verify popup có chứa "Xin chào"


*** Keywords ***
Truy cap trang tiki
    Open Browser    https://tiki.vn/    chrome
    Maximize Browser Window

Tai thanh search nhap tu khoa "nồi chiên"
    Input Text    //input[@data-view-id='main_search_form_input']    nồi chiên

Click vào "nồi chiên không dầu" xuất hiện trong cụm gợi ý tìm kiếm sau khi thực hiện bước 2
    Wait Until Element Is Visible    //div[normalize-space()='nồi chiên không dầu']    8s    # nên dùng hàm text(), khó quá mới dùng hàm normalize-space()
    Click Element    //div[normalize-space()='nồi chiên không dầu']

Click vào sản phẩm nồi chiên thứ 4
    Wait Until Element Is Visible    //div[@data-view-id='product_list_container']/child::div[4]    8s
    Click Element    //div[@data-view-id='product_list_container']/child::div[4]

Click "Chọn mua"
    Wait Until Element Is Visible    //button[@data-view-id='pdp_add_to_cart_button']    8s
    Click Button    //button[@data-view-id='pdp_add_to_cart_button']

Verify popup có chứa "Xin chào"
    Wait Until Element Is Visible    xpath=//h4[normalize-space()='Xin chào,']    # nên dùng hàm text(), khó quá mới dùng hàm normalize-space()
