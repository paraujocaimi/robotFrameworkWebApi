  
*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary
Library           String


Resource    ../variables/base.robot
Resource    ../variables/categoriasHome_elements.robot


***Keywords***

Should Have Block Menu
    [Arguments]         ${list}
    Element Should Be Visible               ${block_menu}       
    Capture Element Screenshot              ${block_menu}                           block_menu.png
    
    ${count} =          Get Element Count   ${menu_categories}
    Should Be True	    ${count} == 3

    Element Attribute Value Should Be   ${woman_menu}      title       ${list}[0]
    Element Attribute Value Should Be   ${dress_menu}      title       ${list}[1]
    Element Attribute Value Should Be   ${shirt_menu}      title       ${list}[2]

Object Mouse Over 
    [Arguments]         ${object}
    Element Should Be Visible               ${object}      
    Mouse Over          ${object}
    Capture Page Screenshot   

Women Menu Should Have Two submenus
    [Arguments]     ${list}     ${size}
    ${count} =          Get Element Count   ${woman_categories_list}
    Should Be True	    ${count} == ${size}
              
    Element Attribute Value Should Be   ${woman_top_submenu}          title       ${list}[0]
    Element Attribute Value Should Be   ${woman_dresses_submenu}      title       ${list}[1]


Woman Dresses Submenu Should Have Categories
    [Arguments]     ${list}     ${size}
    ${count} =          Get Element Count   ${menu_categories}
    Should Be True	    ${count} == ${size}
              
    Element Attribute Value Should Be   ${dress_menu_categorie1}       title       ${list}[0]
    Element Attribute Value Should Be   ${dress_menu_categorie2}      title       ${list}[1]
    Element Attribute Value Should Be   ${dress_menu_categorie3}       title       ${list}[2]


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


Dresses Menu Should Have Categories 
    [Arguments]     ${list}     ${size}
    ${count} =          Get Element Count   ${DressMenuList}
    Should Be True	    ${count} == ${size}
       
    Element Attribute Value Should Be   ${dress_menu_categorie1}       title       ${list}[0]
    Element Attribute Value Should Be   ${dress_menu_categorie2}       title       ${list}[1]
    Element Attribute Value Should Be   ${dress_menu_categorie3}       title       ${list}[2]


When click on Menu Shuld Open Correct Page
    [Arguments]                             ${menu}                     ${page}
    ${page_convert}=                        Convert To Upper Case       ${page}

    Wait Until Page Contains Element        ${block_menu} 
    Mouse Over                              ${block_menu}
    Click Element                           ${menu}
    Wait Until Page Contains Element        ${center_column} 
    Check Page                              ${page_convert}             ${page}
    Capture Page Screenshot   

When click on Submenu Shuld Open Correct Page
    [Arguments]     ${menu}     ${submenu}      ${page}
    ${page_convert}=                                Convert To Upper Case       ${page}
    
    Wait Until Page Contains Element        ${block_menu} 
    Mouse Over	                            ${menu}	
    Wait Until Element Is Visible	        ${submenu}
    Click Link	                            ${submenu}
    Wait Until Page Contains Element        ${center_column} 
    Check Page                              ${page_convert}             ${page}
    Capture Page Screenshot   


Check Page
    [Arguments]                             ${page_convert}             ${page}
    ${title_page}=                          Get text                    ${title_page}
    Should Contain	                        ${title_page}               ${page_convert}
    ${banner}=                              Get text                    ${banner_title}
    Should Contain	                        ${banner}                   ${page}