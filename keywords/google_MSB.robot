*** Settings ***
Resource    ../pages/MSB.robot
Library     SeleniumLibrary


*** Keywords ***
search MSB
    [Arguments]    ${google_keyword}
    Click Element    ${input_google}
    Input Text    ${input_google}    ${google_keyword}

Send ENTER key
    Press Keys    ${input_google}    ENTER      # cũng là 1 cách, nên click button nếu có
    Sleep    2s

Choice 1st MSB area
    Click Element    ${MSB_area1}    # kết quả đầu tiên, không cụ thể là MSB, tìm theo index   -0.1
    Sleep    2s

Close by button X
    Wait Until Element Is Visible    ${X_button}      # tối ưu lại xpath   -0.1
    Click Element    ${X_button}
    Sleep    2s    # nếu cần chờ, dùng wait     - 0.1

Verify text Welcome MSB
    Page Should Contain Element    ${label_WelcomeMSB}       #tối ưu lại xpath
