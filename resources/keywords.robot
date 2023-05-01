***Keywords***

# Login
Dado que acesso a pagina de Login
    Go To    ${base_url}    

Quando submeto minhas credenciais
    [Arguments]    ${email}    ${password}

    Login With    ${email}    ${password}

Entao devo ver a area logada
    Wait Until Page Contains    Aluguéis    5

Entao devo ter um toaster com a mensagem
    [Arguments]    ${expectMessage}

    Wait Until Element Contains    ${TOASTER_ERROR_P}    ${expectMessage}

#Customers
Dado que acesso o formulario de cadastro de clientes
    Wait Until Element is Visible    ${NAV_CUSTOMERS}     5
    Click Element                    ${NAV_CUSTOMERS}
    Wait Until Element is Visible    ${CUSTOMERS_FORM}    5
    Click Element                    ${CUSTOMERS_FORM}

E que tenho o seguinte cliente
    [Arguments]    ${name}    ${cpf}    ${address}    ${phone_number}

    Remove Customer By Cpf    ${cpf}

    Set Test Variable    ${name}
    Set Test Variable    ${cpf}
    Set Test Variable    ${address}
    Set Test Variable    ${phone_number}

Mas esse cpf ja existe no sistema
    Insert Customer    ${name}    ${cpf}    ${address}    ${phone_number}

Quando faço a inclusao desse cliente
    Register New Customer    ${name}    ${cpf}    ${address}    ${phone_number}

Entao devo ver a notificacao
    [Arguments]    ${expected_notice}

    Wait Until Element Contains    ${TOASTER_SUCCESS}    ${expected_notice}    5

Entao devo ver a notificacao de erro
    [Arguments]    ${expected_notice}

    Wait Until Element Contains    ${TOASTER_ERROR}    ${expected_notice}    5

Entao devo ver mensagens informando campos obrigatórios
    [Arguments]    ${requireds_message}    

    Wait Until Page Contains    ${requireds_message}    5
