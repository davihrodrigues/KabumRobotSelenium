*** Variables ***
#botões
${botãoComprar}                                    //button[@id='']
#label
${primProdLista}                    //*[@class='sc-eVQfli bFzeyB']/div[1]/a/div[1]/div[1]/h2/span
# ${primProdLista}                    //*[@class='sc-eVQfli bFzeyB']/div[1]/a/div[1]/div[2]/div[1]/h2/span
*** Keywords ***


Clicar em comprar
  Wait Until Element Is Visible       ${botãoComprar}            30
  Click Element                       ${botãoComprar}        
  

