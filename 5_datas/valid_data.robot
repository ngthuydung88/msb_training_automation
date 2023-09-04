*** Variables ***

#Guru99
${valid_username}    admin@gmail.com
${valid_password}    123456aA@

#Guru99_Customer
${BackGr_Choice}        Done
# ${BackGr_Choice}        Pending
${firstname_valid}           Lam
${lastname_valid}           Nguyen
${email_valid}                abc@123.com
${address_valid}              123 abc   
${mobile_number_valid}        0936276883


${CustomerID_valid}   Initial Value

#Tiki
${tiki_type}    nồi chiên    
${tiki_choice}    nồi chiên không dầu


# Google
${MSB_keyword}    MSB



*** Keywords ***
Set Shared Variable
    [Arguments]    ${value}
    Set Global Variable    ${CustomerID_valid}    ${value}

Get Shared Variable
    [Return]    ${CustomerID_valid}


