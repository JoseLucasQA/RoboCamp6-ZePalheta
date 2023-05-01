***Settings***
Documentation    Representação da página Clientes com seus elementos e ações

***Variables***
${CUSTOMERS_FORM}    css:a[href$=register]
${CUSTOMERS_LIST}    css:table

***Keywords***

Register New Customer
    [Arguments]    ${name}    ${cpf}    ${address}    ${phone_number}

    Input Text       id:name                               ${name}
    Input Text       id:cpf                                ${cpf}
    Input Text       id:address                            ${address}
    Input Text       id:phone_number                       ${phone_number}
    Click Element    xpath://button[text()='CADASTRAR']

Go To Customer Details
    [Arguments]    ${cpf_formatado}

    ${element}=    Set Variable    xpath://td[text()='${cpf_formatado}']

    Wait Until Element Is Visible    ${element}
    Click Element                    ${element}

Click Remove Customer
    ${element}=                      Set Variable    xpath://button[text()='APAGAR']
    Wait Until Element Is Visible    ${element}
    Click Element                    ${element}      