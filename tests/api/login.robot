***Settings***
Documentation    Login via api 

Resource    ../../resources/services.robot
Resource    ../../resources/base.robot

***Test Cases***
Login com sucesso
    ${resp}=            Login Session By API    ${admin_user}    ${admin_password}
    Status Should Be    200                     ${resp}

Senha incorreta
    ${resp}=            Login Session By API    ${admin_user}    abc123
    Status Should Be    401                     ${resp}

Usuario nao existe
    ${resp}=            Login Session By API    admin@gmail.com    abc123
    Status Should Be    401                     ${resp}
