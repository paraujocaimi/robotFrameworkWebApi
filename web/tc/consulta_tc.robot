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

    Set Focus To Element        ${search}
    Capture Element Screenshot  ${search}           campoBusca.png
    Close session

Validar retorno vazio da busca
    [tags]                      busca_vazia

    Search With                 sushi               pesquisa.png
    Should Have Alert           sushi
    Close session

Validar retorno do total de resultados
    [tags]                      retorna_busca

    Search With                 shirt               pesquisa.png
    Should Have Search          1 
    Close session

Validar exibição em formato de lista e grid
    [tags]                      product_view

    Search With                 shirt               pesquisa.png
    Choose List View
    Should Have List Format     ${product_list}     listaView.png
    
    Choose Grid View
    Should Have List Format     ${product_grid}     gridView.png
    
    Close session

Validar total de itens e quantidade por página
    [tags]                          itens_pagina

    Search With                     dress               quantidadeItens.png
    Should Have Itens For Page      7                   itens_pagina.png
    Close session
