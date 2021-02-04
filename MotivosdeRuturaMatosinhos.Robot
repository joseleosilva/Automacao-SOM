*** Settings ***
Documentation   SOM

Library         SeleniumLibrary

**Test Case**

Levantamento Omnicanal - Motivos de Rutura - Stock 0 - Matosinhos
    Open Browser                    http://som-pp.worten.net                        chrome
    Sleep                           1
    Input Text                      id:username                                     TST_SOM_01      
    Input Text                      id:password                                     Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Set Selenium Implicit Wait      60
    Sleep                           2
    Click Element                   xpath://*[@class="instore_image"]
    Click Element                   xpath://*[contains(text(), "Tratadas")]
    Page Should Contain Element     xpath://*[@class="icons svg-icon svg-fill icon-reason_8"]
    Capture Page Screenshot         
    Page Should Not Contain Image   src:"/images/icon-printer-portatil-red.svg?c1c252bcac3069f5b9caf71ac5a76377"
    Page Should Not Contain Image   src:"/images/icon-printer-zebra-red.svg?29b2c8b36d992e7ef8da39cc6537b4a5"
    Page Should Not Contain Image   src:"/images/icon-printer-a4-red.svg?ac48d1b4cfb78f7c98bd195c22e54d31"
    Capture Page Screenshot
    Sleep                           2
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




Levantamento Omnicanal - Erro de Stock - Matosinhos
    Open Browser                    http://som-pp.worten.net                        chrome
    Sleep                           1
    Input Text                      id:username                                     TST_SOM_01      
    Input Text                      id:password                                     Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Set Selenium Implicit Wait      60
    Sleep                           2
    Click Element                   xpath://*[@class="instore_image"]
    Click Element                   xpath://*[contains(text(), "Tratadas")]
    Page Should Contain Element     xpath://*[@class="icons svg-icon svg-fill icon-reason_11"]
    Capture Page Screenshot         
    Page Should Not Contain Image   src:"/images/icon-printer-portatil-red.svg?c1c252bcac3069f5b9caf71ac5a76377"
    Page Should Not Contain Image   src:"/images/icon-printer-zebra-red.svg?29b2c8b36d992e7ef8da39cc6537b4a5"
    Page Should Not Contain Image   src:"/images/icon-printer-a4-red.svg?ac48d1b4cfb78f7c98bd195c22e54d31"
    Capture Page Screenshot
    Sleep                           2
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



Levantamento Omnicanal - Motivos de Rutura - Danificado - Matosinhos
    Open Browser                    http://som-pp.worten.net                        chrome
    Sleep                           1
    Input Text                      id:username                                     TST_SOM_01      
    Input Text                      id:password                                     Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Set Selenium Implicit Wait      60
    Sleep                           2
    Click Element                   xpath://*[@class="instore_image"]
    Click Element                   xpath://*[contains(text(), "Tratadas")]
    Page Should Contain Element     xpath://*[@class="icons svg-icon svg-fill icon-reason_23"]
    Capture Page Screenshot         
    Page Should Not Contain Image   src:"/images/icon-printer-portatil-red.svg?c1c252bcac3069f5b9caf71ac5a76377"
    Page Should Not Contain Image   src:"/images/icon-printer-zebra-red.svg?29b2c8b36d992e7ef8da39cc6537b4a5"
    Page Should Not Contain Image   src:"/images/icon-printer-a4-red.svg?ac48d1b4cfb78f7c98bd195c22e54d31"
    Capture Page Screenshot
    Sleep                           2
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



Levantamento Omnicanal - Motivos de Rutura - Incompleto - Matosinhos
    Open Browser                    http://som-pp.worten.net                        chrome
    Sleep                           1
    Input Text                      id:username                                     TST_SOM_01      
    Input Text                      id:password                                     Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Set Selenium Implicit Wait      60
    Sleep                           2
    Click Element                   xpath://*[@class="instore_image"]
    Click Element                   xpath://*[contains(text(), "Tratadas")]
    Page Should Contain Element     xpath://*[@class="icons svg-icon svg-fill icon-reason_10"]
    Capture Page Screenshot         
    Page Should Not Contain Image   src:"/images/icon-printer-portatil-red.svg?c1c252bcac3069f5b9caf71ac5a76377"
    Page Should Not Contain Image   src:"/images/icon-printer-zebra-red.svg?29b2c8b36d992e7ef8da39cc6537b4a5"
    Page Should Not Contain Image   src:"/images/icon-printer-a4-red.svg?ac48d1b4cfb78f7c98bd195c22e54d31"
    Capture Page Screenshot
    Sleep                           2
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


Expedição Omnicanal - Motivos de Rutura - Stock 0 - Matosinhos
    Open Browser                    http://som-pp.worten.net                        chrome
    Sleep                           1
    Input Text                      id:username                                     TST_SOM_01      
    Input Text                      id:password                                     Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Set Selenium Implicit Wait      60
    Sleep                           2
    Click Element                   xpath://*[@class="expedition_image"]
    Click Element                   xpath://*[contains(text(), "Tratadas")]
    Page Should Contain Element     xpath://*[@class="icons svg-icon svg-fill icon-reason_8"]
    Capture Page Screenshot         
    Page Should Not Contain Image   src:"/images/icon-printer-portatil-red.svg?c1c252bcac3069f5b9caf71ac5a76377"
    Page Should Not Contain Image   src:"/images/icon-printer-zebra-red.svg?29b2c8b36d992e7ef8da39cc6537b4a5"
    Page Should Not Contain Image   src:"/images/icon-printer-a4-red.svg?ac48d1b4cfb78f7c98bd195c22e54d31"
    Capture Page Screenshot
    Sleep                           2
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




Expedição Omnicanal - Erro de Stock - Matosinhos
    Open Browser                    http://som-pp.worten.net                        chrome
    Sleep                           1
    Input Text                      id:username                                     TST_SOM_01      
    Input Text                      id:password                                     Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Set Selenium Implicit Wait      60
    Sleep                           2
    Click Element                   xpath://*[@class="expedition_image"]
    Click Element                   xpath://*[contains(text(), "Tratadas")]
    Page Should Contain Element     xpath://*[@class="icons svg-icon svg-fill icon-reason_11"]
    Capture Page Screenshot         
    Page Should Not Contain Image   src:"/images/icon-printer-portatil-red.svg?c1c252bcac3069f5b9caf71ac5a76377"
    Page Should Not Contain Image   src:"/images/icon-printer-zebra-red.svg?29b2c8b36d992e7ef8da39cc6537b4a5"
    Page Should Not Contain Image   src:"/images/icon-printer-a4-red.svg?ac48d1b4cfb78f7c98bd195c22e54d31"
    Capture Page Screenshot
    Sleep                           2
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



Expedição Omnicanal - Motivos de Rutura - Danificado - Matosinhos
    Open Browser                    http://som-pp.worten.net                        chrome
    Sleep                           1
    Input Text                      id:username                                     TST_SOM_01      
    Input Text                      id:password                                     Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Set Selenium Implicit Wait      60
    Sleep                           2
    Click Element                   xpath://*[@class="expedition_image"]
    Click Element                   xpath://*[contains(text(), "Tratadas")]
    Page Should Contain Element     xpath://*[@class="icons svg-icon svg-fill icon-reason_23"]
    Capture Page Screenshot         
    Page Should Not Contain Image   src:"/images/icon-printer-portatil-red.svg?c1c252bcac3069f5b9caf71ac5a76377"
    Page Should Not Contain Image   src:"/images/icon-printer-zebra-red.svg?29b2c8b36d992e7ef8da39cc6537b4a5"
    Page Should Not Contain Image   src:"/images/icon-printer-a4-red.svg?ac48d1b4cfb78f7c98bd195c22e54d31"
    Capture Page Screenshot
    Sleep                           2
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



Expedição Omnicanal - Motivos de Rutura - Incompleto - Matosinhos
    Open Browser                    http://som-pp.worten.net                        chrome
    Sleep                           1
    Input Text                      id:username                                     TST_SOM_01      
    Input Text                      id:password                                     Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Set Selenium Implicit Wait      60
    Sleep                           2
    Click Element                   xpath://*[@class="expedition_image"]
    Click Element                   xpath://*[contains(text(), "Tratadas")]
    Page Should Contain Element     xpath://*[@class="icons svg-icon svg-fill icon-reason_10"]
    Capture Page Screenshot         
    Page Should Not Contain Image   src:"/images/icon-printer-portatil-red.svg?c1c252bcac3069f5b9caf71ac5a76377"]
    Page Should Not Contain Image   src:"/images/icon-printer-zebra-red.svg?29b2c8b36d992e7ef8da39cc6537b4a5"]
    Page Should Not Contain Image   src:"/images/icon-printer-a4-red.svg?ac48d1b4cfb78f7c98bd195c22e54d31"]
    Capture Page Screenshot
    Sleep                           2
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