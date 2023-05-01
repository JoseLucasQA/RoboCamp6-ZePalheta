***Settings***
Documentation    Camada de serviços do projeto de automação

Library     RequestsLibrary
Library     Collections
Resource    helpers.robot

***Variables***
${base_api_url}    http://zepalheta-api:3333

***Keywords***
## Helpers
Get Session Token
    ${resp}=    Post Session    admin@zepalheta.com.br    pwd123

    ${token}    Convert To String    Bearer ${resp.json()['token']}

    [return]    ${token}


# POST /sessions
Post Session
    [Arguments]    ${email}    ${password}

    Create Session    zp-api    ${base_api_url} 

    &{headers}=    Create Dictionary    Content-Type=application/json
    &{payload}=    Create Dictionary    email=${email}                   password=${password}

    ${resp}=    Post Request    zp-api    /sessions    data=${payload}    headers=${headers}

    [return]    ${resp}

# POST /customers
Post Customer
    [Arguments]    ${payload}

    Create Session    zp-api    ${base_api_url}

    ${token}=      Get Session Token
    &{headers}=    Create Dictionary    content-type=application/json    authorization=${token}

    ${resp}=    Post Request    zp-api    /customers    data=${payload}    headers=${headers}

    [return]    ${resp}

# PUT /customers
Put Customer
    [Arguments]    ${payload}    ${user_id}

    Create Session    zp-api    ${base_api_url}

    ${token}=      Get Session Token
    &{headers}=    Create Dictionary    content-type=application/json    authorization=${token}

    ${resp}=    Put Request    zp-api    /customers/${user_id}    data=${payload}    headers=${headers}

    [return]    ${resp}

# GET /customers
Get Customers
    Create Session    zp-api    ${base_api_url}

    ${token}=      Get Session Token
    &{headers}=    Create Dictionary    Content-Type=Application/json    Authorization=${token}

    ${resp}=    Get Request    zp-api    /customers    headers=${headers}

    [return]    ${resp}

Get Unique Customer
    [Arguments]    ${user_id}

    Create Session    zp-api    ${base_api_url}

    ${token}=      Get Session Token
    &{headers}=    Create Dictionary    Content-Type=Application/json    Authorization=${token}

    ${resp}=    Get Request    zp-api    /customers/${user_id}    headers=${headers}

    [return]    ${resp}

# DELETE /customers
Delete Customer
    [Arguments]    ${cpf}

    ${token}=      Get Session Token
    &{headers}=    Create Dictionary    content-type=application/json    authorization=${token}

    ${resp}=    Delete Request    zp-api    /customers/${cpf}    headers=${headers}

    [return]    ${resp}

# POST /equipos
Post Equipo
    [Arguments]    ${payload}

    Create Session    zp-api    ${base_api_url}

    ${token}=      Get Session Token
    &{headers}=    Create Dictionary    content-type=application/json    authorization=${token}

    ${resp}=    Post Request    zp-api    /equipos    data=${payload}    headers=${headers}

    [return]    ${resp}
