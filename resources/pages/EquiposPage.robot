***Settings***
Documentation    Representação da página Equipamentos com seus elementos e ações

***Variables***
${EQUIPOS_FORM}    css:a[href$=register]

***Keywords***

Register New Equipo
    [Arguments]    ${name}    ${price}    

    Input Text       id:equipo-name                        ${name}
    Input Text       id:daily_price                        ${price}
    Click Element    xpath://button[text()='CADASTRAR']
