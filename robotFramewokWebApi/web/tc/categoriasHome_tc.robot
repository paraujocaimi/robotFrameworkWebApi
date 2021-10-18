*** Settings ***
Documentation     Critérios de aceite:
...
...     Devem ser exibidos os menus: Woman, Dress e T-shirts;
...     No menu Woman, devem ser exibidos os submenus Tops, com as categorias T-shirts e Blouses, e Dresses, com as categorias Casual Dresses, Evening Dresses e Summer Dresses;
...     No menu Dresses devem ser exibidas as categorias CASUAL DRESSES EVENING DRESSES SUMMER DRESSES;
...     Os menus devem ser clicáveis e ao acessá-los os produtos da categoria devem ser exibidos.

Test Setup        Open Browser In Url
Suite Teardown    Close Browser

Resource            ../keywords/base_keywords.robot
Resource            ../keywords/categoriasHome_keywords.robot
Resource            ../variables/categoriasHome_elements.robot

Library           Collections


*** Test Cases ***

Validar exibicao dos menus
    [tags]                      exibicaoMenu
    @{list}=    Create List   Women      Dresses     T-shirts
    
    Should Have Block Menu                          ${list}      
    Close session

Validar Woman Menu
    [tags]                      womanMenu

    @{womansList_submenu}=        Create List       Tops                    Dresses
    @{woman_top_submenu}=                 Create List     T-shirts                    Blouses
    @{woman_dresses_submenu}=    Create List    Casual Dresses    Evening Dresses     Summer Dresses

    #mouse over
    Object Mouse Over                                   ${woman_menu}
    #validar que o menu Woman tenha dois submenus
    Women Menu Should Have Two submenus                 ${womansList_submenu}         2
    #validar que submenu top tenha duas categorias
    Woman Top Submenu Should Have Categories            ${woman_top_submenu}          2 
    #validar que submenu dresses tenha 3 categorias 
    Woman Dresses Submenu Should Have Categories        ${woman_dresses_submenu}      3
    Close session


Validar Dresses Menu
    [tags]                      dressesMenu
    @{womansList_submenu}=        Create List       Casual Dresses      Evening Dresses     Summer Dresses          

    #mouse over
    Object Mouse Over                               ${dress_menu}
    #validar que o menu Woman tenha dois submenus
    Dresses Menu Should Have Categories             ${womansList_submenu}   3
    Close session

Validar redirecionamento ao clicar nos menus
    [tags]                      redirecionamento
    @{menus_list}=              Create List         Women      Dresses     T-shirts     Tops 

    When click on Menu Shuld Open Correct Page          ${woman_menu}                   ${menus_list}[0]
    When click on Menu Shuld Open Correct Page          ${dress_menu}                   ${menus_list}[1]
    When click on Menu Shuld Open Correct Page          ${shirt_menu}                   ${menus_list}[2]
    When click on Submenu Shuld Open Correct Page       ${woman_menu}                   ${woman_top_submenu}            ${menus_list}[3]
    When click on Submenu Shuld Open Correct Page       ${woman_menu}                   ${woman_dresses_submenu}        ${menus_list}[1]
    Close session

     

    
