*** Settings ***
Documentation     Documentacions
...     Critérios de aceite: 
...
...     ST2: Retornar livros cadastrados.
...     No retorno devem ser exibidas as informações: título, descrição, número de páginas, resumo e data de publicação.
...     ST3: Retornar apenas um livro.
...     Devem ser exibidas as informações do livro consultado.

Resource            ../variables/base-api.robot
Resource            ../keywords/requests_keywords.robot

Library             RequestsLibrary
Library             Collections

*** Test Cases ***

ST2: Validar retorno da busca de todos os livros cadastrados
    [tags]                                  getOneBook
    Given Create Session                    books-api               ${baseUrl}
    ${response}=                            When Get Request        books-api           /${Books}/
    Then Should Have All Keys in List       ${response.json()}
    And Status Should Be                    200                     ${response}

ST3: Validar retorno de dados do livro desejado
    [tags]                      getAllBook
    Given Create Session        books-api               ${baseUrl}
    ${response}=                When Get Request        books-api           /${Books}/1
    Then Should Have Keys       ${response.json()}
    And Status Should Be        200                     ${response}



