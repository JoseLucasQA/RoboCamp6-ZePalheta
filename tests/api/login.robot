***Settings***
Library    Collections
Library    RequestsLibrary

Resource    ../../resources/services.robot
Resource    ../../resources/base.robot

***Test Cases***
Login com sucesso
    ${resp}=            Post session    ${admin_user}    ${admin_password}
    Status Should Be    200             ${resp}

Senha incorreta
    ${resp}=            Post session    ${admin_user}    abc123
    Status Should Be    401             ${resp}

Usuario nao existe
    ${resp}=            Post session    admin@gmail.com    abc123
    Status Should Be    401             ${resp}
