*** Settings ***
Documentation   SOM

Library         SeleniumLibrary

**Test Case** 


Exibição de Timing em Prazo - Fórum Sintra
    [Tags]                          FS
    Open Browser                    https://som-pp.worten.net/           ff
    Sleep                           1
    Input Text                      id:username                          TST_SOM_04      
    Input Text                      id:password                          Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Sleep                           5
    Page Should Contain             Levantamento                                       
    Capture Page Screenshot

    Click Element                   class:instore_image
    Sleep                           2
    Page Should Contain Element     id:app
    Page Should Contain Element     id:container_deliveries                     
    Capture Page Screenshot

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


Exibição de Timing - Fora de Pazo - Fórum Sintra

    Open Browser                    https://som-pp.worten.net/           ff
    Sleep                           1
    Input Text                      id:username                          TST_SOM_04      
    Input Text                      id:password                          Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Sleep                           5
    Page Should Contain             Levantamento                                       
    Capture Page Screenshot

    Click Element                   class:instore_image
    Sleep                           2
    Page Should Contain Element     id:app
    Page Should Contain Element     id:container_deliveries                     
    Capture Page Screenshot

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


Exibição de Timing em Prazo - Matosinhos

    Open Browser                    https://som-pp.worten.net/           chrome
    Sleep                           1
    Input Text                      id:username                          TST_SOM_01      
    Input Text                      id:password                          Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Sleep                           5
    Page Should Contain             Levantamento                                       
    Capture Page Screenshot

    Click Element                   class:instore_image
    Sleep                           2
    Page Should Contain Element     id:app
    Page Should Contain Element     id:container_deliveries                     
    Capture Page Screenshot

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


Exibição de Timing - Fora de Prazo - Matosinhos

    Open Browser                    https://som-pp.worten.net/           chrome
    Sleep                           1
    Input Text                      id:username                          TST_SOM_01      
    Input Text                      id:password                          Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Sleep                           5
    Page Should Contain             Levantamento                                       
    Capture Page Screenshot

    Click Element                   class:instore_image
    Sleep                           2
    Page Should Contain Element     id:app
    Page Should Contain Element     id:container_deliveries                     
    Capture Page Screenshot

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