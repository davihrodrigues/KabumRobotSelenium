*** Settings ***
Resource            ../resources/base.robot

Test Template    Pesquisar 
Test Setup       Abrir Browser
Test Teardown    Fechar Browser

***Variables***
${iphone}                   Iphone 
${android}                  android
${pc}                       pc

*** Test Cases ***          PRODUTO                                                                                                            
IPHONE_PESQUISA             ${iphone}                             
# ADNDROID_PESQUISA           ${android}                    
# PC_PESQUISA                 ${pc}                                                                                        

***Keywords*** 
Pesquisar
    [arguments]     ${produto} 
    Given que um cliente pesquisa um "${produto}"                              
    When acessa a pesquisa
    Then Validar se existe produto na listagem 
