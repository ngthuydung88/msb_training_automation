*** Variables ***


${btn_addCustomer}        //h3/a[text()="Add Customer"]
${btn_addPlan}                //h3/a[text()="Add Tariff Plan to Customer"]
${btn_Home}                //ul[@class='actions']//a[@class='button' and @href='index.html']

${ipn_Done}            //label[contains(text(),'Done')]
${ipn_Pending}        //label[@for="pending"]/preceding-sibling::input
${ipn_FName}        //input[@id="fname"]
${ipn_LName}        //input[@id="lname"]
${ipn_Email}            //input[@id="email"]
${ipn_Address}        //textarea[@id="message"]
${ipn_Mobile}            //input[@id="telephoneno"]

${btn_Submit}            //ul[@class="actions"]//*[@type="submit"]
${btn_Reset}             //ul[@class="actions"]//*[@type="reset"]


${lbl_ID}     //b[text()='Customer ID']//ancestor::td/following-sibling::td


${ipn_CustormerID}        //input[@id="customer_id"]

${btn_PlanSubmit}        //div/*[@type="submit"]

${lbl_approved}        //h2[text()='Approved Tariff Plans']