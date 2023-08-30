*** Settings ***
Library     SeleniumLibrary
Resource    ../Google/keywork_google.robot
Resource    ../Google/login.robot

# thêm file .gitignore để thêm các file không đẩy lên git như .png, output.xml    -0.2
# biết chia theo từng file từng folder theo từng mục đích + 0.5
*** Test Cases ***
[AUT] - Automation Test google
    [Documentation]    truy cap google
    [Tags]    functional    #tag chưa rõ nghĩa    -0.2
    Truy cập google    https://www.google.com/    chrome
    Tìm kiếm từ khóa "MSB"    //textarea[@id='APjFqb']    MSB+RETURN    # Nên dùng input text, hạn chế dùng press keys, trừ khi khó quá -0.2
    Click search    //h3[text()='MSB']    # kết quả đầu tiên, không cụ thể là MSB, tìm theo index   -0.1
    Out Popup    (//div[@class='pop-up-porlet-banner'])[2]//span
    Verify trang có chứa    Chọn thẻ phù hợp với bạn
    finish    # Không nên viết như này -0.1
