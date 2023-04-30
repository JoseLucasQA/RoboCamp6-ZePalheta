***Keywords***
Dado que acesso a pagina de Login
    Go To    http://192.168.99.100:3000/    

Quando submeto minhas credenciais
    [Arguments]    ${email}    ${password}

    Input Text       id:txtEmail                        ${email}
    Input Text       css:input[placeholder=Senha]       ${password}
    Click Element    xpath://button[text()='Entrar']

Entao devo ver a area logada
    Wait Until Page Contains    Aluguéis    5

Entao devo ter um toaster com a mensagem
    [Arguments]    ${expectMessage}

    Wait Until Element Contains    css:div[type=error] p    ${expectMessage}