***Settings***
Documentation    Novo cliente via api 

Resource    ../../resources/services.robot
Resource    ../../resources/base.robot        

***Test Cases***
New Customer By API
    &{payload}=    Create Dictionary    name=Teste    cpf=12345678910    address=Rua dos Bugs,1010    phone_number=11912345678

    Delete Customer    ${payload['cpf']}
    ${resp}=           New Customer By API    ${payload}


    Status Should Be    200    ${resp}
