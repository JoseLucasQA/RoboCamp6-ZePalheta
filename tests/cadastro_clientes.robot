***Settings***
Documentation    Cadastro de clientes

Resource    ../resources/base.robot

Test Setup       Login session
Test Teardown    Finish session

***Keywords***
Campos obrigatórios
    [Arguments]    ${name}    ${cpf}    ${address}    ${phone_number}

***Test Cases***
Novo cliente
    Dado que acesso o formulario de cadastro de clientes
    E que tenho o seguinte cliente                          Bon Jovi                           00000001405    Rua dos Bugs, 1000    11999999999
    Quando faço a inclusao desse cliente                    
    Entao devo ver a notificacao                            Cliente cadastrado com sucesso!