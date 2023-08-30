*** Settings ***
#### ROBOT LIBRARY ####
Library     SeleniumLibrary
Library     String
Library     RequestsLibrary
Library     SSHLibrary
Library     Collections
Library     DateTime
Library     OperatingSystem
Library     DatabaseLibrary
Library     JSONLibrary
#### PYTHON3 LIBRARY ####
Library     0_resources/pythonlibs/convert_list_to_string.py
Library     0_resources/pythonlibs/convert_to_json.py
Library     0_resources/pythonlibs/createcsvfile.py
Library     0_resources/pythonlibs/csv_util.py
Library     0_resources/pythonlibs/encodebase64.py
Library     0_resources/pythonlibs/ExcellentLibrary.py
Library     0_resources/pythonlibs/filesearch.py
Library     0_resources/pythonlibs/get_all_value_of_specific_key.py
Library     0_resources/pythonlibs/javaexecutor.py
Library     0_resources/pythonlibs/json_generator.py
Library     0_resources/pythonlibs/math_util.py
Library     0_resources/pythonlibs/readcsvfile.py
Library     0_resources/pythonlibs/remove_quote_string_sql.py
Library     0_resources/pythonlibs/rest_util.py
Library     0_resources/pythonlibs/urlparse_compat.py
Library     0_resources/pythonlibs/sql_db.py
###Keywords
Resource    ${EXECDIR}/imports.robot
Resource    ${EXECDIR}/8_imports/bt3.robot
Resource    ${EXECDIR}/8_imports/bt2.robot
Resource    ${EXECDIR}/8_imports/bt1.robot


*** Variables ***
${env}          sit         # biến không dùng -0.1
${browser}      Chrome    
