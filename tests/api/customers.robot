***Settings***
Documentation    Novo cliente via api 

Resource    ../../resources/services.robot
Resource    ../../resources/base.robot        

***Test Cases***
New Customer By API
    ${resp}=    New Customer By API    Teste    12345678910    Rua dos Bugs,1010    11912345678

    Status Should Be    200    ${resp}
