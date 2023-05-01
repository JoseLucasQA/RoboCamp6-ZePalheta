***Settings***
Documentation    Cadastro de equipamentos Tentativa

Resource    ../resources/base.robot

Test Template    Campos obrigatórios

Suite Setup       Login session
Suite Teardown    Finish session

***Keywords***
Campos obrigatórios
    [Arguments]    ${name}    ${price}    ${requireds_message}

    Dado que acesso o formulario de cadastro de equipamentos
    E que tenho o seguinte equipamento                          ${name}                 ${price}
    Quando faço a inclusao desse equipamento                    
    Entao devo ver mensagens informando campos obrigatórios     ${requireds_message}

***Test Cases***
Nome obrigatório     ${EMPTY}    50          Nome do equipo é obrigatório
Preço obrigatório    Les Paul    ${EMPTY}    Diária do equipo é obrigatória
