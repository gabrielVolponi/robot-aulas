*** Settings ***

Documentation    Essa spec e para realizar testes no login da vidi

Resource    ../../src/package.resource


Test Tags    login_completo

Test Setup    Abrir navegador    ${urlSistema}
Test Teardown    Fechar navegador    

*** Test Cases ***
# TDD - TEST DRIVEN DEVELOPMENT (AAA - Arrange | Act | Assert) 
Cenario 001: Logar com credenciais invalidas
    [Tags]       login_invalido

    #ACT - Gatilho da ação em foco no teste
    Logar com credenciais    teste@gmail.com    senha    #preencher input e-mail e senha invalidos
    
    #ASSERT - Resultado Esperado (O que deveria acontecer)
    Esperar elemento visivel    ${li_mensagem_de_erro}    #espera a msg de erro estar visivel
    Element Text Should Be    ${li_mensagem_de_erro}    ${msg_erro_login_invalido}    #captura o texto da mesagem de erro e ve se ele esta como o texto esperado 

Cenario 002: Logar com credenciais validas
    [Tags]     login_valido

    #ACT - Gatilho da ação em foco no teste
    Logar com credenciais    ${userSistema}    ${senhaSistema}   #preencher input e-mail e senha validos

    #ASSERT
    Wait Until Location Contains       /Account/EscolherArea
    

