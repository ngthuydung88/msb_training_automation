*** Settings ***
Library    SeleniumLibrary

#Resource
Resource        1_common/common_keyword.robot
Resource        3_keywords/login_guru99_keywords.robot
Resource        3_keywords/tiki_keywords.robot
Resource        3_keywords/google_MSB.robot
Resource        3_keywords/guru99_submit_keywords.robot    


# data
Resource  5_datas/valid_data.robot
