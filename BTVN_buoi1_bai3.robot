*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
[AUTO_02] bai3
    [Documentation]    bai3
    [Tags]    bai3_tag
    Truy cập google.com
    Tìm kiếm từ khóa "MSB"
    Sleep    5s    # nếu cần chờ, dùng wait     - 0.1
    Click vào gợi ý đầu tiên
    Sleep    5s    # nếu cần chờ, dùng wait     - 0.1
    Click vào kết quả tìm kiếm đầu tiên
    Sleep    5s    # nếu cần chờ, dùng wait     - 0.1
    Tắt Popup
    Sleep    5s    # nếu cần chờ, dùng wait     - 0.1
    Verify trang có chứa "Chọn thẻ phù hợp với bạn"


*** Keywords ***
Truy cập google.com
    Open Browser    https://www.google.com/    chrome
    Maximize Browser Window

Tìm kiếm từ khóa "MSB"
    Input Text    //textarea[@id='APjFqb']    MSB

Click vào gợi ý đầu tiên
    Wait Until Element Is Visible    //div[@id="jZ2SBf"]
    Click Element    //div[@id="jZ2SBf"]

Click vào kết quả tìm kiếm đầu tiên
    Wait Until Element Is Visible    //div[@id="rso"]/div[1]//a//h3[text()='MSB']    # kết quả đầu tiên, không cụ thể là MSB, tìm theo index   -0.1
    Click Element    //div[@id="rso"]/div[1]//a//h3[text()='MSB']

Tắt Popup
    Wait Until Element Is Visible    //div[@id="fragment-34202-joci"]/div/div/div/span    # tối ưu lại xpath -0.1
    Click Element    //div[@id="fragment-34202-joci"]/div/div/div/span

Verify trang có chứa "Chọn thẻ phù hợp với bạn"
    Wait Until Element Is Visible    //div[contains(text(),'Chọn thẻ phù hợp với bạn')]    # có text chính xác rồi thì không dùng contains  -0.2
