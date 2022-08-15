*** Variables ***
#botões
${botãoIrParaLogin}                   linkLoginHeader
${selecionarDepartamento}             //span[contains(text(),'TODOS OS DEPARTAMENTOS')]

${SelecionarDepartamentoHardware}     css=div.slick-slide.slick-active.slick-current:nth-child(2) div:nth-child(1) div.sc-ciZhAO.hywa-Dz:nth-child(1) h2.sc-ezWOiH.gMeuYY
#campos
${campoBusca}                         input-busca

*** Keywords ***
  #login
  
Acessar página de login
    Wait Until Element Is Visible       ${botãoIrParaLogin}              20       
    Click Element                       ${botãoIrParaLogin}

Pesquisar um "${produt}"
    Wait Until Element Is Visible       ${campoBusca}                   20
    Input Text                          ${campoBusca}                   ${produt}

Acessar pesquisa
  Press Keys    ${campoBusca}    ENTER

Acessar departamento
    Wait Until Element Is Visible       ${selecionarDepartamento}             20       
    Mouse Over                          ${selecionarDepartamento}



Acessa um departamento 
  Sleep                           3
  Execute javascript              window.scrollTo(0, 2000)
  Wait Until Element Is Visible         ${SelecionarDepartamentoHardware}             30
  Click Element                         ${SelecionarDepartamentoHardware}
  