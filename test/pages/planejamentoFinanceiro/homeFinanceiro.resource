*** Settings ***

Documentation  Todos locators do Planejamento Financeiro Home

*** Variables ***
${inputSalarioMes}    //input[@id='salario']
${inputHorasMes}     //input[@id='horas' and @placeholder='Ex: 160']
${btnCalcular}     //button[@onclick='calcular()']



${valorHoraResultado}    //span[@id='valorHora']