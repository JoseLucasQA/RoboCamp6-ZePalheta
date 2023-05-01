***Settings***
Documentation    Cadastro de Contratos de Locação

Resource    ../../resources/base.robot

Suite Setup       Login Session
Suite Teardown    Finish Session
Test Teardown     Finish TestCase

***Test Cases***
Novo Contrato de Locação

    Dado que eu tenho o seguinte cliente cadastrado:    slash.json
    E este cliente deseja alugar o seguinte equipo:     meteoro.json
    E acesso o formulário de contratos
    Quando faço um novo contrato de locação
    Então devo ver a notificação:                       Contrato criado com sucesso!
