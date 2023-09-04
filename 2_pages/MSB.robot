*** Variables ***

# google.com
${input_google}    //textarea[@name="q"]
${MSB_area1}    //div[@id="rso"]/div[1]//a/div

# msb.com.vn
${X_button}    //img/ancestor::a/following-sibling::span[@class="pop-up-porlet-close-btn"]
${label_WelcomeMSB}        //div[@class="main-banner-section"]//div[text()="Chọn thẻ phù hợp với bạn"]