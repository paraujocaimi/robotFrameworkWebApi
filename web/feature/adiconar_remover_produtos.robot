*** Settings ***
Documentation     Critérios de aceite:
...
...     Quando o carrinho estiver vazio, deve ser exibida a mensagem: “Your shopping cart is empty”;
...     Ao adicionar um produto ao carrinho, o usuário deve ser questionado se deseja continuar comprando ou finalizar a compra;
...     Ao acessar o carrinho, deve ser possível excluir os produtos;
...     No carrinho deve ser exibido o preço unitário do produto, total e a quantidade;
...     Deve ser exibido o total da compra.

Suite Setup       Utilizar o carrinho de compras para adicionar e remover produtos.
Suite Teardown    Close Browser
Test Setup        Go To Login Page
Test Template     Login With Invalid Credentials Should Fail
Resource          resource.robot