*** Settings ***
Documentation     Critérios de aceite:
...
...     Deve ser possível consultar os produtos cadastrados por meio de um campo de pesquisa;
...     Quando nenhum produto for encontrado, deve ser exibida a mensagem: "No results were found for your search '{TEXTO DA PESQUISA}'";
...     Ao realizar uma pesquisa, deve ser exibido o total de resultados;
...     Os resultados devem ser exibidos em formato de grid e lista;
...     Deve ser exibido o total de itens e quantidade por página.

Test Setup        Open Browser In Url
Suite Teardown    Close Browser

Resource            ../keywords/base_keywords.robot
Resource            ../keywords/consulta_keywords.robot
Resource            ../variables/consulta_elements.robot


*** Test Cases ***

Validar existencia do campo de busca
    [tags]                      validaComponente

    When Set Focus To Element        ${search}
    Then Capture Element Screenshot  ${search}           campoBusca.png
    And Close session

Validar retorno vazio da busca
    [tags]                      busca_vazia

    When Search With                 sushi               pesquisa.png
    Then Should Have Alert           sushi
    And Close session

Validar retorno do total de resultados
    [tags]                      retorna_busca

    When Search With                 shirt               pesquisa.png
    Then Should Have Search          1 
    And Close session

Validar exibição em formato de lista e grid
    [tags]                      product_view

    When Search With                 shirt               pesquisa.png
    And Choose List View
    Then Should Have List Format     ${product_list}     listaView.png
    
    When Choose Grid View
    Then Should Have List Format     ${product_grid}     gridView.png
    
    And Close session

Validar total de itens e quantidade por página
    [tags]                          itens_pagina

    When Search With                     dress               quantidadeItens.png
    Then Should Have Itens For Page      7                   itens_pagina.png
    And Close session
