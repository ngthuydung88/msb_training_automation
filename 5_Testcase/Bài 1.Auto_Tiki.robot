*** Settings ***
Resource    ../6_Report/import.robot

Test Setup    Mở trang web Tiki    https://tiki.vn/    firefox
Test Teardown    Close Browser

** Test Cases **
[TCs_01] - Mua sản phẩm Nồi chiên không dầu
    [Documentation]    Mua sản phẩm Nồi chiên không dầu 
    [Tags]    demo_tiki.vn
    Mua sản phẩm nồi chiên không dầu    nồi chiên    20s