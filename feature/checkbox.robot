*** Settings ***
Library     SeleniumLibrary

***Variables***
${url}          https://training-wheels-protocol.herokuapp.com
${check_id}     id:thor
${check_css}    css:input[value='iron-man']
${check_xpath}  xpath://form[@id='checkboxes']/input[7]

*** Test Cases ***
Marcando opção com ID
    Open Browser                    ${url}                  chrome
    Go To                           ${url}/checkboxes   
    Select Checkbox                 ${check_id} 
    Checkbox Should Be Selected     ${check_id} 
    Close Browser


Marcando opção com CSS Selector
    [tags]                          cssSelector
    Open Browser                    ${url}                  chrome
    Go To                           ${url}/checkboxes   
    Select Checkbox                 ${check_css} 
    Checkbox Should Be Selected     ${check_css} 
    Sleep                           5
    Close Browser


Marcando opção com XPATH
    [tags]                          xpath
    Open Browser                    ${url}                  chrome
    Go To                           ${url}/checkboxes   
    Select Checkbox                 ${check_xpath}
    Checkbox Should Be Selected     ${check_xpath}
    Sleep                           5
    Close Browser