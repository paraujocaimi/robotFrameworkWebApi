
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


Senha inválida     
    [tags]                  login_error  
    Go To                   ${url}/login   
    Input Text              css:input[name=username]             stark
    Input Text              css:input[name=password]             jarvis
    Click Element           class:btn-login

    ${message}=             Get WebElement                      id:flash 
    Should Contain          ${message.text}                     Senha é invalida!
            
User inválida     
    [tags]                  user_invalido  
    Go To                   ${url}/login   
    Input Text              css:input[name=username]             stprisciark
    Input Text              css:input[name=password]             jarvis
    Click Element           class:btn-login

    ${message}=             Get WebElement                      id:flash 
    Should Contain          ${message.text}                     O usuário informado não está cadastrado!
            

	




