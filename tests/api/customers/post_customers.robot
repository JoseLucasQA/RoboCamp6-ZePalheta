*** Settings ***
Documentation    Post Customers

Resource    ../../../resources/services.robot
Resource    ../../../resources/base.robot

*** Test Cases ***
New Customer By API
    ${payload}=    Get Json    customers/customer.json    

    Delete Customer    ${payload['cpf']}
    ${resp}=           New Customer By API    ${payload}

    Status Should Be    200    ${resp}

Name is required
    ${payload}=    Get Json    customers/no_name.json    

    ${resp}=    New Customer By API    ${payload}

    Status Should Be    400                          ${resp}
    Should Be Equal     ${resp.json()['message']}    "name" is required

Cpf is required
    ${payload}=    Get Json    customers/no_cpf.json    

    ${resp}=    New Customer By API    ${payload}

    Status Should Be    400                          ${resp}
    Should Be Equal     ${resp.json()['message']}    "cpf" is required

Address is required
    ${payload}=    Get Json    customers/no_address.json    

    ${resp}=    New Customer By API    ${payload}

    Status Should Be    400                          ${resp}
    Should Be Equal     ${resp.json()['message']}    "address" is required

Phone is required
    ${payload}=    Get Json    customers/no_phone.json    

    Delete Customer    ${payload['cpf']}

    ${resp}=    New Customer By API    ${payload}

    Status Should Be    400                          ${resp}
    Should Be Equal     ${resp.json()['message']}    "phone_number" is required
