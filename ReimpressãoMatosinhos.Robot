*** Settings ***
Documentation   SOM

Library         SeleniumLibrary

**Test Case**

Reimpressão de Etiquetas de Levantamento - Matosinhos
    Open Browser                    http://som-pp.worten.net                        ff
    Sleep                           1
    Input Text                      id:username                                     TST_SOM_01      
    Input Text                      id:password                                     Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Set Selenium Implicit Wait      60
    Sleep                           2
    Click Element                   xpath://*[@class="instore_image"]
    Click Element                   xpath://*[contains(text(), "Tratadas")]
    Click Element                   xpath://*[@src="/images/icon-printer-portatil-red.svg?c1c252bcac3069f5b9caf71ac5a76377"]
    Click Button                    xpath://*[@class="button"]
    Sleep                           2
    Capture Page Screenshot
    Click Button                    xpath://*[@class="button"]

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