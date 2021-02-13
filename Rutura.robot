*** Settings ***
Documentation   SOM

Library         SeleniumLibrary


**Test Case**

Preparação Rutura
    Open Browser                    http://som-pp.worten.net                        ff
    Sleep                           1
    Input Text                      id:username                                     TST_SOM_04      
    Input Text                      id:password                                     Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Set Selenium Implicit Wait      60
    Sleep                           2
    Click Element                   xpath://*[@class="instore_image"]
    Click Element                   xpath://*[@class="icons small-32"]
    Click Element                   xpath://*[@class="v-input__append-inner"]
    Click Element                   xpath://*[@class="v-list-item v-list-item--link theme--light"]  
    Sleep                           2       
    Click Button                    xpath://*[@class="button--hollow button"]
    Capture Page Screenshot
    Set Selenium Implicit Wait      60
    
    Click Button                    xpath://*[@class="button--assign--footer button"]
    #Click Button                   xpath://*[@class="icons small-32"]
    Click Button                    xpath://*[@class="button"]
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
