
*** Settings ***
Resource        ../config/base.robot

#after
Test Setup      Nova sessão 
#before
Test Teardown   Encerra sessão

***Variables***
${radio_id}     cap
${radio_value}    guardians

*** Test Cases ***
Selecionando opção com ID
    Go To                           ${url}/radios   
    Select Radio Button             movies          ${radio_id} 
    Radio Button Should Be Set To   movies          ${radio_id} 


Selecionando opção com value
    [tags]                              value
    Go To                               ${url}/radios   
    Select Radio Button                 movies      ${radio_value} 
    Radio Button Should Be Set To       movies      ${radio_value} 
    Sleep                               5




