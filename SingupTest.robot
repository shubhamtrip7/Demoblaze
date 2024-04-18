*** Settings ***
Resource    ../Resources/Keywords.robot

*** Test Cases ***
SignUp With Valid Details
    [Documentation]    Sign up with valid details
    Open Signup Page
    Fill Signup Form    validuser    validpass
    Submit Signup Form
    Verify Signup Success Message

SignUp With Existing Email
    [Documentation]    Attempt to sign up with an existing email
    Open Signup Page
    Fill Signup Form    existinguser    mypassword
    Submit Signup Form
    Verify Signup Error Message
