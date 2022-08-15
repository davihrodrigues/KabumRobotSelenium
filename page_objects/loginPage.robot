*** Variables ***
#botões 
${botãoLogin}                                        css=#botaoLogin
#campo
${campoEmail}                           css=#inputUsuarioLogin
${campoSenha}                           css=#inputSenhaLogin

#label
${painelLogin}                          formLogin

#alert
${DadosInválidos}                       Dados inválidos


*** Keywords ***
  #login    
Verificar se foi até login
    Wait Until Element Is Visible       ${painelLogin}          30

Preencher email "${e-mail}"
    Wait Until Element Is Visible       ${campoEmail}           30
    Input Text                          ${campoEmail}           ${e-mail}

Preencher senha "${senhaa}"
    Wait Until Element Is Visible       ${campoSenha}           30
    Input Text                          ${campoSenha}           ${senhaa}

Clicar em Login
    Wait Until Element Is Visible       ${botãoLogin}            30
    Click Element                       ${botãoLogin}        

Verificar se apareceu msg de erro "${erro}"
    Wait Until Page Contains       ${erro}         30    

