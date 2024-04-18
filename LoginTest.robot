*** Settings ***
Resource    ../Resources/Keywords.robot
Resource    ../Resources/TestData/login_credentials.csv

*** Test Cases ***
Login With Valid Credentials
    [Documentation]    Log in with valid credentials
    Open Login Page
    :FOR    ${row}    IN    @{LOGIN_CREDENTIALS}
    \    ${username}=    Set Variable    ${row}[0]
    \    ${password}=    Set Variable    ${row}[1]
    \    Fill Login Form    ${username}    ${password}
    \    Submit Login Form
    \    Verify Login Success

Login With Invalid Credentials
    [Documentation]    Attempt to log in with invalid credentials
    Open Login Page
    :FOR    ${row}    IN    @{INVALID_LOGIN_CREDENTIALS}
    \    ${username}=    Set Variable    ${row}[0]
    \    ${password}=    Set Variable    ${row}[1]
    \    Fill Login Form    ${username}    ${password}
    \    Submit Login Form
    \    Verify Login Error
