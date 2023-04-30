***Settings***
Documentation    Login Tentativa

Resource    ../resources/base.robot

Test Template    Tentativa de Login

Suite Setup       Start session
Suite Teardown    Finish session

***keywords***
Tentativa de Login
    [Arguments]    ${input_email}    ${input_senha}    ${output_mensagem}

    Dado que acesso a pagina de Login
    Quando submeto minhas credenciais           ${input_email}        ${input_senha}
    Entao devo ter um toaster com a mensagem    ${output_mensagem}

***Test Cases***
Senha incorreta            admin@zepalheta.com.br    abc132      Ocorreu um erro ao fazer login, cheque as credenciais.
Senha em branco            admin@zepalheta.com.br    ${EMPTY}    O campo senha é obrigatório!
Email em branco            ${EMPTY}                  abc123      O campo email é obrigatório!
Email e senha em branco    ${EMPTY}                  ${EMPTY}    Os campos email e senha não foram preenchidos!
Login incorreto            admin&gmail.com.br        abc123      Ocorreu um erro ao fazer login, cheque as credenciais.
