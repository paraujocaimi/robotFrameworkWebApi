*** Settings ***
Documentation     Documentacions
...     Critérios de aceite: 
...
...     ST1: Permitir o cadastro de livros.
...     No cadastro de livros, os seguintes campos devem ser informados: título, descrição, número de páginas, resumo e data de publicação. Todos os campos são opcionais.

Resource            ../variables/base-api.robot
Resource            ../keywords/requests_keywords.robot

Library             RequestsLibrary
Library             Collections

*** Test Cases ***

ST1: Permitir o cadastro de livros.
    [tags]                                  getOneBook
    Given Create Session                    books-api               ${baseUrl}
    ${response}=                            When Get Request        books-api           /${getBooks}/
    Then Should Have All Keys in List       ${response.json()}
    And Status Should Be                    200                     ${response}

