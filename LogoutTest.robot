*** Settings ***
Resource    ../Resources/Keywords.robot

*** Test Cases ***
Logout Successfully
    [Documentation]    Logout process
    Open Homepage
    Logout
    Verify Logged Out
