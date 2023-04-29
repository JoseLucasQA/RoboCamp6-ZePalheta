***Settings***

Documentation    Login
Library          SeleniumLibrary

***Test Cases***
Login do administrador
    Dado que acesso a pagina de Login
    Quando submeto minhas credenciais    admin@zepalheta.com.br    pwd123 
    Devo ver a area logada

***Keywords***
Dado que acesso a pagina de Login
    Open Browser               http://192.168.99.100:3000/    chrome
    Maximize Browser Window

Quando submeto minhas credenciais
    [Arguments]    ${email}    ${password}

    Input Text       id:txtEmail                        ${email}
    Input Text       css:input[placeholder=Senha]       ${password}
    Click Element    xpath://button[text()='Entrar']

Devo ver a area logada
    Wait Until Page Contains    Aluguéis    5
    Close Browser
