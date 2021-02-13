*** Settings ***
Documentation   SOM

Library                         SeleniumLibrary


**Test Case**

Reimpressão de Etiquetas de Expedição - Sintra
    Open Browser                    http://som-pp.worten.net                        chrome
    Set Window Size	                1920	 1080
    Sleep                           1
    Input Text                      id:username                                     TST_SOM_04      
    Input Text                      id:password                                     Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Set Selenium Implicit Wait      60
    Sleep                           2
    Click Element                   xpath://*[@class="expedition_image"]
    Click Element                   xpath://*[contains(text(), "Tratadas")]
    Click Element                   xpath://*[@src="/images/icon-printer-zebra-red.svg?29b2c8b36d992e7ef8da39cc6537b4a5"]
    Sleep                           2
    Click Button                    xpath://*[@class="button"]
    Sleep                           2
    Capture Page Screenshot
    Click Button                    xpath://*[@class="button"]

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