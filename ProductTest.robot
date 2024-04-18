*** Settings ***
Resource    ../Resources/Keywords.robot

*** Test Cases ***
Product Browsing Tests
    [Documentation]    Verify products displayed and categories navigated
    Open Homepage
    Verify Products Displayed
    Navigate To Product Category    Phones
    Verify Category Page Displayed
