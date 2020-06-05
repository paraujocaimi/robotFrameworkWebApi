
*** Settings ***
Resource        ../config/base.robot

#after
Test Setup      Nova sessão 
#before
Test Teardown   Encerra sessão

***Variables***


*** Test Cases ***
Verifica o valor ao informar o numero da linha
    Go To                   ${url}/login   
    Input Text              css:input[name=username]             stark
    Input Text              css:input[name=password]             jarvis!
    Click Element           class:btn-login

    Page Should Contain     Olá, Tony Stark. Você acessou a área logada!
            


	




