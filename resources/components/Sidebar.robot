***Settings***
Documentation    Representação do menu lateral de navegação na área logada

***Variables***
${NAV_CUSTOMERS}    css:a[href$=customers]
${NAV_CONTRACTS}    css:a[href$=contracts]

***Keywords***
Go To Customers
    Wait Until Element Is Visible    ${NAV_CUSTOMERS}    5
    Click Element                    ${NAV_CUSTOMERS}

Go To Contracts
    Wait Until Element Is Visible    ${NAV_CONTRACTS}    5
    Click Element                    ${NAV_CONTRACTS}