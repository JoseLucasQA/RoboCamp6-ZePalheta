***Settings***
Documentation    Get Customers

Resource    ../../../resources/services.robot
Resource    ../../../resources/base.robot

***Test Cases***
Get Customer List

    ${list}=    Get Json    customers/list.json

    FOR                    ${item}    IN    @{list['data']}
    New Customer By API    ${item}
    END

    ${resp}             Get Customers
    Status Should Be    200              ${resp}
    ${total}=           Get Length       ${resp.json()}
    Should Be True      ${total} > 0

Get Unique Customer

    ${origin}=    Get Json    customers/unique.json

    Delete Customer    ${origin['cpf']}
    ${resp}=           New Customer By API    ${origin}
    ${user_id}=        Convert To String      ${resp.json()['id']}

    ${resp}=    Get Unique Customer    ${user_id}

    Status Should Be    200                      ${resp}
    Should Be Equal     ${resp.json()['cpf']}    ${origin['cpf']}

Get Customer Not Found

    ${resp}=    Get Unique Customer    6e7906b7fb3f8e1c6366c0910050e595

    Status Should Be    404                          ${resp}
    Should Be Equal     ${resp.json()['message']}    Customer not found



