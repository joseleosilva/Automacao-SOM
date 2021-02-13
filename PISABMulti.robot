*** Settings ***
Documentation   SOM

Library         SeleniumLibrary

**Test Case**

Preparação PIS AB SOM
    Open Browser                    http://som-pp.worten.net                        ff
    Sleep                           1
    Input Text                      id:username                                     TST_SOM_01      
    Input Text                      id:password                                     Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Set Selenium Implicit Wait      60
    Sleep                           2
    Click Element                   xpath://*[@class="expedition_image"]
    Click Element                   xpath://*[@class="icons small-32"]
    Input Text                      xpath://*[@class="scanner-input mb-0"]          5609060090751
    Sleep                           2
    Input Text                      xpath://*[@class="scanner-input mb-0"]          5609060090751
    Set Selenium Implicit Wait      90          
    Click Button                    Avançar
    Set Selenium Implicit Wait      90
    Capture Page Screenshot
    Click Button                    Voltar à lista de encomendas

    Sleep                           2
    Click Element                   xpath://*[@class="notification-icon svg-icon svg-fill"]
    Page Should Contain             Notificações    
    Capture Page Screenshot 
    Sleep                           3
    Capture Page Screenshot      
    Click Element                   xpath://*[@class=" mouse-hover close-icon svg-icon svg-fill"]
    Click Element                   id:person_btn            
    Capture Page Screenshot         
    Click Element                   xpath://*[@class="svg-icon svg-fill"]
    #Sleep                           2 -Mexida em 25-01-2021 - Apareceu um novo modal, perguntando se o utilizador tem certeza que quer fazer logout --
    #Capture Page Screenshot
    #Click Element                   xpath://*[@class="button"]
    Close Browser
