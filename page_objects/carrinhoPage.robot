*** Variables ***
#botões
${irParaOcarrinho}                  //*[@class='sc-grREDI iDTLQc buttonGoToCart']
${prodNoCarrinho}                   Preço à vista no PIX:                 
#label
${primProdLista}                    //*[@class='sc-eVQfli bFzeyB']/div[1]/a/div[1]/div[1]/h2/span

# ${primProdLista}                    //*[@class='sc-eVQfli bFzeyB']/div[1]/a/div[1]/div[2]/div[1]/h2/span
*** Keywords ***

Verificar o produto no carrinho
  Wait Until Page Contains       ${ProdNoCarrinho}            30     
  
Avancar para o carrinho
  Wait Until Element Is Visible       ${irParaOcarrinho}            30
  Click Element                       ${irParaOcarrinho}        
                              
  

