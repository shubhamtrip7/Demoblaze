*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
TestSetup
    Open Browser    https://www.demoblaze.com/    Chrome
    Maximize Browser Window
    Set Selenium Speed    0.5
