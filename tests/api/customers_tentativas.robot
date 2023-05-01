***Settings***
Documentation    Novo cliente tentativas via api 

Resource    ../../resources/services.robot
Resource    ../../resources/base.robot        

Test Template    Required Parameters 

***Keywords***
Required Parameters
    [Arguments]    ${name}    ${cpf}    ${address}    ${phone_number}    ${expected_message}

    ${resp}=    New Customer By API    ${name}    ${cpf}    ${address}    ${phone_number}

    ${fail_message}=    Convert To String    ${resp.json()['message']}
    Validate Message    ${fail_message}      ${expected_message}

***Test Cases***
Nome obrigatório        ${EMPTY}    00000000012    Rua dos bugs, 100    11999999999    "name" is not allowed to be empty
CPF obrigatório         "Teste"     ${EMPTY}       Rua dos bugs, 100    11999999999    "cpf" length must be 14 characters long
Endereço obrigatório    "Teste"     00000000012    ${EMPTY}             11999999999    "address" is not allowed to be empty
Telefone obrigatório    "Teste"     00000000012    Rua dos bugs, 100    ${EMPTY}       "phone_number" is not allowed to be empty