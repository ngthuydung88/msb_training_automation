*** Settings ***
Resource    ../pages/tiki.robot
Library     SeleniumLibrary


*** Keywords ***
search keyword
    [Arguments]    ${value_type}
    Click Element    ${input_search}
    Input Text    ${input_search}    ${value_type}
    Sleep    2s    # nếu cần chờ, dùng wait     - 0.1

Choice key
    Click Element    ${choice_value}
    Sleep    5s     # nếu cần chờ, dùng wait     - 0.1

Choice by element number
    Click Element    ${product_4}
    Sleep    3s        # nếu cần chờ, dùng wait     - 0.1

Click buynow Button
    Mouse Over    //h1[1]
    Click Element    ${btn_BuyNow}
    Sleep    3s         # nếu cần chờ, dùng wait     - 0.1

Verify text Hello
    Page Should Contain Element    ${label_hello}
