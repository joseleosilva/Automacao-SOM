*** Settings ***
Documentation   SOM

Library         SeleniumLibrary
Library         RequestsLibrary
Library         Collections


**Test Case** 
     
Login

	  
    
	  Open Browser	            https://som-pp.worten.net/dashboard  
      Sleep                     1
      Input Text Into Alert     Nome de usuário                         515
      Input Text Into Alert     Palavra-passe                           unrf34
      Sleep                     2
      Assign Id To Element      ok                                      id:ok
      Click Button              id:ok    
    