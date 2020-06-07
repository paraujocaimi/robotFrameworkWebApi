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
    
    When Click Element               ${btn_cart}
    Then Moust Have Alert            ${message_cart_empty}
    And Close session

Validar questionamento ao add item ao carrinho
    [tags]                      checkAlert_addProduct
    
    When Click In Product
    Then Check Modal After Add Product On Cart
    And Close session

Validar existencia do botao excluir item do carrinho
    [tags]                      checkDeleteButton
    
    When Click In Product
    Then Check Modal After Add Product On Cart
    When Click Procced To Cart Button
    Then Delete Button Should Be Visible 
    And Close session

Validar dados do produto no carrinho
    [tags]                      checkDadosProduto

    When Click In Product
    Then Check Modal After Add Product On Cart
    When Click Procced To Cart Button
    Then Check Iten Details In Cart
    And Close session

Validar dados finais da compra
    [tags]                      checkDadosFinais

    When Click In Product
    Then Check Modal After Add Product On Cart
    When Click Procced To Cart Button
    Then Check Total Price In Cart
    And Close session

