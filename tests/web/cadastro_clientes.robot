***Settings***
Documentation    Cadastro de clientes

Resource    ../../resources/base.robot

Suite Setup       Login session
Suite Teardown    Finish session

***Keywords***
Campos obrigatórios
    [Arguments]    ${name}    ${cpf}    ${address}    ${phone_number}

***Test Cases***
Novo cliente
    Dado que acesso o formulario de cadastro de clientes
    E que tenho o seguinte cliente                          Bon Jovi                           00000001405    Rua dos Bugs, 1000    11999999999
    Quando faço a inclusao desse cliente                    
    Entao devo ver a notificacao                            Cliente cadastrado com sucesso!
    E esse cliente deve ser exibido na lista 

Novo cliente duplicado
    Dado que acesso o formulario de cadastro de clientes
    E que tenho o seguinte cliente                          Bon Jovi                          00000001405    Rua dos Bugs, 1000    11999999999
    Mas esse cpf ja existe no sistema
    Quando faço a inclusao desse cliente                    
    Entao devo ver a notificacao de erro                    Este CPF já existe no sistema!