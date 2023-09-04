*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${GURU PAGE}      https://demo.guru99.com/test/login.html
${TIKI PAGE}        https://tiki.vn
${GOOGLE PAGE}        https://google.com
${GURU CUSTOMER PAGE}      https://demo.guru99.com/telecom/index.html
${BROWSER}          CHROME


*** Keywords ***
Open Webpage guru99    
    Open Browser    ${GURU PAGE}    ${BROWSER}
    Maximize Browser Window
    


Open Webpage tiki        
    Open Browser    ${TIKI PAGE}    ${BROWSER}
    Maximize Browser Window

Open webpage google    
    Open Browser       ${GOOGLE PAGE}    ${BROWSER}
    Maximize Browser Window    

Open Webpage Customer
    Open Browser    ${GURU CUSTOMER PAGE}    ${BROWSER}
    Maximize Browser Window
