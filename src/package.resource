*** Settings ***

Documentation    Esse arquivo será utilizado para armazenar todos recursos necessários para rodar um teste


#Libs
Library    SeleniumLibrary

#Keywords
Resource    ../test/keywords/allKeywords.resource

#Pages/Locators/Variaveis
Resource    ../test/pages/allPages.resource

#Users
Resource    users.resource


*** Variables ***
${urlSistema}    https://sistema-h-pesquisador.vidibr.net/