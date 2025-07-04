*** Settings ***

Documentation    Essa spec e para realizar testes na API fake store

Resource    ../../src/package.resource


Test Tags    login_completo

*** Test Cases ***
# TDD - TEST DRIVEN DEVELOPMENT (AAA - Arrange | Act | Assert) 
Cenario 001: GET products
    [Tags]    get_products
    Pegar todos produtos cadastrados na loja