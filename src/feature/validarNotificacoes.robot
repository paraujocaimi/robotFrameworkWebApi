
*** Settings ***
Resource        ../config/base.robot

#after
Test Setup      Nova sessão 
#before
Test Teardown   Encerra sessão

***Variables***


*** Test Cases ***
Verifica o valor ao informar o numero da linha
    Go To                       ${url}/login   
    Login With                  stark                                           jarvis!
    Should See Logged User      Tony Stark


Senha inválida     
    [tags]                      login_error  
    Go To                       ${url}/login   
    Login With                  stark                                           lsajl

    Should Contain Login Alert   Senha é invalida!
            
User inválida     
    [tags]                      user_invalido  
    Go To                       ${url}/login   
    Login With                  priscila                                           jarvis
    Should Contain Login Alert  O usuário informado não está cadastrado!
        

	
*** Keywords ***
Login With
    [Arguments]             ${username}                         ${password}
    
    Input Text              css:input[name=username]            ${username}  
    Input Text              css:input[name=password]            ${password}
    Click Element           class:btn-login

Should Contain Login Alert
    [Arguments]            ${expect_message}
    ${message}=             Get WebElement                      id:flash 
    Should Contain          ${message.text}                     ${expect_message}

Should See Logged User
    [Arguments]             ${full_name}
    Page Should Contain     Olá, ${full_name}. Você acessou a área logada!
