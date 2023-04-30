***Keywords***

# Login
Dado que acesso a pagina de Login
    Go To    http://192.168.99.100:3000/    

Quando submeto minhas credenciais
    [Arguments]    ${email}    ${password}

    Login With    ${email}    ${password}

Entao devo ver a area logada
    Wait Until Page Contains    Aluguéis    5

Entao devo ter um toaster com a mensagem
    [Arguments]    ${expectMessage}

    Wait Until Element Contains    ${TOASTER_ERROR}    ${expectMessage}


#Customers
Dado que acesso o formulario de cadastro de clientes
    Wait Until Element is Visible    ${NAV_CUSTOMERS}     5
    Click Element                    ${NAV_CUSTOMERS}
    Wait Until Element is Visible    ${CUSTOMERS_FORM}    5
    Click Element                    ${CUSTOMERS_FORM}

Quando faço a inclusao desse cliente
    [Arguments]    ${name}    ${cpf}    ${address}    ${phone_number}

    Register New Customer    ${name}    ${cpf}    ${address}    ${phone_number}

Entao devo ver a notificacao
    [Arguments]    ${expected_notice}

    Wait Until Element Contains    ${TOASTER_SUCCESS}    ${expected_notice}    5