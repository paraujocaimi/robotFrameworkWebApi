*** Settings ***
Documentation     Critérios de aceite:
...
...     Devem ser exibidos os menus: Woman, Dress e T-shirts;
...     No menu Woman, devem ser exibidos os submenus Tops, com as categorias T-shirts e Blouses, e Dresses, com as categorias Casual Dresses, Evening Dresses e Summer Dresses;
...     No menu Dresses devem ser exibidas as categorias CASUAL DRESSES EVENING DRESSES SUMMER DRESSES;
...     Os menus devem ser clicáveis e ao acessá-los os produtos da categoria devem ser exibidos.

Suite Setup       Exibir as categorias de produtos no menu da página inicial
Suite Teardown    Close Browser
Test Setup        Go To Login Page
Test Template     Login With Invalid Credentials Should Fail
Resource          resource.robot