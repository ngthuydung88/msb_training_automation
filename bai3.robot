*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
[AU_1] 1 Truy cập MSB từ GG và tìm kiếm từ khóa
    [Documentation]    Truy cập MSB từ GG và tìm kiếm từ khóa
    [Tags]    tc_01
    Truy cập trang tìm kiếm GG
    Nhập vào ô tìm kiếm text "MSB"
    Click gợi ý tìm kiếm thứ nhất
    Click kết quả tìm kiếm đầu tiên
    Sleep    5s    # nếu cần chờ, dùng wait     - 0.1
    Tắt popup
    Text trên màn hình có chứa "Chọn thẻ phù hợp với bạn"


*** Keywords ***
Truy cập trang tìm kiếm GG
    Open Browser    https://www.google.com.vn    chrome

Nhập vào ô tìm kiếm text "MSB"
    Input Text    //textarea[@name="q"]    MSB

Click gợi ý tìm kiếm thứ nhất
    Wait Until Element Is Visible    //*[@id="jZ2SBf"]    5s
    Click Element    //*[@id="jZ2SBf"]

Click kết quả tìm kiếm đầu tiên
    Wait Until Element Is Visible    //div[@id="rso"]/div[1]//a/h3[contains(text(),'MSB')]    10s    # kết quả đầu tiên, không cụ thể là MSB, tìm theo index   -0.1
    Click Element    //div[@id="rso"]/div[1]//a/h3[contains(text(),'MSB')]

Tắt popup
    Wait Until Element Is Visible    //div[@id="fragment-34202-joci"]/div/div/div/span    5s    # tối ưu lại xpath -0.1
    Click Element    //div[@id="fragment-34202-joci"]/div/div/div/span

Text trên màn hình có chứa "Chọn thẻ phù hợp với bạn"
    Wait Until Element Is Visible    //div[contains(text(),'Chọn thẻ phù hợp với bạn')]    10s
