*** Settings ***
Documentation     Critérios de aceite:
...
...     Quando o carrinho estiver vazio, deve ser exibida a mensagem: “Your shopping cart is empty”;
...     Ao adicionar um produto ao carrinho, o usuário deve ser questionado se deseja continuar comprando ou finalizar a compra;
...     Ao acessar o carrinho, deve ser possível excluir os produtos;
...     No carrinho deve ser exibido o preço unitário do produto, total e a quantidade;
...     Deve ser exibido o total da compra.

Test Setup        Open Browser In Url
Suite Teardown    Close Browser

Resource            ../keywords/base_keywords.robot
Resource            ../keywords/addRemove_keywords.robot
Resource            ../variables/addRemove_elements.robot

Library           Collections


*** Test Cases ***


Check carrinho 
    [tags]                      empty_cart
    Click Element               ${btn_cart}
    Moust Have Alert            ${message_cart_empty}
    Close session

Validar questionamento ao add item ao carrinho
    [tags]                      checkAlert_addProduct
    Click In Product
    Check Modal After Add Product On Cart
    Close session


Validar existencia do botao excluir item do carrinho
    [tags]                      checkDeleteButton
    Click In Product
    Check Modal After Add Product On Cart
    Click Procced To Cart Button
    Delete Button Should Be Visible 
    Close session

Validar dados do produto no carrinho
    [tags]                      checkDadosProduto

    Click In Product
    Check Modal After Add Product On Cart
    Click Procced To Cart Button
    Check Iten Details In Cart
    Close session


Validar dados finais da compra
    [tags]                      checkDadosFinais

    Click In Product
    Check Modal After Add Product On Cart
    Click Procced To Cart Button
    Check Total Price In Cart
    Close session


