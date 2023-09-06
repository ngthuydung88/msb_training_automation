** Settings **
Resource    ../6_Report/import.robot
  
Test Setup    truy cập trang google.com    https://www.google.com/    firefox
Test Teardown    Close Browser

** Test Cases **
[TCs_01] - Tìm kiếm thông tin MSB
    [Documentation]    Tìm kiếm thông tin MSB
    [Tags]    demo_google.com
    Tìm kiếm thông tin MSB    MSB    20s