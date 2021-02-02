*** Settings ***
Documentation   SOM

Library         SeleniumLibrary

**Test Case**

Reimpressão de Etiquetas de Expedição - Sintra
    Open Browser                    http://som-pp.worten.net                        chrome
    Sleep                           1
    Input Text                      id:username                                     TST_SOM_04      
    Input Text                      id:password                                     Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Set Selenium Implicit Wait      60
    Sleep                           2
    Click Element                   xpath://*[@class="expedition_image"]
    Click Element                   xpath://*[contains(text(), "Tratadas")]
    Click Element                   xpath://*[@src="/images/icon-printer-zebra-red.svg?29b2c8b36d992e7ef8da39cc6537b4a5"]
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