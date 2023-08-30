*** Variables ***
${search_form}          //input[@data-view-id = 'main_search_form_input']
${search_btn}           //button[@data-view-id = 'main_search_form_button']
# nên dùng hàm text(), khó quá mới dùng hàm normalize-space()
${search_keyword}
...    //div[normalize-space(text())='nồi chiên không dầu']
# nếu là cha con thì dùng /, không dùng // ở đoạn div[4]    -0.2
${product_4}
...    //div[@data-view-id="product_list_container"]//div[4]
${add_to_cart_btn}      //button[@data-view-id = 'pdp_add_to_cart_button']
# cần check chính xác text Xin chào, thì là dùng text(), không nên dùng contains    -0.1
${hello_text}
...    //h4[contains(text(),'Xin chào,')]
