*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN_USERNAME}    id:user-name
${LOGIN_PASSWORD}    id:password
${LOGIN_BUTTON}      id:login-button

*** Keywords ***
Open Login Page
    [Arguments]    ${url}    ${browser}
    Open Browser   ${url}  ${browser}
    Maximize Browser Window

Enter Credentials
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Visible    ${LOGIN_USERNAME}    timeout=10s
    Input Text    ${LOGIN_USERNAME}    ${username}
    Input Text    ${LOGIN_PASSWORD}    ${password}

Click Login
    Click Button    ${LOGIN_BUTTON}
