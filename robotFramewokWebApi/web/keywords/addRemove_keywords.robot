*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary
Library           String


Resource    ../variables/base.robot
Resource    ../variables/addRemove_elements.robot


***Keywords***

Click In Product
    Mouse Over                               ${item_add}
    Wait Until Element Is Visible            ${item_add}
    Scroll Element Into View                 ${btn_add_item}
    Capture Page Screenshot   
    Click Element                            ${btn_add_item}

Check Modal After Add Product On Cart
    Wait Until Element Is Visible           ${modal_check}
    Element Should Be Visible               ${btn_continueShopping}       
    Element Should Be Visible               ${btn_proceedCheckout}  
    Capture Page Screenshot   
 
Click Continue Shoppin Button
    Wait Until Element Is Visible           ${modal_check}
    Element Should Be Visible               ${btn_continueShopping}       
    Click Element                           ${btn_continueShopping}
    Capture Page Screenshot   

Click Procced To Cart Button
    Wait Until Element Is Visible           ${modal_check}
    Element Should Be Visible               ${btn_proceedCheckout}       
    Click Element                           ${btn_proceedCheckout}
    Capture Page Screenshot   

Delete Button Should Be Visible 
    Wait Until Element Is Visible           ${btn_delete}
    Element Should Be Visible               ${btn_delete}       
    Capture Page Screenshot   

Check Iten Details In Cart

    ${target}=                              Get WebElement                              id=product_1_1_0_0
    Log                                     ${target.text}
    Should Contain                          ${target.text}                              ${item_price}
    Element Attribute Value Should Be       css:input[name='quantity_1_1_0_0']          value                       ${item_qtd}
    Should Contain                          ${target.text}                              ${item_total_price}
    Capture Page Screenshot   

Check Total Price In Cart

    ${total_product}=               Get text                                    id=total_product
    Should Contain	                ${total_product}                            ${total_products_value}

    ${total_shipping}=              Get text                                    id=total_shipping
    Should Contain	                ${total_shipping}                           ${total_shipping_value}

    ${total_price_without_tax}=    Get text                                     id=total_price_without_tax 
    Should Contain	               ${total_price_without_tax}                   ${total_value}

    ${total_tax}=                  Get text                                     id=total_tax
    Should Contain	               ${total_tax}                                 ${tax_value}

    ${total_price_container}=      Get text                                     id=total_price_container
    Should Contain	               ${total_price_container}                     ${total_cart_value}

    Capture Page Screenshot   
