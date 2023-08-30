*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***    #tổng trừ    -1.5
[Q1] - Login Guru 99
    [Documentation]    Đăng nhập Guru 99
    [Tags]    login
    Truy cập Guru
    Nhập email password
    Chọn button sign in
    Verify login

[Q2] - Verify Tiki.vn
# đặt documentation cho test case -0.2
    [Tags]    tiki
    Truy cập Tiki.vn
    Tìm kiếm cụm từ "nồi chiên"
    Click vào "nồi chiên không dầu" xuất hiện trong cụm gợi ý tìm kiếm sau khi thực hiện bước 2
    Click vào sản phẩm thứ 4
    Click "Chọn mua"
    Verify popup có chứa "Xin chào"

[Q3] - Verify GG
    [Tags]    msb
    Truy cập google.com
    Tìm kiếm từ khóa "MSB"
    Click vào kết quả tìm kiếm đầu tiên
    Tắt Popup
    Verify trang có chứa "Chọn thẻ phù hợp với bạn"

# nên truyền biến từ test case -1.0
# không nên có dấu cách trước keyword
# lưu ý, 4 space = 1 tab, nên dùng tab
*** Keywords ***
Truy cập Guru
    Open Browser    https://demo.guru99.com/test/login.html    chrome

Nhập email password
    Input Text    //input[@id='email']    yeondethuon@gmail.com
    Input Password    //input[@id='passwd']    88888888

Chọn button sign in
    Click Button    //button[@id='SubmitLogin']

Verify login
    Wait Until Element Is Visible    //h3[contains(text(),'Successfully Logged in...')]

Truy cập Tiki.vn
    Open Browser    https://tiki.vn/    chrome

Tìm kiếm cụm từ "nồi chiên"
    Input Text    //input[@data-view-id='main_search_form_input']    nồi chiên

Click vào "nồi chiên không dầu" xuất hiện trong cụm gợi ý tìm kiếm sau khi thực hiện bước 2
    Wait Until Element Is Visible    //div[normalize-space()='nồi chiên không dầu']    #nên dùng hàm text(), khó quá mới dùng hàm normalize-space()
    Click Element    //div[normalize-space()='nồi chiên không dầu']    #nên dùng hàm text(), khó quá mới dùng hàm normalize-space()

Click vào sản phẩm thứ 4
    Wait Until Element Is Visible    //div[@data-view-id='product_list_container']/div[4]    5s
    Click Element    //div[@data-view-id='product_list_container']/div[4]

Click "Chọn mua"
    Wait Until Element Is Visible    //button[@class='btn btn-add-to-cart']    5s
    Click Element    //button[@class='btn btn-add-to-cart']

Verify popup có chứa "Xin chào"
    Wait Until Element Is Visible    //h4[contains(text(),'Xin chào,')]

Truy cập google.com
    Open Browser    https://www.google.com/    chrome

Tìm kiếm từ khóa "MSB"
    Input Text    //textarea[@id='APjFqb']    MSB
    Press Keys    //textarea[@id='APjFqb']    ENTER    # cũng là 1 cách, nên click button nếu có

Click vào kết quả tìm kiếm đầu tiên
    Wait Until Element Is Visible    //div[@id='search']//a[@href='https://www.msb.com.vn/vi/']    5s    # kết quả đầu tiên, không cụ thể là MSB, tìm theo index   -0.1
    Click Element    //div[@id='search']//a[@href='https://www.msb.com.vn/vi/']

Tắt Popup
    Click Element    //div[@id='fragment-34202-joci']//span[@class='pop-up-porlet-close-btn']
    Wait Until Element Is Not Visible    //div[@id='fragment-34202-joci']//span[@class='pop-up-porlet-close-btn']    3s

 Verify trang có chứa "Chọn thẻ phù hợp với bạn"
    Wait Until Element Is Visible    //div[contains(text(),'Chọn thẻ phù hợp với bạn')]
