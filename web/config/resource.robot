  
*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary

Resource    ../pages/elements.robot


*** Keywords ***
Open Browser To Login Page
    Open Browser                ${WELCOME URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed          ${DELAY}
    Home Page Should Be Open

Home Page Should Be Open
    Title Should Be             My Store

Close session
    Capture Page Screenshot
    Close Browser

Go To Login Page
    Go To                       ${LOGIN URL}
    Login Page Should Be Open

Input search
    [Arguments]     ${key_search}
    Input Text      ${search}       ${key_search}

Search
    Click Button    ${search_button}

Choose List View
    Wait Until Page Contains Element        ${btn_show_list} 
    Click Element                           ${btn_show_list}
    Capture Page Screenshot                 


Choose Grid View
    Wait Until Page Contains Element        ${btn_show_grid} 
    Click Element                           ${btn_show_grid}
    Capture Page Screenshot                 


Welcome Page Should Be Open
    Location Should Be      ${WELCOME URL}
    Title Should Be         Welcome Page

### Shared Steps
Should Have Alert 
    [Arguments]            ${key_search}
    
    Wait Until Page Contains Element        ${search_alert}             
    ${message}=            Get WebElement       ${search_alert} 
    Should Contain         ${message.text}      No results were found for your search "${key_search}"

Should Have Search 
    [Arguments]                 ${number}

    Wait Until Page Contains Element        ${x_results_found}             
    ${message}=                             Get WebElement          ${x_results_found} 
    Run Keyword If     '${number}' == '1'   Should Contain          ${message.text}      ${number} result has been found. 
    Run Keyword If     '${number}' != '1'   Should Contain          ${message.text}      ${number} results have been found.
    Log                         ${message.text}

Should Have List Format
    [Arguments]                             ${format}           ${capture_name}
    Wait Until Page Contains Element        ${format} 
    Element Should Be Visible               ${format}
    Sleep                                   2
    Capture Element Screenshot              ${format}           ${capture_name}


Search With
    [Arguments]     ${key_search}       ${capture_name}    
    Input search                ${key_search}
    Capture Element Screenshot  ${search}           ${capture_name}
    Search

Should Have Itens For Page 
    [Arguments]                 ${number}       ${capture_name}

    Wait Until Page Contains Element        ${x_results_page}             
    ${message}=                             Get WebElement     ${x_results_page} 
    Run Keyword If     '${number}' == '1'   Should Contain     ${message.text}      Showing 1 - ${number} of ${number} item 
    Run Keyword If     '${number}' != '1'   Should Contain     ${message.text}      Showing 1 - ${number} of ${number} items 

    Capture Element Screenshot              ${x_results_page}           ${capture_name}
    Log                                     ${message.text}


    	        	                        	                        	
		    