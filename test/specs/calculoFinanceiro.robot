*** Settings ***

Documentation    Essa spec sere para automatizar o app Planejamento Financeiro

Resource    ../../src/package.resource

Test Tags    planejamento_financeiro

#Arrange
Test Setup    Abrir navegador    ${urlPlanejamentoFinanceiro}

*** Test Cases ***

Cenario 01: Checar disparo de caculo
    [Tags]    disparo_calculo
    #Act
    Esperar elemento visivel e digitar um texto    ${inputSalarioMes}    3000
    Esperar elemento visivel e digitar um texto    ${inputHorasMes}    168
    Esperar elemento visivel e clica nele    ${btnCalcular}
    #R$ 17,86

    #Assert
    ${valor_esperado}=    Set Variable    R$ 17,86

    Esperar elemento visivel    ${valorHoraResultado}
    ${valor_obtido}=     Get Text    ${valorHoraResultado}
    ${assetiva}=    Run Keyword And Return Status    Element Should Contain    ${valorHoraResultado}    ${valor_esperado} 
    
    Sleep    3s
    IF    !${assetiva}
        Log to Console    Teste Falhou!
        Fail    O teste falhou,,pois não bateu com o valor esperado!
    END

    Log To Console    Valor obtido: ${valor_obtido} e Valor Esperado: ${valor_esperado}

