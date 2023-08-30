*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***         #tổng trừ    -2.0
# đặt tags, documentation cho test case -0.5
[TCS1] Test Đăng nhập Guru 99
    Open link login Guru 99
    Input user name and password
    Click Sign in button
    Verify Login screen

[TCS2] Script Automation Test for Tiki page
    Truy cập trang Tiki.vn
    Tìm kiếm cụm từ "nồi chiên"
    Click vào "nồi chiên không dầu" xuất hiện trong cụm gợi ý tìm kiếm sau khi thực hiện bước 2
    Click vào sản phẩm thứ 4
    Click "Chọn mua"
    Verify popup có chứa "Xin chào"

[TCS3] Script Automation Test for GG
    Truy cập google.com
    Tìm kiếm từ khóa "MSB"
    Click vào kết quả tìm kiếm đầu tiên
    Tắt Popup
    Verify trang có chứa "Chọn thẻ phù hợp với bạn"

# nên truyền biến từ test case -1.0
# không nên có dấu cách trước keyword
# lưu ý, 4 space = 1 tab, nên dùng tab
*** Keywords ***
Open link login Guru 99
    Open Browser    https://demo.guru99.com/test/login.html    chrome

Input user name and password
    Input Text    //input[@id='email']    a1@mailinnator.com
    Input Password    //input[@id='passwd']    111111

Click Sign in button
    Click Button    //button[@id='SubmitLogin']

Verify Login screen
    Wait Until Element Is Visible    //h3[normalize-space()='Successfully Logged in...']

 Truy cập trang Tiki.vn     # có dấu cách trước keyword
    Open Browser    https://tiki.vn/    chrome

 Tìm kiếm cụm từ "nồi chiên"     # có dấu cách trước keyword
    Input Text    //input[@data-view-id='main_search_form_input']    nồi chiên

Click vào "nồi chiên không dầu" xuất hiện trong cụm gợi ý tìm kiếm sau khi thực hiện bước 2
    Wait Until Element Is Visible    //div[normalize-space()='nồi chiên không dầu']        # nên dùng hàm text(), khó quá mới dùng hàm normalize-space()
    Click Element    //div[normalize-space()='nồi chiên không dầu']

Click vào sản phẩm thứ 4
    Wait Until Element Is Visible    //div[@data-view-id='product_list_container']/div[4]    5s
    Click Element    //div[@data-view-id='product_list_container']/div[4]

Click "Chọn mua"
    Wait Until Element Is Visible    //button[@class='btn btn-add-to-cart']    5s
    Click Element    //button[@class='btn btn-add-to-cart']

Verify popup có chứa "Xin chào"
    Wait Until Element Is Visible    //h4[normalize-space()='Xin chào,']        #nên dùng hàm text(), khó quá mới dùng hàm normalize-space()

Truy cập google.com
    Open Browser    https://www.google.com/    chrome

Tìm kiếm từ khóa "MSB"
    Input Text    //textarea[@title='Tìm kiếm']    MSB
    Wait Until Element Is Enabled    //ul[@role='listbox']/li[1]    5s         # nhỡ từ khóa đấy không nằm trong list recommnend thì sao? nên ấn button tìm kiếm -0.2
    Click Element    //ul[@role='listbox']/li[1]

Click vào kết quả tìm kiếm đầu tiên
    Wait Until Element Is Visible    //div[@id='search']//a[@href='https://www.msb.com.vn/vi/']    5s        # kết quả đầu tiên, không cụ thể là MSB, tìm theo index   -0.1
    Click Element    //div[@id='search']//a[@href='https://www.msb.com.vn/vi/']

Tắt Popup
    Click Element    //div[@id='fragment-34202-joci']//span[@class='pop-up-porlet-close-btn']

 Verify trang có chứa "Chọn thẻ phù hợp với bạn"
    Wait Until Element Is Visible    //div[@class='col banner-title']         # //div[text() = "Chọn thẻ phù hợp với bạn"]    -0.2
