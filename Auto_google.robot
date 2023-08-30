*** Settings ***
Library     SeleniumLibrary

# nên truyền biến từ test case -1.0
*** Test Cases ***
[TCs_01] - Tìm kiếm thông tin MSB
    [Documentation]    Tìm kiếm thông tin MSB
    [Tags]    demo_google.com
    truy cập vào trang google.com
    nhập vào ô tìm kiếm từ khóa "MSB"
    click tìm kiếm với từ khóa MSB
    Click vào kết quả tìm kiếm đầu tiên
    Tắt popup
    Verify trang có chứa "Chọn thẻ phù hợp với bạn"
    Sleep    5s    # nếu cần chờ, dùng wait     - 0.1
    Close Browser


*** Keywords ***
truy cập vào trang google.com
    Open Browser    https://www.google.com/    firefox

nhập vào ô tìm kiếm từ khóa "MSB"
    Input Text    //textarea[@id="APjFqb"]    MSB

click tìm kiếm với từ khóa MSB
    Wait Until Element Is Visible    //div[@id="jZ2SBf"]    10s
    Click Element    //div[@id="jZ2SBf"]

click vào kết quả tìm kiếm đầu tiên
    Wait Until Element Is Visible    //div[@id="rso"]//div[@class="g"]//a/h3    10s    # tìm theo index   -0.1
    Click Element    //div[@id="rso"]//div[@class="g"]//a/h3

Tắt Popup
    Wait Until Element Is Visible    //span[@class='pop-up-porlet-close-btn']    30s
    Execute JavaScript    document.querySelector('.pop-up-porlet-close-btn').click();    #hay + 0.5

Verify trang có chứa "Chọn thẻ phù hợp với bạn"
    Wait Until Element Is Visible    //div[contains(text(), "Chọn thẻ phù hợp với bạn")]    # có text chính xác rồi thì không dùng contains  -0.2
