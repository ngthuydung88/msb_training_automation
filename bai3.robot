*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
[AU_01] - Tìm kiếm từ khóa MSB
    [Documentation]    Tìm kiếm từ khóa MSB
    [Tags]    tc_01
    Truy cập trang google.com
    Sleep    2s    # nếu cần chờ, dùng wait     - 0.1
    Nhập vào ô tìm kiếm "MSB"
    Sleep    2s    # nếu cần chờ, dùng wait     - 0.1
    Click vào gợi ý đầu tiên
    Click vào kết quả đầu tiên
    Sleep    5s    # nếu cần chờ, dùng wait     - 0.1
    Tắt popup
    Verify trang có chứa "Chọn thẻ phù hợp với bạn"

    #Verify trang có chứa "Chọn thẻ phù hợp với bạn"


*** Keywords ***
Truy cập trang google.com
    Open Browser    https://google.com    chrome
    Maximize Browser Window

Nhập vào ô tìm kiếm "MSB"
    Input Text    //textarea[@name="q"]    MSB

Click vào gợi ý đầu tiên
    Click Element    //div[@id="jZ2SBf"]

Click vào kết quả đầu tiên
    Wait Until Element Is Visible    //div[@id="rso"]/div[1]//a/*[text()="MSB"]    10s
    Click Element    //div[@id="rso"]/div[1]//a/*[text()="MSB"]    # kết quả đầu tiên, không cụ thể là MSB, tìm theo index   -0.1

Tắt popup
    Wait Until Element Is Visible    //*[@id="fragment-34902-chcv"]/div/div/div/span    5s    # tối ưu lại xpath -0.1
    Click Element    //div[@id="fragment-34202-joci"]/div/div/div/span

Verify trang có chứa "Chọn thẻ phù hợp với bạn"
    Wait Until Element Is Visible    //div[contains(text(),'Chọn thẻ phù hợp với bạn')]    10s    # k cần dùng contains   -0.1
