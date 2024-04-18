*** Settings ***
Resource    ../Resources/Keywords.robot

*** Test Cases ***
Add Product To Cart
    [Documentation]    Add product to the cart
    Open Product Page    Sony vaio i5
    Add Product To Cart
    Verify Product Added To Cart
