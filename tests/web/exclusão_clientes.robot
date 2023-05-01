***Settings***
Documentation    Exclusão de clientes

Resource    ../../resources/base.robot

Suite Setup       Login session
Suite Teardown    Finish session

***Test Cases***
Remover cliente
    Dado que eu tenho um cliente indesejado
    ...                                           Bob Dilan                        12345678901    Rua dos Bugs, 101    11912345678
    E acesso a lista de clientes
    Quando removo esse cliente 
    Entao devo ver a notificacao                  Cliente removido com sucesso!
    E esse cliente nao deve aparecer na lista 