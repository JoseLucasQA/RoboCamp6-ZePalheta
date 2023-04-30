***Settings***
Documentation    Cadastro de clientes

Resource    ../resources/base.robot

Test Setup       Login session
Test Teardown    Finish session

***Keywords***
Dado que acesso o formulario de cadastro de clientes
    Wait Until Element is Visible    ${NAV_CUSTOMERS}     5
    Click Element                    ${NAV_CUSTOMERS}
    Wait Until Element is Visible    ${CUSTOMERS_FORM}    5
    Click Element                    ${CUSTOMERS_FORM}

***Test Cases***
Novo cliente
    Dado que acesso o formulario de cadastro de clientes
    # Quando faço a inclusao desse cliente                    Bon Jovi                           00000001405    Rua dos Bugs, 1000    11999999999
    # Entao devo ver a notificacao                            Cliente cadastrado com sucesso!
