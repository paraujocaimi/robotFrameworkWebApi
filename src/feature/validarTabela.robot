
*** Settings ***
Resource        ../config/base.robot

#after
Test Setup      Nova sessão 
#before
Test Teardown   Encerra sessão

***Variables***


*** Test Cases ***
Verifica o valor ao informar o numero da linha
    Go To                           ${url}/tables   
    Table Row Should Contain        id:actors       1       @robertdowneyjr

Descobrir a linha pelo texto chave e valida os demais valores
    [tags]              chave
    Go To               ${url}/tables   
    ${target}=          Get WebElement      xpath=//tr[contains(.,'@prattprattpratt')]
    Log                 ${target.text}
    Log To Console      ${target.text}
    Should Contain      ${target.text}      $ 10.000.000
    Should Contain      ${target.text}      Senhor das Estrelas	
	




