***Settings***
Documentation    Cadastro de clientes

Resource    ../../resources/base.robot

Suite Setup       Login Session
Suite Teardown    Finish Session
Test Teardown     Finish TestCase

***Test Cases***
Novo cliente
    [Tags]                                                  smoke
    Dado que acesso o formulário de cadastro de clientes
    E que eu tenho o seguinte cliente:
    ...                                                     Bon Jovi                           00000001406    Rua dos Bugs, 1000    11999999999
    Quando faço a inclusão desse cliente
    Então devo ver a notificação:                           Cliente cadastrado com sucesso!
    E esse cliente de ser exibido na lista

Cliente duplicado
    [Tags]                                                  dup
    Dado que acesso o formulário de cadastro de clientes
    E que eu tenho o seguinte cliente:
    ...                                                     Adrian Smith                      00000014141    Rua dos Bugs, 2000    11999999991
    Mas esse cpf já existe no sistema
    Quando faço a inclusão desse cliente
    Então devo ver a notificação de erro:                   Este CPF já existe no sistema!

Campos Obrigatórios
    Dado que acesso o formulário de cadastro de clientes
    E que eu tenho o seguinte cliente:
    ...                                                                                           ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}
    Quando faço a inclusão desse cliente
    Então devo ver mensagens informando que os campos do cadastro de clientes são obrigatórios

Nome é Obrigatório
    [Tags]        required
    [Template]    Validação de Campos
    ${EMPTY}      48034903094            Rua dos Bugs, 1000    11999999999    Nome é obrigatório

Cpf é Obrigatório
    [Tags]             required
    [Template]         Validação de Campos
    Fernando Papito    ${EMPTY}               Rua dos Bugs, 1000    11999999999    CPF é obrigatório

Endereço é Obrigatório
    [Tags]             required
    [Template]         Validação de Campos
    Fernando Papito    48034903094            ${EMPTY}    11999999999    Endereço é obrigatório

Telefone é Obrigatório
    [Tags]             required
    [Template]         Validação de Campos
    Fernando Papito    48034903094            Rua dos Bugs, 1000    ${EMPTY}    Telefone é obrigatório

Telefone incorreto
    [Template]       Validação de Campos
    João da Silva    0000001406             Rua dos Bugs, 1100    1199999999    Telefone inválido

***Keywords***
Validação de Campos
    [Arguments]    ${nome}    ${cpf}    ${endereco}    ${telefone}    ${saida}

    Dado que acesso o formulário de cadastro de clientes
    E que eu tenho o seguinte cliente:
    ...                                                     ${nome}     ${cpf}    ${endereco}    ${telefone}
    Quando faço a inclusão desse cliente
    Então devo ver o texto:                                 ${saida}
