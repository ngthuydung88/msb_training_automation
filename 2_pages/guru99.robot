*** Variables ***
${input_email}        //label[text()="Email address"]/following-sibling::input
${input_password}      //input[@id="passwd"]
${btn_login}         //button[@id="SubmitLogin"]
${label_success}    //div[@class="error-box"]//h3[text()="Successfully Logged in..."]