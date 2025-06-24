*** Settings ***

Documentation    Nesse arquivo vou criar keywords/funcoes gerais para usar em todo o framework

Library    SeleniumLibrary

*** Keywords ***
Abrir navegador
    [Arguments]    ${url}
    Open Browser    ${url}    Chrome
    Maximize Browser Window  

Fechar navegador
    Capture Page Screenshot
    Close Browser  

Esperar elemento visivel
    [Arguments]    ${elemento}
    Wait Until Element Is Visible    ${elemento}

Esperar elemento visivel e clica nele
    [Arguments]    ${elemento}
    Esperar elemento visivel    ${elemento}
    Click Element    ${elemento}

Esperar elemento visivel e digitar um texto
    [Arguments]    ${elemento}    ${texto}
    Esperar elemento visivel    ${elemento}
    Input Text    ${elemento}    ${texto}

