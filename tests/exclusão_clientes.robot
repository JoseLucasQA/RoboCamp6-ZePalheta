***Settings***
Documentation    Exclusão de clientes

Resource    ../resources/base.robot

Suite Setup       Login session
Suite Teardown    Finish session

***Test Cases***
Remover cliente
    Dado que eu tenho um cliente indesejado
    ...                                        Bob Dilan                        12345678901    Rua dos Bugs, 101    11912345678
    E acesso a lista de clientes
    Quando removo esse cliente 
    Entao devo ver a notificacao               Cliente removido com sucesso!

***Keywords***
Dado que eu tenho um cliente indesejado
    [Arguments]    ${name}    ${$cpf}    ${address}    ${phone_number}    

    Remove Customer By CPF    ${$cpf}
    Insert Customer           ${name}    ${$cpf}    ${address}    ${phone_number} 

E acesso a lista de clientes
    Go To Customers

Quando removo esse cliente
    Wait Until Element Is Visible    xpath://td[text()='123.456.789-01']    5
    Click Element                    xpath://td[text()='123.456.789-01']    
    Wait Until Element Is Visible    xpath://button[text()='APAGAR']        5
    Click Element                    xpath://button[text()='APAGAR']        


