*** Settings ***

Documentation    Essa spec e para realizar testes na Home

Resource    ../../src/package.resource

Test Tags    login_completo

Test Setup    Abrir navegador    ${urlSistema}

*** Test Cases ***

    