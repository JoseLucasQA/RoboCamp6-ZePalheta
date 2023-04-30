***Settings***
Documentation    Cadastro de clientes Tentativa

Resource    ../resources/base.robot

Test Template    Campos obrigatórios

Suite Setup       Login session
Suite Teardown    Finish session

***Keywords***
Campos obrigatórios
    [Arguments]    ${name}    ${cpf}    ${address}    ${phone_number}    ${requireds_message}

    Dado que acesso o formulario de cadastro de clientes
    Quando faço a inclusao desse cliente                       ${name}                 ${cpf}    ${address}    ${phone_number}
    Entao devo ver mensagens informando campos obrigatórios    ${requireds_message}

***Test Cases***
Nome obrigatório        ${EMPTY}    00000000012    Rua dos bugs, 100    11999999999    Nome é obrigatório
Cpf obrigatório         User        ${EMPTY}       Rua dos bugs, 100    11999999999    CPF é obrigatório
Endereço obrigatório    User        00000000012    ${EMPTY}             11999999999    Endereço é obrigatório
Telefone obrigatório    User        00000000012    Rua dos bugs, 100    ${EMPTY}       Telefone é obrigatório
Telefone inválido       User        00000000012    Rua dos bugs, 100    119999         Telefone inválido