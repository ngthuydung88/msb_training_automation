*** Settings ***
Resource    ../imports.robot
Resource    ../8_imports/bt3.robot


*** Test Cases ***
Automation bài tập 2
    [Documentation]    Verify popup tiki
    [Tags]    bt2    unit1
# Test case viết các step theo như file BTVN, không viết mỗi 1 keyword như này -0.3
    Verifiy popup Tiki
