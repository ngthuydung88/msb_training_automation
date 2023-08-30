*** Settings ***
Resource    ../imports.robot
Resource    ../8_imports/bt3.robot


*** Test Cases ***
Automation bài tập 1
# biết chia theo từng file từng folder theo từng mục đích +0.5
# thêm file .gitignore để thêm các file không đẩy lên git như .png, output.xml    -0.2
    [Documentation]    Verify Guru99
    [Tags]    bt1    unit1
# Test case viết các step theo như file BTVN, không viết mỗi 1 keyword như này -0.3
    Verify Guru99
