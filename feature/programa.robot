*** Settings *** 
Library     ../programa/app.py 

*** Test Cases ***
Deve retornar mensagem de boas vindas

#   Welcome é o metodo do pyton 
    ${result}=    Welcome  Priscila
    Should Be Equal     ${result}    Olá Priscila, bem vindo ao Robot