*** Settings ***
Resource    ../import.robot


*** Test Cases ***       # thêm file .gitignore để thêm các file không đẩy lên git như .png, output.xml    -0.2
# biết chia theo từng file từng folder theo từng mục đích +0.5
bai1
    [Documentation]    Bài số 1
    [Tags]    bai_demo_1
    Open Webpage guru99
    Login guru99
    ...    ${valid_username}
    ...    ${valid_password}
    Verify text
    Close Browser

bai2
    [Documentation]    Bài số 2
    [Tags]    bai_demo_2
    Open Webpage tiki
    search keyword
    ...    ${tiki_type}
    Choice key
    Choice by element number
    Click buynow Button
    Verify text Hello
    Close Browser

bai3
    [Documentation]    Bài số 3
    [Tags]    bai_demo_3
    Open webpage google
    search MSB
    ...    ${MSB_keyword}
    Send ENTER key
    Choice 1st MSB area
    Close by button X
    Verify text Welcome MSB
    Close Browser
