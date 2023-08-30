*** Variables ***
# nếu đã tách riêng ra thì tách element và test data ra -0.2
${email_textbox}        //input[@id = 'email']
${password_textbox}     //input[@id = 'passwd']
${signin_btn}           //button[@id = 'SubmitLogin']
${email}                linhdt1705@gmail.com
${password}             Vungoimora1!
${login_txt}            //h3[contains(text(),'Successfully Logged in...')]
