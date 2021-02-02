*** Settings ***
Documentation   SOM

Library         SeleniumLibrary

**Test Case** 

Acesso ao link de Levantamento Omnicanal

    Open Browser                    https://som-pp.worten.net/           ff
    Sleep                           1
    Input Text                      id:username                          TST_SOM_05      
    Input Text                      id:password                          Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Sleep                           5
    Page Should Contain             Levantamento                                         
    Capture Page Screenshot

    Click Element                   class:instore_image
    Page Should Contain             Andamento
    Capture Page Screenshot

    Set Selenium Implicit Wait      10
    Click Element                   id:person_btn                 
    Click Element                   xpath://*[@class="v-btn__content"]
    

    Close Browser

Acesso ao link de Expedições Omnicanal

    Open Browser                    https://som-pp.worten.net/           ff
    Sleep                           1
    Input Text                      id:username                          TST_SOM_05      
    Input Text                      id:password                          Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Sleep                           5
    Page Should Contain             Expedições                                         
    Capture Page Screenshot

    Click Element                   class:expedition_image
    Page Should Contain             Tratadas
    Capture Page Screenshot

    Set Selenium Implicit Wait      10
    Click Element                   id:person_btn                  
    Click Element                   xpath://*[@class="v-btn__content"]
    

    Close Browser

