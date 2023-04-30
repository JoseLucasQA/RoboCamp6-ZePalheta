***Settings***
Documentation    Login
Resource         ../resources/keywords.robot
Resource         ../resources/hooks.robot
Test Setup       Start session
Test Teardown    Finish session

***Test Cases***
Login do administrador
    Dado que acesso a pagina de Login
    Quando submeto minhas credenciais    admin@zepalheta.com.br    pwd123 
    Entao devo ver a area logada