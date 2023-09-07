*** Settings ***
Library    SeleniumLibrary


*** Variables ***

${btn_addCustomer}    //h3/a[text()='Add Customer']

${input_firstname}    //input[@id="fname"]
${input_lastname}    //input[@id="lname"]
${input_email}    //input[@id="email"]
${input_message}    //textarea[@id="message"]
${input_mobile}    //input[@id="telephoneno"]
${btn_submit}    //input[@name="submit"]

${lbl_CustomerID}        //b[text()="Customer ID"]/ancestor::td/following-sibling::td
${btn_Add Tarif}    //h3/a[text()='Add Tariff Plan to Customer']
${btn_Home}        //a[@class='button' and @href='index.html']

${input_customerID}    //input[@id="customer_id"]  
${lbl_checkFinal}        //h2[text()='Approved Tariff Plans'] 
