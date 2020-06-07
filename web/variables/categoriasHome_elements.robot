***Variables***

# Block Menu
${block_menu}           css:div[id='block_top_menu']
${menu_categories}      xpath://*[@id="block_top_menu"]/ul/li/a
${woman_menu}           xpath://*[@id="block_top_menu"]/ul/li[1]/a
${dress_menu}           xpath://*[@id="block_top_menu"]/ul/li[2]/a
${shirt_menu}           xpath://*[@id="block_top_menu"]/ul/li[3]/a

# Dress Menu
${DressMenuList}                ${dress_menu}/../ul/li
${dress_menu_categorie1}        ${dress_menu}/../ul/li[1]/a
${dress_menu_categorie2}        ${dress_menu}/../ul/li[2]/a
${dress_menu_categorie3}        ${dress_menu}/../ul/li[3]/a

# Woman menu
${woman_categories_list}        xpath://*[@id="block_top_menu"]/ul/li[1]/ul[1]/li[1]/ul/li

${woman_top_submenu}            xpath://*[@id="block_top_menu"]/ul/li[1]/ul/li[1]/a
${woman_top_list}               ${woman_top_submenu}/../ul/li
${woman_top_categorie1}         ${woman_top_submenu}/../ul/li[1]/a
${woman_top_categorie2}         ${woman_top_submenu}/../ul/li[2]/a

${woman_dresses_submenu}        xpath://*[@id="block_top_menu"]/ul/li[1]/ul/li[2]/a
${woman_dresses_list}           ${woman_dresses_submenu}/../ul/li
${woman_dresses_categorie1}     ${woman_dresses_submenu}/../ul/li[1]/a
${woman_dresses_categorie2}     ${woman_dresses_submenu}/../ul/li[2]/a
${woman_dresses_categorie3}     ${woman_dresses_submenu}/../ul/li[3]/a

# BreadCrumb
${breadcrumb}                   css://div[@class='breadcrumb clearfix']
${breadcrumb_women}             ${breadcrumb}/span[@class='navigation_page']


# Pages
${center_column}               id:center_column
${title_page}                  css:span[class='cat-name']
${banner_title}                css:span[class='category-name']