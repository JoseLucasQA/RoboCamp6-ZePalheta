***Settings***
Documentation    Camada de serviços do projeto de automação

Library    RequestsLibrary
Library    OperatingSystem

Resource    helpers.robot

***Variables***
${base_url_api}    http://zepalheta-api:3333 

***Keywords***
Login Session By API
    [Arguments]    ${email}    ${password}

    Create Session    zp-api    ${base_url_api}

    &{payload}=    Create Dictionary    email=${email}                   password=${password}    
    &{headers}=    Create Dictionary    Content-Type=application/json

    ${resp}=    Post Request    zp-api    /sessions    data=${payload}    headers=${headers}

    [Return]    ${resp}

Get Token Authorization
    ${resp}=     Login Session By API    ${admin_user}                     ${admin_password}
    ${token}=    Convert to String       Bearer ${resp.json()['token']}

    [Return]    ${token}

New Customer By API
    [Arguments]    ${payload}

    Create Session    zp-api    ${base_url_api}

    ${token}=      Get Token Authorization
    &{headers}=    Create Dictionary          content-type=application/json    authorization=${token}

    ${resp}=    Post Request    zp-api    /customers    data=${payload}    headers=${headers}

    [return]    ${resp}

Get Customers
    Create Session    zp-api    ${base_url_api}

    ${token}=      Get Token Authorization
    &{headers}=    Create Dictionary          Content-type=application/json    Authorization=${token}

    ${resp}=    Get Request    zp-api    /customers    ${headers}

    [Return]    ${resp}

Get Unique Customer
    [Arguments]    ${user_id}

    Create Session    zp-api    ${base_url_api}

    ${token}=      Get Token Authorization
    &{headers}=    Create Dictionary          Content-type=application/json    Authorization=${token}

    ${resp}=    Get Request    zp-api    /customers/${user_id}    ${headers}

    [Return]    ${resp}

Delete Customer
    [Arguments]    ${cpf}

    ${token}=      Get Token Authorization
    &{headers}=    Create Dictionary          Content-Type=application/json    Authorization=${token}

    Delete Request    zp-api    /customers/${cpf}    headers=${headers}