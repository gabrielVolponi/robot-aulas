*** Settings ***

Documentation  Todos locators do login


*** Variables ***

${input_email_login}    //input[@id='floatingInput']
${input_senha_login}    //input[@id='floatingPassword']
${btn_entrar}    //button[@data-cy='Entrar']
${li_mensagem_de_erro}    //div//ul//li




#mensagens de erro
${msg_erro_login_invalido}    Não foi possível realizar o login. Por favor verifique o e-mail e senha e tente novamente.  
