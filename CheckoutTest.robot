*** Settings ***
Resource    ../Resources/Keywords.robot

*** Test Cases ***
Checkout Process Tests
    [Documentation]    Test the checkout process
    Open Product Page    Sony vaio i5
    Add Product To Cart
    Proceed To Checkout
    Fill Checkout Form    John Doe    USA    New York    1234567890    12    2025
    Submit Checkout Form
    Verify Purchase Success
