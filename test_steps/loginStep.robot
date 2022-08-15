*** Settings ***
Resource           ../page_objects/loginPage.robot
Resource           ../page_objects/inicioPage.robot
*** Keywords ***

Given que o cliente acessa a tela de login
   Acessar página de login
   Verificar se foi até login
And o cliente informa um "${email}" e uma "${senha}"  
    Preencher email "${email}"
    Preencher senha "${senha}"
When acessa entrar
    Clicar em Login
Then o sistema exibe "${msg}" de login inválido 
    Verificar se apareceu msg de erro "${msg}"