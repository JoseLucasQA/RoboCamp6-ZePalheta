***Settings***
Documentation    Representação da página Clientes com seus elementos e ações

***Variables***
${CUSTOMERS_FORM}    css:a[href$=register]

***Keywords***

Register New Customer
    [Arguments]    ${name}    ${cpf}    ${address}    ${phone_number}

    Input Text       id:name                               ${name}
    Input Text       id:cpf                                ${cpf}
    Input Text       id:address                            ${address}
    Input Text       id:phone_number                       ${phone_number}
    Click Element    xpath://button[text()='CADASTRAR']