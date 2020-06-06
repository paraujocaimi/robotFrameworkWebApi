*** Settings ***
Documentation     Critérios de aceite:
...
...     Devem ser exibidos os menus: Woman, Dress e T-shirts;
...     No menu Woman, devem ser exibidos os submenus Tops, com as categorias T-shirts e Blouses, e Dresses, com as categorias Casual Dresses, Evening Dresses e Summer Dresses;
...     No menu Dresses devem ser exibidas as categorias CASUAL DRESSES EVENING DRESSES SUMMER DRESSES;
...     Os menus devem ser clicáveis e ao acessá-los os produtos da categoria devem ser exibidos.

# Suite Setup       Exibir as categorias de produtos no menu da página inicial
# Suite Teardown    Close Browser
# Test Setup        Go To Login Page
# Test Template     Login With Invalid Credentials Should Fail

Resource            ../keywords/base_keywords.robot
Resource            ../keywords/categoriasHome_keywords.robot
Resource            ../variables/categoriasHome_elements.robot

Library           Collections



*** Test Cases ***

Validar exibicao dos menus
    [tags]                      validaComponente
    Open Browser In Url
    Should Have Block Menu      
    Close session

Validar Woman Menu

    Open Browser In Url

    #mouse over
    Object Mouse Over                           ${woman_menu}

    #validar que o menu Woman tenha dois submenus
    @{womansList_submenu}=        Create List       Tops                    Dresses
    Women Menu Should Hava Two submenus             ${womansList_submenu}   2

    #validar que submenu top tenha duas categorias
    @{TopList}=                 Create List     T-shirts                    Blouses
    Woman Top Submenu Should Have Categories            ${TopList}          2
   
    #validar que submenu dresses tenha 3 categorias 
    @{DressesList}=    Create List    Casual Dresses    Evening Dresses     Summer Dresses
    Woman Dresses Submenu Should Have Categories        ${DressesList}      3

Validar Dresses Menu



    
