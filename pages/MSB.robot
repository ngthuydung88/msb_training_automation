*** Variables ***
# google.com
${input_google}         //textarea[@name="q"]
${MSB_area1}            //div[@id="rso"]/div[1]//a/*[text()="MSB"]

# msb.com.vn
${X_button}
...    //img[@src="/documents/20121/326617/Web_565x273.png/3f82730c-7017-c689-ca8d-5b87ef92e9a8"]/ancestor::a/following-sibling::span
${label_WelcomeMSB}     //div[@class="main-banner-section"]//div[text()="Chọn thẻ phù hợp với bạn"]
