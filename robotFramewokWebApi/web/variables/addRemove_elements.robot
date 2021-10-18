***Variables***

${btn_cart}                 css:a[title='View my shopping cart']
${cart_page}                id:cart_title
${cart_alert}               css:p[class='alert alert-warning']
${message_cart_empty}       Your shopping cart is empty.  

# adicionar item ao carrinho
${item_add}                 xpath://*[@id="homefeatured"]//img[@alt="Faded Short Sleeve T-shirts"]
${btn_add_item}             css:a[title='Add to cart']
${quick_view}               css:a[class='quick-view']
${modal_check}              css:div[class="button-container"]
${btn_continueShopping}     css:span[title='Continue shopping']
${btn_proceedCheckout}      css:a[title='Proceed to checkout']

## dados do produto
${price}                    xpath://*[@id="center_column"]/ul/li[1]/div/div[1]/div/div[2]/span
${name}                     css:span[title='Printed Dress']
${color}                    css:a[class='color_pick']

## table carrinho
${btn_delete}               css:a[title='Delete']
${unit_price}               css:th[class='cart_unit item']
${qty}                      css:th[class='cart_quantity item']
${total_item_price}         css:th[class='cart_total item']

## tabela itens do carrinho
${item_price}               $16.51
${item_qtd}                 1
${item_total_price}         $16.51

## table resume
${total_products_value}           $16.51
${total_shipping_value}           $2.00
${total_value}                    $18.51
${tax_value}                      $0.00
${total_cart_value}               $18.51