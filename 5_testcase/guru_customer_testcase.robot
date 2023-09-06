*** Settings ***
Resource    ../6_report/import.robot

Test Setup    login vào trang    https://demo.guru99.com/telecom/index.html    chrome
Test Teardown    Close Browser

*** Test Cases ***
[TC_01] - Verify Guru customer
    [Documentation]    verify shows text
    [Tags]    step1
    
    Chọn thêm khách hàng
    keyword tham số truyền vào    Done    Dung    nguyen    ngthuydung88@gmail.com    dghdhdfhhew    0777222767

    Lấy Customer ID

    Ấn nút Add Tariff Plan to Customer

    Nhập Customer ID vừa tạo Nhấn Submit

    Kiểm tra text hiển thị: Approved Tariff Plans
