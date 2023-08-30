*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
[AUT_01]- Tự tạo 1 Script Automation Test Đăng nhập Guru 99
    [Documentation]    Tự tạo 1 Script Automation Test Đăng nhập Guru 99
    [Tags]    guru99
    Truy cập Link    https://demo.guru99.com/test/login.html    chrome
    Nhập email    //input[@id="email"]    lynt27@msb.com.vn
    Sleep    1s    # nếu cần chờ, dùng wait     - 0.1
    Nhập password    //input[@id="passwd"]    123456aA@
    Sleep    1s    # nếu cần chờ, dùng wait     - 0.1
    Click button Login    //button[@id="SubmitLogin"]
    Sleep    2s    # nếu cần chờ, dùng wait     - 0.1
    Verify màn hình có chứa dòng chữ    //div[@class="error-copy"]/h3[contains(text(),'Successfully Logged in...')]    # dòng chữ, không phải xpath -0.1

[AUT_02]- Chuyển đổi sang Script Automation Test
    [Documentation]    Chuyển đổi sang Script Automation Test
    [Tags]    tiki
    Truy cập trang    https://tiki.vn/    chrome
    Nhập tìm kiếm cụm từ    //input[@data-view-id="main_search_form_input"]    nồi chiên
    Sleep    1s    # nếu cần chờ, dùng wait     - 0.1
    Click vào giá trị xuất hiện trong cụm gợi ý tìm kiếm sau khi thực hiện bước 2
    ...    //div[text()="nồi chiên không dầu"]
    Sleep    1s    # nếu cần chờ, dùng wait     - 0.1
    Click vào sản phẩm thứ    4
    Sleep    1s    # nếu cần chờ, dùng wait     - 0.1
    Click button Chọn mua    //button[@data-view-id="pdp_add_to_cart_button"]
    Sleep    1s    # nếu cần chờ, dùng wait     - 0.1
    Verify popup có chứa "Xin chào"    //div[@class="heading"]/h4[contains(text(),'Xin chào')]    # có text chính xác rồi thì không dùng contains  -0.2

[AUT_03]- Chuyển đổi sang Script Automation Test
    [Documentation]    Chuyển đổi sang Script Automation Test
    [Tags]    google.com
    Truy cập    https://www.google.com/    chrome
    Tìm kiếm từ khóa "MSB"    //textarea[@id="APjFqb"]    MSB
    Sleep    2s    # nếu cần chờ, dùng wait     - 0.1
    Click vào kết quả tìm kiếm đầu tiên    1
    Sleep    2s    # nếu cần chờ, dùng wait     - 0.1
    Tắt Popup    //div[@id="fragment-34202-joci"]/div[1]/div[1]/div[1]/span    # tối ưu lại xpath -0.1
    Verify trang có chứa "Chọn thẻ phù hợp với bạn"    //div[@data-lfr-editable-id="banner-title"]    # cần verify text, kp xpath -0.1


*** Keywords ***
Truy cập Link
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Nhập email
    [Arguments]    ${locator}    ${text}
    Input Text    ${locator}    ${text}

Nhập password
    [Arguments]    ${locator}    ${password}
    Input Password    ${locator}    ${password}

Click button Login
    [Arguments]    ${button}
    Click Button    ${button}

Verify màn hình có chứa dòng chữ
    [Arguments]    ${text}
    Wait Until Element Is Visible    ${text}
    Sleep    2s    # nếu cần chờ, dùng wait     - 0.1
    Close Browser

Truy cập trang
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Nhập tìm kiếm cụm từ
    [Arguments]    ${locator}    ${text}
    Input Text    ${locator}    ${text}

Click vào giá trị xuất hiện trong cụm gợi ý tìm kiếm sau khi thực hiện bước 2
    [Arguments]    ${value}
    Click Element    ${value}

Click vào sản phẩm thứ
    [Arguments]    ${index}
    Wait Until Element Is Visible    //div[@data-view-id="product_list_container"]/div[${index}]
    Click Element    //div[@data-view-id="product_list_container"]/div[${index}]

Click button Chọn mua
    [Arguments]    ${button}
    Click Button    ${button}

Verify popup có chứa "Xin chào"
    [Arguments]    ${text}
    Wait Until Element Is Visible    ${text}
    Sleep    2s    # nếu cần chờ, dùng wait     - 0.1
    Close Browser

Truy cập
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Tìm kiếm từ khóa "MSB"
    [Arguments]    ${locator}    ${text}
    Input Text    ${locator}    ${text}
    Wait Until Element Is Visible    //div[@id="jZ2SBf"]
    Click Element    //div[@id="jZ2SBf"]

Click vào kết quả tìm kiếm đầu tiên
    [Arguments]    ${index}
    Wait Until Element Is Visible
    ...    //div[@id="rso"]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[${index}]/a    # tối ưu lại xpath -0.1
    Click Element    //div[@id="rso"]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[${index}]/a

Tắt Popup
    [Arguments]    ${button}
    Wait Until Element Is Visible    //div[@id="fragment-34202-joci"]/div[1]/div[1]/div[1]/span    # tối ưu lại xpath -0.1
    Click Element    ${button}

Verify trang có chứa "Chọn thẻ phù hợp với bạn"
    [Arguments]    ${text}
    Wait Until Element Is Visible    ${text}
    Sleep    2s    # nếu cần chờ, dùng wait     - 0.1
    Close Browser