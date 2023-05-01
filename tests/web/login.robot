***Settings***
Documentation    Login

Resource    ../../resources/base.robot

# executa uma ou mais Keywords antes da execução de todos os steps de cada caso de teste
Suite Setup    Start Session
# executa uma ou mais Keywords apos a execução de todos os steps de cada caso de teste
Suite Teardown    Finish Session
Test Teardown     Finish TestCase

***Test Cases***
Login do Administrador
    [Tags]                        smoke
    Acesso a página Login
    Submeto minhas credenciais    admin@zepalheta.com.br    pwd123
    Devo ver a área logada
