*** Settings ***

Resource    ../../src/package.resource

Documentation    Nesse arquivo vou criar keywords/funcoes gerais associadas ao login


*** Keywords ***

Logar com credenciais
    [Arguments]    ${email}    ${senha}
    Esperar elemento visivel e digitar um texto    ${input_email_login}    ${email}    #preencher input e-mail
    Esperar elemento visivel e digitar um texto    ${input_senha_login}    ${senha}               #preencher input senha
    Esperar elemento visivel e clica nele    ${btn_entrar}