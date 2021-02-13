*** Settings ***
Documentation   SOM

Library         SeleniumLibrary

**Test Case** 

PIS AA
    [Tags]                          PISAA
    Open Browser                    https://salestool-pp.worten.net/     ff
    Sleep                           1
    Input Text                      id:username                          STW_TESTE01      
    Input Text                      id:password                          Pass.123
    Click Button                    xpath://*[@class="formButton"]
    #Sleep                           2
    #Click Element                   xpath://*[@class="cookiePolicy-close"]
    Sleep                           5
    Click Element                   xpath://*[@class="w-cookies-popup__footer__primary-button"]
    #Click Element                   xpath://*[@class="w-cookies-popup__wrapper "]
    #Click Element                   xpath://*[@class="w-button-primary"]
    Input Text                      id:search-input                      6507260
    Set Selenium Implicit Wait      60
    Click Element                   xpath://*[@class="w-product__title__wrapper"]
    Sleep                           10
    Click Element                   xpath://*[@class="w-button-primary w-checkout-button salestool-add"]
    Sleep                           20
    Click Element                   xpath://*[@href="/carrinho"]
    Sleep                           3
    Click Button                    xpath://*[@class="st-proceed-checkout w-button-primary"]
    Input Text                      id:st-invoice_clientName             José
    Input Text                      id:st-invoice_lastName               Silva
    Input Text                      id:st-invoice_mobile                 919557592
    Input Text                      id:st-invoice_email                  leoscs86@gmail.com
    Input Text                      id:st-invoice_nif                    297199153
    Capture Page Screenshot
    Sleep                           10
    Click Element                   xpath://*[@class="client-checkout-btn btn-checkout-clientDefined pull-right w-button-primary"]
    Sleep                           10
    Click Button                    xpath://*[@class="client-checkout-btn btn-checkout-address pull-right w-button-primary showOnBillingAddressEmpty"]
    Click Element                   xpath://*[@class="delivery_selector"]
    Set Selenium Implicit Wait      60
    Click Element                   xpath://*[@data-address="515"]
    Capture Page Screenshot
    Sleep                           10
    Click Button                    id:finalize_buy
    Capture Page Screenshot
    Click Element                   xpath://*[@class="w-button-secondary checkoutBtn"]
    Click Element                   xpath://*[@class="arrow down"]            
    Click Element                   xpath://*[@id="st-logout"]
    Set Selenium Implicit Wait      60
    Capture Page Screenshot                   
    Close Browser
    

Pagamento PIS AA
    [Tags]                          PISAA
    Open Browser                    https://salestool-pp.worten.net/     ff
    Sleep                           180
    Input Text                      id:username                          STW_TESTE01      
    Input Text                      id:password                          Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Sleep                           5
    Click Element                   xpath://*[@class="w-cookies-popup__footer__primary-button"]
    #Sleep                           2
    #Click Element                   xpath://*[@class="cookiePolicy-close"]
    #Click Element                   xpath://*[@class="w-cookies-popup__wrapper "]
    Sleep                           3
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
   


PIS AB 1
    [Tags]                          PISAA
    Open Browser                    https://salestool-pp.worten.net/     ff
    Sleep                           1
    Input Text                      id:username                          STW_TESTE01      
    Input Text                      id:password                          Pass.123
    Click Button                    xpath://*[@class="formButton"]
    #Sleep                           2
    Sleep                           5
    Click Element                   xpath://*[@class="w-cookies-popup__footer__primary-button"]
    Sleep                           3
    Input Text                      id:search-input                      5807112
    Set Selenium Implicit Wait      60
    Click Element                   xpath://*[@class="w-product__title__wrapper"]
    Sleep                           10
    Click Element                   xpath://*[@class="w-button-primary w-checkout-button salestool-add"]
    Sleep                           20
    Click Element                   xpath://*[@href="/carrinho"]
    Sleep                           3
    Click Button                    xpath://*[@class="st-proceed-checkout w-button-primary"]
    Input Text                      id:st-invoice_clientName             José
    Input Text                      id:st-invoice_lastName               Silva
    Input Text                      id:st-invoice_mobile                 919557592
    Input Text                      id:st-invoice_email                  leoscs86@gmail.com
    Input Text                      id:st-invoice_nif                    297199153
    Capture Page Screenshot
    Sleep                           10
    Click Element                   xpath://*[@class="client-checkout-btn btn-checkout-clientDefined pull-right w-button-primary"]
    Sleep                           10
    Click Button                    xpath://*[@class="client-checkout-btn btn-checkout-address pull-right w-button-primary showOnBillingAddressEmpty"]
    Click Element                   xpath://*[@class="delivery_selector"]
    Set Selenium Implicit Wait      60
    Click Element                   xpath://*[@data-address="515"]
    Capture Page Screenshot
    Sleep                           10
    Click Button                    id:finalize_buy
    Capture Page Screenshot
    Click Element                   xpath://*[@class="arrow down"]            
    Click Element                   xpath://*[@id="st-logout"]
    Set Selenium Implicit Wait      60
    Capture Page Screenshot                   
    Close Browser
   
    

Pagamento PIS AB 1
    [Tags]                          PISAA
    Open Browser                    https://salestool-pp.worten.net/     ff
    Sleep                           180
    Input Text                      id:username                          STW_TESTE01      
    Input Text                      id:password                          Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Sleep                           5
    Click Element                   xpath://*[@class="w-cookies-popup__footer__primary-button"]
    Sleep                           3
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
   



PIS AB 2
    [Tags]                          PISAB
    Open Browser                    https://salestool-pp.worten.net/     ff
    Set Selenium Implicit Wait      60
    Input Text                      id:username                          STW_TESTE01      
    Input Text                      id:password                          Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Sleep                           5
    Click Element                   xpath://*[@class="w-cookies-popup__footer__primary-button"]
    #Sleep                           3
    Input Text                      id:search-input                      5807112
    Set Selenium Implicit Wait      60
    Click Element                   xpath://*[@class="w-product__title__wrapper"]
    Sleep                           10
    Click Element                   xpath://*[@class="w-button-primary w-checkout-button salestool-add"]
    Sleep                           20
    Click Element                   xpath://*[@href="/carrinho"]
    Sleep                           10
    Click Element                   xpath://*[@class="w-icon-lock w-icon w-icon-before"]
    Input Text                      id:st-invoice_clientName             José
    Input Text                      id:st-invoice_lastName               Silva
    Input Text                      id:st-invoice_mobile                 919557592
    Input Text                      id:st-invoice_email                  leoscs86@gmail.com
    Input Text                      id:st-invoice_nif                    297199153
    Capture Page Screenshot
    Sleep                           10
    Click Button                    xpath://*[@class="client-checkout-btn btn-checkout-clientDefined pull-right w-button-primary"]
    Sleep                           10
    Click Element                   xpath://*[@class="client-checkout-btn btn-checkout-address pull-right w-button-primary showOnBillingAddressEmpty"]
    Sleep                           10
    Click Element                   xpath://*[@class="btn-addDelivery salestool-btnAddDelivery"]
    Sleep                           10
    Click Element                   xpath://*[@class="col-5 btn-OpenSearchStoreModal-header btn-OpenSearchStoreModal"]              
    Input Text                      xpath://*[@class="invoice_delivery_modal_input deliveryInput input-search-store"]          Forum Sintra
    Click Element                   xpath://*[@data-store-name="WRT Forum Sintra"]
    Click Element                   xpath://*[@class="float-right w-button-primary searchConfirmBtn"]
    Click Button                    id:add_store
    Click Button                    xpath://*[@class="client-checkout-btn btn-checkout-address pull-right w-button-primary showOnBillingAddressEmpty"]
    Click Element                   xpath://*[@class="delivery_selector"]
    Set Selenium Implicit Wait      60
    Click Element                   xpath://*[@data-address="1450"]
    Capture Page Screenshot
    Sleep                           15
    Click Button                    id:finalize_buy
    Capture Page Screenshot
    Click Element                   xpath://*[@class="w-button-secondary checkoutBtn"]
    Click Element                   xpath://*[@class="arrow down"]            
    Click Element                   xpath://*[@id="st-logout"]
    Set Selenium Implicit Wait      60
    Capture Page Screenshot                   
    Close Browser
   
Pagamento PIS AB 2
    [Tags]                          PISAB
    Open Browser                    https://salestool-pp.worten.net/     ff
    Sleep                           180
    Input Text                      id:username                          STW_TESTE01      
    Input Text                      id:password                          Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Sleep                           5
    Click Element                   xpath://*[@class="w-cookies-popup__footer__primary-button"]
    Sleep                           3
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
   


SCED - PISGAE
    [Tags]                          PISGAE 
    Open Browser                    https://salestool-pp.worten.net/     ff
    Set Selenium Implicit Wait      60
    Input Text                      id:username                          STW_TESTE01      
    Input Text                      id:password                          Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Sleep                           5
    Click Element                   xpath://*[@class="w-cookies-popup__footer__primary-button"]
    Sleep                           3
    Input Text                      id:search-input                      6383397
    Set Selenium Implicit Wait      60
    Click Element                   xpath://*[@class="w-product__title__wrapper"]
    Sleep                           10
    Click Element                   xpath://*[@class="w-button-primary w-checkout-button salestool-add"]
    Sleep                           20
    Click Element                   xpath://*[@href="/carrinho"]
    Sleep                           15
    Click Button                    xpath://*[@class="st-proceed-checkout w-button-primary"]
    Input Text                      id:st-invoice_clientName             José
    Input Text                      id:st-invoice_lastName               Silva
    Input Text                      id:st-invoice_mobile                 919557592
    Input Text                      id:st-invoice_email                  leoscs86@gmail.com
    Input Text                      id:st-invoice_nif                    297199153
    Capture Page Screenshot
    Sleep                           5
    Click Button                    xpath://*[@class="client-checkout-btn btn-checkout-clientDefined pull-right w-button-primary"]
    Sleep                           10
    Click Button                    xpath://*[@class="client-checkout-btn btn-checkout-address pull-right w-button-primary showOnBillingAddressEmpty"]
    Sleep                           5
    Click Element                   xpath://*[@class="delivery_selector"]
    Sleep                           5
    Click Element                   xpath://*[@data-address="515"]
    Capture Page Screenshot
    Sleep                           30
    Click Button                    id:finalize_buy
    Capture Page Screenshot
    Click Element                   xpath://*[@class="w-button-secondary checkoutBtn"]
    Click Element                   xpath://*[@class="arrow down"]            
    Click Element                   xpath://*[@id="st-logout"]
    Set Selenium Implicit Wait      60
    Capture Page Screenshot                                  
    Close Browser
   
   
Pagamento SCED-PISGAE
    [Tags]                          PISGAE
    Open Browser                    https://salestool-pp.worten.net/     ff
    Sleep                           180
    Input Text                      id:username                          STW_TESTE01      
    Input Text                      id:password                          Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Sleep                           5
    Click Element                   xpath://*[@class="w-cookies-popup__footer__primary-button"]
    Sleep                           3
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
   
   



SCED
    [Tags]                          SCED 
    Open Browser                    https://salestool-pp.worten.net/     ff
    Set Selenium Implicit Wait      60
    Input Text                      id:username                          STW_TESTE01      
    Input Text                      id:password                          Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Sleep                           5
    Click Element                   xpath://*[@class="w-cookies-popup__footer__primary-button"]
    Sleep                           3
    Input Text                      id:search-input                      6383397
    Set Selenium Implicit Wait      60
    Click Element                   xpath://*[@class="w-product__title__wrapper"]
    Sleep                           10
    Click Element                   xpath://*[@class="w-button-primary w-checkout-button salestool-add"]
    Sleep                           20
    Click Element                   xpath://*[@href="/carrinho"]
    Sleep                           10
    Click Button                    xpath://*[@class="st-proceed-checkout w-button-primary"]
    Input Text                      id:st-invoice_clientName             José
    Input Text                      id:st-invoice_lastName               Silva
    Input Text                      id:st-invoice_mobile                 919557592
    Input Text                      id:st-invoice_email                  leoscs86@gmail.com
    Input Text                      id:st-invoice_nif                    297199153
    Capture Page Screenshot
    Sleep                           2
    Click Button                    xpath://*[@class="client-checkout-btn btn-checkout-clientDefined pull-right w-button-primary"]
    Sleep                           10
    Click Element                   xpath://*[@class="btn-addDelivery salestool-btnAddDelivery"]
    Sleep                           2
    Click Element                   xpath://*[@class="tablinks btn-deliAddress"]
    Input Text                      id:home-address                      Urbanização Quinta das Cortezes
    Input Text                      id:home-door                         Lote 3 
    Input Text                      id:home-postalcode                   2005250
    Input Text                      id:home-city                         Santarem
    Capture Page Screenshot       
    Set Selenium Implicit Wait      60
    Click Button                    xpath://*[@class="client-checkout-btn addNewHomeAddress pull-right w-button-primary"]
    Set Selenium Implicit Wait      60
    Click Button                    xpath://*[@class="client-checkout-btn btn-checkout-address pull-right w-button-primary showOnBillingAddressEmpty"]
    Sleep                           5
    Click Element                   xpath://*[@class="delivery_selector"]
    Sleep                           5
    Click Element                   xpath://*[@class="delivery_checkmark checkmark"]
    Sleep                           5
    Click Element                   xpath://*[@data-type="3"]
    Capture Page Screenshot
    Sleep                           30
    Input Text                      id:home-reference-required          Hospital
    Sleep                           5
    Input Text                      id:home-route-required              Av. Bernado Santareno
    Sleep                           5
    Click Element                   xpath://*[@class="float-right w-button-primary saveRequiredFields"]
    Sleep                           10
    Click Element                   xpath://*[@class="checkout-sced-date-hour changeScedWindow"]
    Sleep                           10
    Click Element                   xpath://*[@class="scedwindowSelected"]
    Sleep                           10
    Click Element                   xpath://*[@class="float-right w-button-primary"]
    Sleep                           10     
    Click Button                    id:finalize_buy
    Capture Page Screenshot
    Click Element                   xpath://*[@class="w-button-secondary checkoutBtn"]
    Click Element                   xpath://*[@class="arrow down"]            
    Click Element                   xpath://*[@id="st-logout"]
    Set Selenium Implicit Wait      60
    Capture Page Screenshot                   
    Close Browser
   

Pagamento SCED
    [Tags]                          SCED
    Open Browser                    https://salestool-pp.worten.net/     ff
    Sleep                           180
    Input Text                      id:username                          STW_TESTE01      
    Input Text                      id:password                          Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Sleep                           5
    Click Element                   xpath://*[@class="w-cookies-popup__footer__primary-button"]
    Sleep                           3
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
    Click Element                   xpath://*[@class="arrow down"]            
    Click Element                   xpath://*[@id="st-logout"]
    Set Selenium Implicit Wait      60
    Capture Page Screenshot                   
    Close Browser
   

SR
    [Tags]                          SR
    Open Browser                    https://salestool-pp.worten.net/     ff
    Sleep                           1
    Input Text                      id:username                          STW_TESTE01      
    Input Text                      id:password                          Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Sleep                           5
    Click Element                   xpath://*[@class="w-cookies-popup__footer__primary-button"]
    Sleep                           3
    Input Text                      id:search-input                      6507260
    Set Selenium Implicit Wait      60
    Click Element                   xpath://*[@class="w-product__title__wrapper"]
    Sleep                           10
    Click Element                   xpath://*[@class="w-button-primary w-checkout-button salestool-add"]
    Sleep                           20
    Click Element                   xpath://*[@href="/carrinho"]
    Sleep                           10
    Click Button                    xpath://*[@class="st-proceed-checkout w-button-primary"]
    Input Text                      id:st-invoice_clientName             José
    Input Text                      id:st-invoice_lastName               Silva
    Input Text                      id:st-invoice_mobile                 919557592
    Input Text                      id:st-invoice_email                  leoscs86@gmail.com
    Input Text                      id:st-invoice_nif                    297199153
    Capture Page Screenshot
    Sleep                           2
    Click Button                    xpath://*[@class="client-checkout-btn btn-checkout-clientDefined pull-right w-button-primary"]
    Set Selenium Implicit Wait      10
    Click Button                    xpath://*[@class="client-checkout-btn btn-checkout-address pull-right w-button-primary showOnBillingAddressEmpty"]
    Click Element                   xpath://*[@class="delivery_selector"]
    Set Selenium Implicit Wait      5
    Click Element                   xpath://*[@data-address="1"]
    Capture Page Screenshot
    Sleep                           3
    Click Button                    id:finalize_buy
    Capture Page Screenshot
    Click Element                   xpath://*[@class="w-button-secondary checkoutBtn"]
    Click Element                   xpath://*[@class="arrow down"]            
    Click Element                   xpath://*[@id="st-logout"]
    Set Selenium Implicit Wait      60
    Capture Page Screenshot                                    
    Close Browser
   
   
Pagamento SR
    [Tags]                          SR
    Open Browser                    https://salestool-pp.worten.net/     ff
    Sleep                           180
    Input Text                      id:username                          STW_TESTE01      
    Input Text                      id:password                          Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Sleep                           5
    Click Element                   xpath://*[@class="w-cookies-popup__footer__primary-button"]
    Sleep                           3
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
    Click Element                   xpath://*[@class="arrow down"]            
    Click Element                   xpath://*[@id="st-logout"]
    Set Selenium Implicit Wait      60
    Capture Page Screenshot                   
    Close Browser
   
   



HD - Sales Tool 
    [Tags]                          HD
    Open Browser                    https://salestool-pp.worten.net/     ff
    Sleep                           1
    Input Text                      id:username                          STW_TESTE01      
    Input Text                      id:password                          Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Sleep                           5
    Click Element                   xpath://*[@class="w-cookies-popup__footer__primary-button"]
    Sleep                           3
    Input Text                      id:search-input                      5807112
    Set Selenium Implicit Wait      60
    Click Element                   xpath://*[@class="w-product__title__wrapper"]
    Sleep                           10
    Click Element                   xpath://*[@class="w-button-primary w-checkout-button salestool-add"]
    Sleep                           20
    Click Element                   xpath://*[@href="/carrinho"]
    Sleep                           10
    Click Button                    xpath://*[@class="st-proceed-checkout w-button-primary"]
    Input Text                      id:st-invoice_clientName             José
    Input Text                      id:st-invoice_lastName               Silva
    Input Text                      id:st-invoice_mobile                 919557592
    Input Text                      id:st-invoice_email                  leoscs86@gmail.com
    Input Text                      id:st-invoice_nif                    297199153
    Capture Page Screenshot
    Sleep                           2
    Click Button                    xpath://*[@class="client-checkout-btn btn-checkout-clientDefined pull-right w-button-primary"]
    Sleep                           10
    Click Element                   xpath://*[@class="btn-addDelivery salestool-btnAddDelivery"]
    Sleep                           5    
    Click Element                   xpath://*[@class="tablinks btn-deliAddress"]
    Input Text                      id:home-address                      Urbanização Quinta das Cortezes
    Input Text                      id:home-door                         Lote 3 
    Input Text                      id:home-postalcode                   2005250
    Input Text                      id:home-city                         Santarem
    Capture Page Screenshot       
    Set Selenium Implicit Wait      10
    Click Button                    xpath://*[@class="client-checkout-btn addNewHomeAddress pull-right w-button-primary"]
    Click Element                   xpath://*[@class="delivery_checkmark checkmark"]
    Click Button                    xpath://*[@class="client-checkout-btn btn-checkout-address pull-right w-button-primary showOnBillingAddressEmpty"]
    Click Element                   xpath://*[@class="delivery_selector"]
    Set Selenium Implicit Wait      5
    Click Element                   xpath://*[@data-type="3"]
    Capture Page Screenshot
    Sleep                           10
    Click Button                    id:finalize_buy
    Capture Page Screenshot
    Click Element                   xpath://*[@class="w-button-secondary checkoutBtn"]
    Click Element                   xpath://*[@class="arrow down"]            
    Click Element                   xpath://*[@id="st-logout"]
    Set Selenium Implicit Wait      60
    Capture Page Screenshot                   
    Close Browser
   

Pagamento HD Sales Tool
    [Tags]                          HD
    Open Browser                    https://salestool-pp.worten.net/     ff
    Sleep                           180
    Input Text                      id:username                          STW_TESTE01      
    Input Text                      id:password                          Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Sleep                           5
    Click Element                   xpath://*[@class="w-cookies-popup__footer__primary-button"]
    Sleep                           3
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
   
   


HD - Site DEV
    [Tags]                          HDEV
    Open Browser                    https://wpt-dev.worten.net/          ff
    Sleep                           3
    Click Button                    class:w-button-primary
    Sleep                           3
    #Click Element                   xpath://*[@class="cookiePolicy-close"]
    #Sleep                           3
    Click Element                   xpath://*[@href="/cliente/conta#/myLogin"] 
    Input Text                      id:email                             leoscs86@gmail.com
    Input Text                      id:pass                              scsleo86
    Click Button                    xpath://*[@class="w-button-primary button"]
    Sleep                           5
    Click Element                   id:search-input
    Input Text                      id:search-input                      5807112
    Sleep                           3
    CLick Element                   xpath://*[@class="w-product__title__wrapper"]
    Sleep                           5
    Click Element                   xpath://*[@class="w-button-primary qa-product-options__add-cart-linkto w-checkout-button iss-checkout-button"]
    Sleep                           5
    Click Element                   xpath://*[@class="w-checkout__button w-button-primary qa-full-shopping-cart__footer-continue button"]
    Sleep                           5
    Click Button                    xpath://*[@class="button--hollow h-mb-0"]
    Sleep                           5
    Click Element                   xpath://*[@class="shipping-type__option shipping-type__option--home custom-input input-radio"]
    Sleep                           5
    Click Button                    xpath://*[@class="button--hollow h-mb-0"]
    Sleep                           10
    Click Element                   xpath://*[@class="step-footer__button"]
    Sleep                           5
    Click Element                   xpath://*[@for="mb"]
    Sleep                           10
    Click Element                   xpath://*[@class="button"]
    Sleep                           10
    Click Button                    xpath://*[@class="button"]
    Sleep                           5
    Capture Page Screenshot
    Close Browser
