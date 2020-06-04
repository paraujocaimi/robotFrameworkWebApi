
*** Settings ***
Resource        ../config/base.robot

#after
Test Setup      Nova sessão 
#before
Test Teardown   Encerra sessão

***Variables***
${check_id}     id:thor
${check_css}    css:input[value='iron-man']
${check_xpath}  xpath://form[@id='checkboxes']/input[7]

*** Test Cases ***
Marcando opção com ID
    Go To                           ${url}/checkboxes   
    Select Checkbox                 ${check_id} 
    Checkbox Should Be Selected     ${check_id} 


Marcando opção com CSS Selector
    [tags]                          cssSelector
    Go To                           ${url}/checkboxes   
    Select Checkbox                 ${check_css} 
    Checkbox Should Be Selected     ${check_css} 
    Sleep                           5


Marcando opção com XPATH
    [tags]                          xpath
    Go To                           ${url}/checkboxes   
    Select Checkbox                 ${check_xpath}
    Checkbox Should Be Selected     ${check_xpath}
    Sleep                           5




