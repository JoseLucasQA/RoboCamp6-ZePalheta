***Settings***
Documentation    Representação a página contratos de alugueis

***Variables***
${CONTRACTS_FORM}    css:a[href$=register]

***Keywords***
Create a new Contract
    [Arguments]    ${customer_name}    ${equipo_name}

    Click Element    xpath://div[contains(text(), 'Escolha o locatário')]
    Click Element    xpath://div[contains(text(), '${customer_name}')]

    Click Element    xpath://div[contains(text(), 'Escolha o item')]
    Click Element    xpath://div[contains(text(), '${equipo['name']}')]

    Input Text    id:delivery_price    10
    Input Text    id:quantity          1

    Click Element    css:button[type=submit]
    Click Element    xpath://button[text()='CADASTRAR']
