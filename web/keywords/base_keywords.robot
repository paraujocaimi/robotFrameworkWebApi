*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary

Resource    ../variables/base.robot
Resource    ../variables/consulta_elements.robot
Resource    ../keywords/consulta_keywords.robot

*** Keywords ***
Open Browser In Url
    Open Browser                ${WELCOME URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed          ${DELAY}
    Home Page Should Be Open