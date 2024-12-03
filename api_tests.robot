*** Settings ***
Library    RequestsLibrary
Resource   ../resources/variables.robot

*** Test Cases ***
Generate Auth Token - Invalid User
    [Documentation]    Verify that non-admin user credentials return a 401 error
    Create Session    auth    ${API_URL}
    ${response}    POST   /generateAuthToken    json={"email": "${USERNAME}", "password": "${PASSWORD}"}
    Should Be Equal As Strings    ${response.status_code}    401
    Log    ${response.json()}
