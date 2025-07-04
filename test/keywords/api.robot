*** Settings ***

Documentation    Keyword para fazer Requisições na API fake store

Resource    ../../src/package.resource
Library    Collections

*** Keywords ***

Pegar todos produtos cadastrados na loja
    @{produtosCaros}     Create List    
    ${response}=   GET    https://fakestoreapi.com/products
    ${produtos}    Set Variable    ${response.json()}
    FOR    ${produto}    IN    @{produtos}
        ${preco}=     Set Variable    ${produto['price']}
        Log To Console    ${preco}

        IF    ${preco} >= 100
            Log To Console    Existem pesquisas com valor invalido
            Fail    Existem pesquisas com valor maior do que R$100
        END
        
    END



