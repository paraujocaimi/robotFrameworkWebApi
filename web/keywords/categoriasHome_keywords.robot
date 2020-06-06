  
*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary

Resource    ../variables/base.robot
Resource    ../variables/categoriasHome_elements.robot


***Keywords***

Should Have Block Menu
    
    Element Should Be Visible               ${block_menu}       
    Capture Element Screenshot              ${block_menu}                           block_menu.png
    
    ${count} =          Get Element Count   ${menu_categories}
    Should Be True	    ${count} == 3

    Element Attribute Value Should Be   ${woman_menu}      title       Women
    Element Attribute Value Should Be   ${dress_menu}      title       Dresses
    Element Attribute Value Should Be   ${shirt_menu}      title       T-shirts

Object Mouse Over 
    [Arguments]         ${object}
    Element Should Be Visible               ${object}      
    Mouse Over          ${object}
    Capture Page Screenshot   

Women Menu Should Hava Two submenus
    [Arguments]     ${list}     ${size}
    ${count} =          Get Element Count   ${woman_categories}
    Should Be True	    ${count} == ${size}
              
    Element Attribute Value Should Be   ${woman_top_submenu}          title       ${list}[0]
    Element Attribute Value Should Be   ${woman_dresses_submenu}      title       ${list}[1]


Woman Dresses Submenu Should Have Categories
    [Arguments]     ${list}     ${size}
    ${count} =          Get Element Count   ${menu_categories}
    Should Be True	    ${count} == ${size}
              
    Element Attribute Value Should Be   ${Casual Dresses}       title       ${list}[0]
    Element Attribute Value Should Be   ${Evening Dresses}      title       ${list}[1]
    Element Attribute Value Should Be   ${Summer Dresses}       title       ${list}[2]


Woman Top Submenu Should Have Categories
    [Arguments]     ${list}     ${size}
    ${count} =          Get Element Count   ${woman_top_list}
    Should Be True	    ${count} == ${size}  

    Element Attribute Value Should Be   ${woman_top_categorie1}         title       ${list}[0]
    Element Attribute Value Should Be   ${woman_top_categorie2}         title       ${list}[1]


Women Dresses Submenu Should Have This Categories
    [Arguments]     ${list}     ${size}
    ${count} =          Get Element Count   ${woman_dresses_list}
    Should Be True	    ${count} == ${size}
       
    Element Attribute Value Should Be   ${woman_dresses_categorie1}       title       ${list}[0]
    Element Attribute Value Should Be   ${woman_dresses_categorie2}       title       ${list}[1]
    Element Attribute Value Should Be   ${woman_dresses_categorie3}       title       ${list}[2]


    
