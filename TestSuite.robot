*** Settings ***
Resource    ../Resources/TestSetup.robot
Test Setup       TestSetup
Test Teardown    Close All Browsers

*** Test Cases ***
Run All Tests
    [Tags]    smoke
    SignUp With Valid Details
    Login With Valid Credentials
    Product Browsing Tests
    Add Product To Cart
    Checkout Process Tests
    Logout Successfully
