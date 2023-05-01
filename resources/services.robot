***Settings***
Documentation    Camada de serviços do projeto de automação

Library    RequestsLibrary

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

New Customer By API
    [Arguments]    ${name}    ${cpf}    ${address}    ${phone_number}

    Create Session    zp-api    ${base_url_api}

    ${cpf_formatado}=    Format Cpf                 ${cpf} 
    ${token}=            Get Token Authorization

    &{payload}=    Create Dictionary    name=${name}                     cpf=${cpf_formatado}      address=${address}    phone_number=${phone_number}
    &{headers}=    Create Dictionary    Content-Type=application/json    Authorization=${token}

    ${remove_customer}=    Delete Request    zp-api    /customers/${payload['cpf']}    headers=${headers}

    ${resp}=    Post Request    zp-api    /customers    data=${payload}    headers=${headers}

    [Return]    ${resp}

Get Token Authorization
    ${resp}=     Login Session By API    ${admin_user}                     ${admin_password}
    ${token}=    Convert to String       Bearer ${resp.json()['token']}

    [Return]    ${token}

Validate Message
    [Arguments]    ${fail_message}    ${expected_message}

    Should Be Equal    ${fail_message}    ${expected_message}