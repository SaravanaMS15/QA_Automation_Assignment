*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/variables.robot

Suite Setup    Set Selenium Timeout    30 seconds

*** Test Cases ***
Valid Login
    [Documentation]    Validate successful login with correct credentials
    Open Browser    ${BASE_URL}    chrome
    Input Text    id=email       ${USERNAME}
    Input Text    id=password    ${PASSWORD}
    Click Button  xpath=//*[@id="main_content_auth"]/div/div/div/div[1]/div/form/div[4]/div/div/div/div/button
    Wait Until Page Contains    dashboard  timeout= 30 seconds
    Close Browser

Invalid Login
    [Documentation]    Validate error message with incorrect credentials
    Open Browser    ${BASE_URL}    chrome
    Input Text    id=email       invalid@user.com
    Input Text    id=password    InvalidPass123
    Click Button  xpath=//*[@id="main_content_auth"]/div/div/div/div[1]/div/form/div[4]/div/div/div/div/button
    Wait Until Page Contains   Not found  timeout=30 seconds
    Close Browser
