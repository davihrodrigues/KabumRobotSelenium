*** Settings ***
Resource            ../resources/base.robot

Test Template    Logins inválidos 
Test Setup       Abrir Browser
Test Teardown    Fechar Browser

** Variables ***
${emailInvalido}             emailteste@testeteste.com
${emailIncompleto}           asddkasj
${senhaInvalida}             testetesteteste
${msgDadosinvalidos}         Dados inválidos
${msgPreencherCampos}        Preencha todos os campos!
${msgTamIncompleto}          O tamanho do campo 'login' esta incorreto

*** Test Cases ***          EMAIL                              SENHA                    MSG                                                                                      
DADOS_INVALIDOS_LOGIN       ${emailInvalido}                   ${senhaInvalida}        ${msgDadosinvalidos}  
TODOS_OS_CAMPOS_LOGIN       ${emailInvalido}                   ${EMPTY}                ${msgPreencherCampos} 
LOGIN_INCORRETO_LOGIN       ${emailIncompleto}                 ${senhaInvalida}        ${msgTamIncompleto}                                                                        

***Keywords*** 
Logins inválidos
    [arguments]     ${email}       ${senha}       ${msg}
    Given que o cliente acessa a tela de login
    And o cliente informa um "${email}" e uma "${senha}"                              
    When acessa entrar
    Then o sistema exibe "${msg}" de login inválido 
