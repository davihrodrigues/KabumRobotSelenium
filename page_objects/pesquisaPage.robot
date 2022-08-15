*** Variables ***
#label
${primProdLista}                    //*[@class='sc-eVQfli bFzeyB']/div[1]/a/div[1]/div[1]/h2/span

*** Keywords ***
  #login
  
Verificar texto do primeiro produto
  # Wait Until Element Is Visible       xpath=//*[@id='headerName']/h1[contains(@text='${lista}')]    30
  Sleep                               3
  Execute javascript              window.scrollTo(0, 300)
  Wait Until Element Is Visible         ${primProdLista}        30
  ${primProdDaLista}      Get Text       xpath=${primProdLista} 
  
Acessar primeiro produto da lista
  Wait Until Element Is Visible       ${primProdLista}            30
  Click Element                       ${primProdLista}        
 
    


