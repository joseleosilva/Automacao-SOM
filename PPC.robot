*** Settings ***
Documentation   SOM

Library         SeleniumLibrary

**Test Case** 

Criação de Pedido PPC
    [Tags]                          PISAB
    Open Browser                    https://salestool-pp.worten.net/     ff
    Set Selenium Implicit Wait      60
    Input Text                      id:username                          STW_TESTE01      
    Input Text                      id:password                          Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Set Selenium Implicit Wait      60
    #Click Button                    class:w-button-primary
    Sleep                           5
    #Click Element                   xpath://*[@href="#cookiePolicy-close"]
    Input Text                      id:search-input                      6109587
    Set Selenium Implicit Wait      60
    Click Element                   xpath://*[@class="w-product__title__wrapper"]
    Sleep                           10
    Click Element                   xpath://*[@class="w-button-primary w-checkout-button salestool-add"]
    Sleep                           10
    Click Element                   xpath://*[@href="/carrinho"]
    Sleep                           10
    Click Button                    xpath://*[@class="st-proceed-checkout w-button-primary"]
    Input Text                      id:st-invoice_clientName             José
    Input Text                      id:st-invoice_lastName               Silva
    Input Text                      id:st-invoice_mobile                 919557592
    Input Text                      id:st-invoice_email                  leoscs86@gmail.com
    Input Text                      id:st-invoice_nif                    297199153
    Capture Page Screenshot
    Sleep                           15
    Click Button                    xpath://*[@class="client-checkout-btn btn-checkout-clientDefined pull-right w-button-primary"]
    Sleep                           15
    Click Element                   xpath://*[@class="btn-addDelivery salestool-btnAddDelivery"]
    Click Element                   xpath://*[@class="col-5 btn-OpenSearchStoreModal-header btn-OpenSearchStoreModal"]
    Input Text                      xpath://*[@class="invoice_delivery_modal_input deliveryInput input-search-store"]             Vila do
    Click Element                   xpath://*[@data-store-name="WRT V. CONDE"]
    Sleep                           2
    Click Button                    xpath://*[@class="float-right w-button-primary searchConfirmBtn"]
    Click Button                    id:add_store
    Click Button                    xpath://*[@class="client-checkout-btn btn-checkout-address pull-right w-button-primary showOnBillingAddressEmpty"]
    Click Element                   xpath://*[@class="delivery_selector"]
    Set Selenium Implicit Wait      60
    Click Element                   xpath://*[@data-address="518"]
    Capture Page Screenshot
    Sleep                           15
    Click Button                    id:finalize_buy
    Capture Page Screenshot
    Sleep                           2
    Click Element                   xpath://*[@class="w-button-secondary checkoutBtn"]
    Click Element                   xpath://*[@class="arrow down"]            
    Click Element                   xpath://*[@id="st-logout"]
    Set Selenium Implicit Wait      60
    Capture Page Screenshot                   
    Close Browser


Pagamento PPC
    [Tags]                          Pagamentos
    Open Browser                    https://salestool-pp.worten.net/     ff
    Sleep                           180
    Input Text                      id:username                          STW_TESTE01      
    Input Text                      id:password                          Pass.123
    Click Button                    //*[@class="formButton"]
    Sleep                           3
    #Click Element                   xpath://*[@href="#cookiePolicy-close"]
    #Sleep                           2
    #Click Element                   xpath://*[@class="w-cookies-popup__footer__primary-button"]
    Sleep                           5
    Click Element                   xpath://*[@id="st-login-info"]
    Sleep                           5
    Click Element                   xpath://*[@id="go_to_carts_management"]
    Sleep                           5
    Click Button                    id:carts_management_search_btn
    Sleep                           10
    #Click Element                  xpath://*[@data-presale="61001"]
    #Input Text                     xpath://*[@id="ticket_number_61001"]      FT ABC123/610011
    #Click Button                   xpath://*[@id="submit_ticket_61001"]
    #Click Button                   xpath://*[@id="confirm_gg_checkout"]
    Click Element                   xpath://*[@data-presale_status="Enviado para pagamento"]
    Input Text                      xpath://*[@style="width:200px; margin-top:0.5em; margin-right: 3.5em;"]           FT ABC123/610011 
    Click Button                    xpath://*[@class="w-button-primary float-right"]
    Click Button                    xpath://*[@id="confirm_gg_checkout"]
    Sleep                           20
    Capture Page Screenshot         
    Sleep                           10
    Click Element                   xpath://*[@id="confirm_presale"]
    Set Selenium Implicit Wait      60         
    Capture Page Screenshot                   
    Close Browser    



    
Exibição de Levantamento - Fórum Sintra
    [tags]                          LEVSINTRA
    Open Browser                    https://som-pp.worten.net/           ff
    Sleep                           1
    Input Text                      id:username                          TST_SOM_04      
    Input Text                      id:password                          Pass.123
    Click Element                   xpath://*[@class="formButton"]
    Set Selenium Implicit Wait      10
    Click Element                   xpath://*[@class="instore_image"]
    Sleep                           5
    Page Should Contain             Levantamento    
    Page Should Not Contain Textfield  6109587                                        
    Capture Page Screenshot
    Sleep                           2
    Click Element                   id:person_btn
    Sleep                           90
    Page Should Contain Element     xpath://*[@class="v-btn v-btn--flat v-btn--text theme--light v-size--default"]
    Capture Page Screenshot                   
    Click Element                   xpath://*[@class="v-btn__content"]
    #Sleep                           2 -Mexida em 25-01-2021 - Apareceu um novo modal, perguntando se o utilizador tem certeza que quer fazer logout --
    #Capture Page Screenshot
    #Click Element                   xpath://*[@class="button"]
    Close Browser

Exibição de Expedições - Fórum Sintra
    [tags]                          EXPSINTRA
    Open Browser                    https://som-pp.worten.net/           ff
    Sleep                           1
    Input Text                      id:username                          TST_SOM_04      
    Input Text                      id:password                          Pass.123
    Click Element                   xpath://*[@class="formButton"]
    Set Selenium Implicit Wait      10
    Click Element                   xpath://*[@class="expedition_image"]
    Sleep                           10
    Page Should Contain             Expedições  
    Page Should Not Contain Textfield  6109587                                    
    Capture Page Screenshot
    Sleep                           2
    Click Element                   id:person_btn
    Sleep                           90
    Page Should Contain Element     xpath://*[@class="v-btn v-btn--flat v-btn--text theme--light v-size--default"]
    Capture Page Screenshot                   
    Click Element                   xpath://*[@class="v-btn__content"]
    #Sleep                           2 -Mexida em 25-01-2021 - Apareceu um novo modal, perguntando se o utilizador tem certeza que quer fazer logout --
    #Capture Page Screenshot
    #Click Element                   xpath://*[@class="button"]
    Close Browser

Exibição de Levantamento - Matosinhos
    [tags]                          LEVMAT
    Open Browser                    https://som-pp.worten.net/           chrome
    Sleep                           1
    Input Text                      id:username                          TST_SOM_01      
    Input Text                      id:password                          Pass.123
    Click Element                   xpath://*[@class="formButton"]
    Set Selenium Implicit Wait      10
    Click Element                   xpath://*[@class="instore_image"]
    Sleep                           5
    Page Should Contain             Levantamento    
    Page Should Not Contain Textfield  6109587                                     
    Capture Page Screenshot
    Sleep                           2
    Click Element                   id:person_btn
    Sleep                           90
    Page Should Contain Element     xpath://*[@class="v-btn v-btn--flat v-btn--text theme--light v-size--default"]
    Capture Page Screenshot                   
    Click Element                   xpath://*[@class="v-btn__content"]
    #Sleep                           2 -Mexida em 25-01-2021 - Apareceu um novo modal, perguntando se o utilizador tem certeza que quer fazer logout --
    #Capture Page Screenshot
    #Click Element                   xpath://*[@class="button"]
    Close Browser

Exibição de Expedições - Matosinhos
    [Tags]                          EXPMAT
    Open Browser                    https://som-pp.worten.net/           chrome
    Sleep                           1
    Input Text                      id:username                          TST_SOM_01      
    Input Text                      id:password                          Pass.123
    Click Element                   xpath://*[@class="formButton"]
    Set Selenium Implicit Wait      10
    Click Element                   xpath://*[@class="expedition_image"]
    Sleep                           5
    Page Should Contain             Expedições  
    Page Should Not Contain Textfield  6109587                                           
    Sleep                           2
    Click Element                   id:person_btn
    Sleep                           90
    Page Should Contain Element     xpath://*[@class="v-btn v-btn--flat v-btn--text theme--light v-size--default"]
    Capture Page Screenshot                   
    Click Element                   xpath://*[@class="v-btn__content"]
    #Sleep                           2 -Mexida em 25-01-2021 - Apareceu um novo modal, perguntando se o utilizador tem certeza que quer fazer logout --
    #Capture Page Screenshot
    #Click Element                   xpath://*[@class="button"]
    Close Browser