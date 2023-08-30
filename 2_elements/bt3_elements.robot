*** Variables ***
${google_textbox}           //textarea[@id='APjFqb']
# nên dùng hàm text(), khó quá mới dùng hàm normalize-space()
${first_result}
...    //h3[normalize-space()='MSB']
${close_btn}
...                         //source[@srcset='/documents/20121/6432149/Mobile+%281%29-min.png/45e15e61-e0b2-362a-930b-6f1e661a4f9d?t=1681377016095']//ancestor::a//following::span[@class ='pop-up-porlet-close-btn']    # tối ưu lại xpath -0.1
${text_matching_card}
...                         //div[@data-lfr-editable-id = 'banner-title' and contains(text(), 'Chọn thẻ phù hợp với bạn')]    # tối ưu lại xpath
