*** Settings ***
Resource            ../import.robot
# Library           RequestsLibrary



*** Test Cases ***
# bai1
#     [Documentation]     Bài số 1
#     [Tags]     guru1_demo
#     Open Webpage guru99
#     Login guru99    
#     ...    ${valid_username}   
#     ...    ${valid_password}
#     Verify text
#     Close Browser


bai2
    [Documentation]     Bài demo tiki
    [Tags]     tiki_demo
    Open Webpage tiki
    search keyword   
    ...        ${tiki_type}
    Choice key
    Choice by element number
    Click buynow Button
    Verify text Hello
    Close Browser

bai3
    [Documentation]     Bài demo tìm kiếm MSB
    [Tags]     MSB_demo
    Open webpage google    
    search MSB    
    ...    ${MSB_keyword}
    Send ENTER key    
    Choice 1st MSB area        
    Close by button X    
    Verify text Welcome MSB    
    Close Browser


bai4
    [Documentation]     Bài thêm Customer và check Plan trên Guru
    [Tags]     guru2_demo
    Open Webpage Customer
    Choice Add Customer menu    
    Insert Info        
    ...    ${BackGr_Choice}     
    ...    ${firstname_valid}       
    ...    ${lastname_valid}    
    ...    ${email_valid}    
    ...    ${address_valid}    
    ...    ${mobile_number_valid}
    Get ID    
    Choice Add Plan menu
    Enter ID and Submit   
    Verify text in Plan Page
    Close Browser


