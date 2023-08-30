*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
[TCs_01] - Mua sản phẩm Nồi chiên không dầu
    [Documentation]    Mua sản phẩm Nồi chiên không dầu
    [Tags]    demo_tiki.vn
    truy cập vào trang tiki.vn
    nhập vào ô tìm kiếm "nồi chiên"
    click chọn từ phần gợi ý sản phẩm "nồi chiên không dầu"
    click chọn sản phẩm thứ 4
    Click "Chọn mua"
    Verify popup có chứa "Xin chào"


*** Keywords ***
truy cập vào trang tiki.vn
    Open Browser    https://tiki.vn/    firefox

nhập vào ô tìm kiếm "nồi chiên"
    Input Text    //input[@data-view-id="main_search_form_input"]    nồi chiên

click chọn từ phần gợi ý sản phẩm "nồi chiên không dầu"
    Wait Until Element Is Visible    //div[text()="nồi chiên không dầu"]    10s
    Click Element    //div[text()="nồi chiên không dầu"]

click chọn sản phẩm thứ 4
    Wait Until Element Is Visible    //div[@data-view-id="product_list_container"]/div[4]    20s
    Click Element    //div[@data-view-id="product_list_container"]/div[4]

Click "Chọn mua"
    Wait Until Element Is Visible    //button[text()='Chọn mua']    10s
    Click Element    //button[@data-view-id="pdp_add_to_cart_button"]

Verify popup có chứa "Xin chào"
    Wait Until Element Is Visible    //h4[contains(text(), "Xin chào")]    # có text chính xác rồi thì không dùng contains  -0.2
