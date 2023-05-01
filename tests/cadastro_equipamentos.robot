***Settings***
Documentation    Cadastro de equipamentos

Resource    ../resources/base.robot

Suite Setup       Login session
Suite Teardown    Finish session

***Test Cases***
Novo equipamento
    Dado que acesso o formulario de cadastro de equipamentos
    E que tenho o seguinte equipamento                          Les Paul                          50
    Quando faço a inclusao desse equipamento                    
    Entao devo ver a notificacao                                Equipo cadastrado com sucesso!

Novo equipamento duplicado
    Dado que acesso o formulario de cadastro de equipamentos
    E que tenho o seguinte equipamento                          Les Paul                        50
    Mas esse equipamento ja existe no sistema
    Quando faço a inclusao desse equipamento                    
    Entao devo ver a notificacao de erro                        Erro na criação de um equipo