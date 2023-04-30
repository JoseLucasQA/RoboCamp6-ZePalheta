***Settings***
Documentation    Login
Resource         ../resources/keywords.robot

***Test Cases***
Login do administrador
    Dado que acesso a pagina de Login
    Quando submeto minhas credenciais    admin@zepalheta.com.br    pwd123 
    Entao devo ver a area logada

Senha incorreta
    [tags]                                      inv_pass
    Dado que acesso a pagina de Login
    Quando submeto minhas credenciais           admin@zepalheta.com.br                                     abc132
    Entao devo ter um toaster com a mensagem    Ocorreu um erro ao fazer login, cheque as credenciais. 