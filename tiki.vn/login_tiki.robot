*** Settings ***
Library     SeleniumLibrary

# đặt tên file thành login_tiki làm chi dợ??? -0.2
*** Keywords ***
start tiki
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

finish tiki
    Close Browser
