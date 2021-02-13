*** Settings ***
Documentation   SOM

Library         SeleniumLibrary

**Test Case**

Validação de Filtros superior a 48 horas - Levantamento Omnicanal - Matosinhos
    Open Browser                    http://som-pp.worten.net                        chrome
    Sleep                           1
    Input Text                      id:username                                     TST_SOM_01      
    Input Text                      id:password                                     Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Set Selenium Implicit Wait      60
    Sleep                           2
    Click Element                   xpath://*[@class="instore_image"]
    Click Element                   xpath://*[contains(text(), "Tratadas")]
    Capture Page Screenshot                 
    Input Text                      id:input-30                                     8806088213255
    Click Element                   xpath://*[@class="scanner-svg cursor-pointer svg-icon svg-fill"]
    Sleep                           2
    Capture Page Screenshot
    Page Should Not Contain Image   src:"/images/icon-printer-portatil-red.svg?c1c252bcac3069f5b9caf71ac5a76377"
    Page Should Not Contain Image   src:"/images/icon-printer-zebra-red.svg?29b2c8b36d992e7ef8da39cc6537b4a5"
    Page Should Not Contain Image   src:"/images/icon-printer-a4-red.svg?ac48d1b4cfb78f7c98bd195c22e54d31"
    Capture Page Screenshot
    Sleep                           2    

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



Validação de Filtros superior a 48 horas - Expedição Omnicanal - Matosinhos
    Open Browser                    http://som-pp.worten.net                        chrome
    Sleep                           1
    Input Text                      id:username                                     TST_SOM_01      
    Input Text                      id:password                                     Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Set Selenium Implicit Wait      60
    Sleep                           2
    Click Element                   xpath://*[@class="expedition_image"]
    Click Element                   xpath://*[contains(text(), "Tratadas")]
    Capture Page Screenshot         
    Input Text                      id:input-30                                     8806088213255
    Click Element                   xpath://*[@class="scanner-svg cursor-pointer svg-icon svg-fill"]
    Sleep                           2
    Capture Page Screenshot
    Page Should Not Contain Image   src:"/images/icon-printer-portatil-red.svg?c1c252bcac3069f5b9caf71ac5a76377"
    Page Should Not Contain Image   src:"/images/icon-printer-zebra-red.svg?29b2c8b36d992e7ef8da39cc6537b4a5"
    Page Should Not Contain Image   src:"/images/icon-printer-a4-red.svg?ac48d1b4cfb78f7c98bd195c22e54d31"
    Capture Page Screenshot
    Sleep                           2    

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



Validação de Filtros superior a 48 horas - Levantamento Omnicanal - Forum Sintra
    Open Browser                    http://som-pp.worten.net                        ff
    Sleep                           1
    Input Text                      id:username                                     TST_SOM_04      
    Input Text                      id:password                                     Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Set Selenium Implicit Wait      60
    Sleep                           2
    Click Element                   xpath://*[@class="expedition_image"]
    Click Element                   xpath://*[contains(text(), "Tratadas")]
    Capture Page Screenshot         
    Input Text                      id:input-30                                     8806088213255
    Click Element                   xpath://*[@class="scanner-svg cursor-pointer svg-icon svg-fill"]
    Sleep                           2
    Capture Page Screenshot
    Page Should Not Contain Image   src:"/images/icon-printer-portatil-red.svg?c1c252bcac3069f5b9caf71ac5a76377"
    Page Should Not Contain Image   src:"/images/icon-printer-zebra-red.svg?29b2c8b36d992e7ef8da39cc6537b4a5"
    Page Should Not Contain Image   src:"/images/icon-printer-a4-red.svg?ac48d1b4cfb78f7c98bd195c22e54d31"
    Capture Page Screenshot
    Sleep                           2    

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


Validação de Filtros superior a 48 horas - Expedição Omnicanal - Forum Sintra
    Open Browser                    http://som-pp.worten.net                        ff
    Sleep                           1
    Input Text                      id:username                                     TST_SOM_04      
    Input Text                      id:password                                     Pass.123
    Click Button                    xpath://*[@class="formButton"]
    Set Selenium Implicit Wait      60
    Sleep                           2
    Click Element                   xpath://*[@class="expedition_image"]
    Click Element                   xpath://*[contains(text(), "Tratadas")]
    Capture Page Screenshot         
    Input Text                      id:input-30                                    8806088213255
    Click Element                   xpath://*[@class="scanner-svg cursor-pointer svg-icon svg-fill"]
    Sleep                           2
    Capture Page Screenshot
    Page Should Not Contain Image   src:"/images/icon-printer-portatil-red.svg?c1c252bcac3069f5b9caf71ac5a76377"
    Page Should Not Contain Image   src:"/images/icon-printer-zebra-red.svg?29b2c8b36d992e7ef8da39cc6537b4a5"
    Page Should Not Contain Image   src:"/images/icon-printer-a4-red.svg?ac48d1b4cfb78f7c98bd195c22e54d31"
    Capture Page Screenshot
    Sleep                           2    

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