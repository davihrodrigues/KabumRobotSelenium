*** Settings ***
Resource            ../resources/base.robot
Test Setup       Abrir Browser
Test Teardown    Fechar Browser

*** Test Cases ***   

Departamentos
    Given que um cliente acessa um departamento                               
    And acessa o primeiro produto da lista
    When ele clicar em comprar
    Then ir para o carrinho com o produto escolhido 
