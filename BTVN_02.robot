*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
[AUT_02] - Bài tập về nhà 02
    [Documentation]    Bài tập về nhà 02
    [Tags]    btvn_02
    Truy cập trang    https://tiki.vn/    chrome
    Tìm kiếm cụm từ    //input[@data-view-id="main_search_form_input"]    nồi chiên
    Click vào "nồi chiên không dầu" trong gợi ý tìm kiếm bước 2    nồi chiên không dầu
    Click vào sản phẩm thứ    3    # thứ 4  -0.2
    Sleep    10s    # nếu cần chờ, dùng wait     - 0.1
    Click "Chọn mua"    //button[@data-view-id = "pdp_add_to_cart_button"]
    Verify popup có chứa    Xin chào    # đề bài là "Xin chào,"    -0.2
    Sleep    10s    # nếu cần chờ, dùng wait     - 0.1


*** Keywords ***
Truy cập trang
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}

Tìm kiếm cụm từ
    [Arguments]    ${locator}    ${text}
    Input Text    ${locator}    ${text}

Click vào "nồi chiên không dầu" trong gợi ý tìm kiếm bước 2
    [Arguments]    ${text}
    Wait Until Element Is Enabled    # nên dùng Wait Until Element Is Visible
    ...    //a[@data-view-id = "search_suggestion_keyword_item"]/div[text() = "${text}"]
    ...    10s
    Click Element    //a[@data-view-id = "search_suggestion_keyword_item"]/div[text() = "${text}"]

Click vào sản phẩm thứ
    [Arguments]    ${index}
    Wait Until Element Is Enabled    //div [@data-view-id = "product_list_container"]/div[${index}]    10s
    Click Element    //div [@data-view-id = "product_list_container"]/div[${index}]

Click "Chọn mua"
    [Arguments]    ${chon_mua_btn}
    Click Button    ${chon_mua_btn}

Verify popup có chứa
    [Arguments]    ${text}
    Wait Until Element Is Enabled    //h4[contains(text(), '${text}')]    # có text chính xác rồi thì dùng hàm text(), không dùng contains  -0.1
