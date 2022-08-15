*** Settings ***
Resource           ../page_objects/inicioPage.robot
Resource           ../page_objects/pesquisaPage.robot
*** Keywords ***

Given que um cliente pesquisa um "${produto}"
    Pesquisar um "${produto}"
When acessa a pesquisa
    Acessar pesquisa
Then Validar se existe produto na listagem 
    Verificar texto do primeiro produto