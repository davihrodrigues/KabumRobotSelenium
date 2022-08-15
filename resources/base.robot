***Settings**
Library     SeleniumLibrary
Library     Collections
Library     Dialogs

Resource        ../test_steps/loginStep.robot
Resource        ../test_steps/pesquisaStep.robot
Resource        ../test_steps/departamentoStep.robot

***Variables***

${URL}                                https://kabum.com.br
${menuHamburguer}                     //*[@id='menuHamburguer']
${botãoAceitarCookie}                 //*[@id='onetrust-accept-btn-handler']
${labelCookie}                        //*[@id='onetrust-group-container']
${checkboxcaptcha}                    recaptcha-checkbox-borderAnimation


***Keywords***
Abrir Browser
  #comando para retirar alerta para aceitar notificacoes
  ${options}=                        Evaluate  sys.modules['selenium.webdriver.chrome.options'].Options()    sys
  Call Method                        ${options}    add_argument    --disable-notifications
  ${driver}=                         Create Webdriver    Chrome    options=${options}
  Go To               ${URL}
  maximize browser window
  # #solução paleativa pois o ideal seria em um ambiente de stg ou contato com os desenvolvedores para definir uma letra no CAPTCHA
  # Execute Manual Step                Please complete the CAPTCHA portion of the form

  #comando para aceitar cookie caso ele apareça

  ${passed} =                        Run Keyword And Return Status   Wait Until Page Contains Element  ${labelCookie}   30
  IF  ${passed}
    Wait Until Page Contains Element  ${botãoAceitarCookie}      30
    Click Element                     ${botãoAceitarCookie}

  ELSE
    Title Should Be                   KaBuM! | Maior E-commerce de Tecnologia e Games da América Latina 
  END

Fechar Browser
    Capture Page Screenshot
    
    Close Browser
