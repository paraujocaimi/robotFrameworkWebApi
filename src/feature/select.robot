
*** Settings ***
Resource        ../config/base.robot

#after
Test Setup      Nova sessão 
#before
Test Teardown   Encerra sessão

***Variables***


*** Test Cases ***
Selecionando por texto e valida pelo valor
    Go To                           ${url}/dropdown   
    Select From List By Label       class:avenger-list              Loki
    ${selected}=                    Get Selected List Value         class:avenger-list
    Should Be Equal                 ${selected}                     6
    Sleep                           5


Selecionando por value e validar pelo texto
    [tags]                          value
    Go To                           ${url}/dropdown   
    Select From List By Value       id:dropdown                     6
    ${selected}=                    Get Selected List Label         id:dropdown
    Should Be Equal                 ${selected}                     Loki
    Sleep                           5



