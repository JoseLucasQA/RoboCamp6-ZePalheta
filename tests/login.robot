***Settings***
Documentation    Login
Resource         ../resources/keywords.robot

***Test Cases***
Login do administrador
    [tags]                               LoginComSucesso
    Dado que acesso a pagina de Login
    Quando submeto minhas credenciais    admin@zepalheta.com.br    pwd123 
    Entao devo ver a area logada

Senha incorreta
    [tags]                                      LoginInvalido
    Dado que acesso a pagina de Login
    Quando submeto minhas credenciais           admin@zepalheta.com.br                                     abc132
    Entao devo ter um toaster com a mensagem    Ocorreu um erro ao fazer login, cheque as credenciais. 

Senha em branco
    [tags]                                      LoginInvalido
    Dado que acesso a pagina de Login           
    Quando submeto minhas credenciais           admin@zepalheta.com.br          ${EMPTY}
    Entao devo ter um toaster com a mensagem    O campo senha é obrigatório!

Email em branco
    [tags]                                      LoginInvalido
    Dado que acesso a pagina de Login           
    Quando submeto minhas credenciais           ${EMPTY}                        abc123
    Entao devo ter um toaster com a mensagem    O campo email é obrigatório!

Email e senha em branco
    [tags]                                      LoginInvalido
    Dado que acesso a pagina de Login           
    Quando submeto minhas credenciais           ${EMPTY}                                          ${EMPTY}
    Entao devo ter um toaster com a mensagem    Os campos email e senha não foram preenchidos!
