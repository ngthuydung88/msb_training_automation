*** Settings ***
Library     SeleniumLibrary

# đặt tên file thành login làm chi dợ??? -0.2
*** Keywords ***
Start test
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

finish test
    Close Browser
