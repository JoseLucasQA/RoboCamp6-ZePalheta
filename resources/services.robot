***Settings***
Documentation    Camada de serviços do projeto de automação

Library    RequestsLibrary

***Variables***
${base_url_api}    http://zepalheta-api:3333 

***Keywords***
Post session
    [Arguments]    ${email}    ${password}

    Create Session    zp-api    ${base_url_api}

    &{payload}=    Create Dictionary    email=${email}                   password=${password}    
    &{headers}=    Create Dictionary    Content-Type=application/json

    ${resp}=    Post Request    zp-api    /sessions    data=${payload}    headers=${headers}

    [Return]    ${resp}