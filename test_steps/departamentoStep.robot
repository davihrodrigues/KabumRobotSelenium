*** Settings ***
Resource           ../page_objects/loginPage.robot
Resource           ../page_objects/inicioPage.robot
Resource           ../page_objects/produtoPage.robot
Resource           ../page_objects/carrinhoPage.robot
*** Keywords ***

Given que um cliente acessa um departamento    
    Acessa um departamento
And acessa o primeiro produto da lista
    Verificar texto do primeiro produto
    Acessar primeiro produto da lista
When ele clicar em comprar
    Clicar em comprar
Then ir para o carrinho com o produto escolhido 
    Avancar para o carrinho
    Verificar o produto no carrinho
