*** Settings ***
Documentation   SOM

Library         SeleniumLibrary

**Test Case** 


Nome de usuário incorrecto
    
    Open Browser                    https://som-pp.worten.net/           ff
    Sleep                           1
    Input Text                      id:username                          ABC      
    Input Text                      id:password                          Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Page Should Contain             especificado                                          

    Capture Page Screenshot
    Close Browser



Senha incorrecta

    Open Browser                    https://som-pp.worten.net/           ff
    Sleep                           1
    Input Text                      id:username                          TST_SOM_04      
    Input Text                      id:password                          123456
    Click Button                    xpath://*[@class="formButton"]
    Page Should Contain             incorreta                                          

    Capture Page Screenshot
    Close Browser


Nome de usuário e senha inexistente

    Open Browser                    https://som-pp.worten.net/           chrome
    Sleep                           1
    Input Text                      id:username                          ABC      
    Input Text                      id:password                          123456
    Click Button                    xpath://*[@class="formButton"]
    Page Should Contain             incorreta                                          

    Capture Page Screenshot
    Close Browser


Nome de usuário e senha correcto/Login efetuado com sucesso

    Open Browser                    https://som-pp.worten.net/           chrome
    Sleep                           1
    Input Text                      id:username                          TST_SOM_04      
    Input Text                      id:password                          Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Page Should Contain             Forum Sintra
    Page Should Contain             1450                                          

    Capture Page Screenshot
    Close Browser    


Logout efetuado com sucesso

    Open Browser                    https://som-pp.worten.net/           chrome
    Sleep                           1
    Input Text                      id:username                          TST_SOM_04      
    Input Text                      id:password                          Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Set Selenium Implicit Wait      10
    Click Element                   id:person_btn                  
    Sleep                           90
    Page Should Contain Element     xpath://*[@class="v-btn v-btn--flat v-btn--text theme--light v-size--default"]
    Capture Page Screenshot                   
    Click Element                   xpath://*[@class="v-btn__content"]
    #Sleep                           2 -Mexida em 25-01-2021 - Apareceu um novo modal, perguntando se o utilizador tem certeza que quer fazer logout --
    #Capture Page Screenshot
    #Click Element                   xpath://*[@class="button"]
    Close Browser
    