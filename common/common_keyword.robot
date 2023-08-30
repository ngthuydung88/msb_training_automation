*** Settings ***
Library     SeleniumLibrary


*** Variables ***
# tất các các biến dấu space thay bằng dấu _ -0.5
${GURU PAGE}        https://demo.guru99.com/test/login.html
${TIKI PAGE}        https://tiki.vn
${GOOGLE PAGE}      https://google.com
${BROWSER}          CHROME


*** Keywords ***
Open Webpage guru99
    Open Browser    ${GURU PAGE}    ${BROWSER}
    Maximize Browser Window
    Sleep    3s    # nếu cần chờ, dùng wait     - 0.1

Open Webpage tiki
    Open Browser    ${TIKI PAGE}    ${BROWSER}
    Maximize Browser Window
    Sleep    5s    # nếu cần chờ, dùng wait     - 0.1

Open webpage google
    Open Browser    ${GOOGLE PAGE}    ${BROWSER}
    Maximize Browser Window
    Sleep    5s       # nếu cần chờ, dùng wait     - 0.1
