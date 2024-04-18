*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary

*** Variables ***
${Browser}    Chrome
${URL}        https://www.demoblaze.com/

*** Keywords ***
Open Homepage
    Open Browser    ${URL}    ${Browser}

Open Signup Page
    Click Element    xpath=//a[contains(text(),'Sign up')]

Fill Signup Form
    [Arguments]    ${username}    ${password}
    Input Text    id=sign-username    ${username}
    Input Text    id=sign-password    ${password}

Submit Signup Form
    Click Element    css=.modal-footer > button

Verify Signup Success Message
    Page Should Contain Element    xpath=//button[contains(text(),'Sign in')]

Verify Signup Error Message
    Page Should Contain Element    xpath=//div[@id='signInModal']/div/div/div[2]/span

Open Login Page
    Click Element    xpath=//a[contains(text(),'Log in')]

Fill Login Form
    [Arguments]    ${username}    ${password}
    Input Text    id=loginusername    ${username}
    Input Text    id=loginpassword    ${password}

Submit Login Form
    Click Element    css=.modal-footer > button

Verify Login Success
    Page Should Contain Element    xpath=//a[contains(text(),'Log out')]

Verify Login Error
    Page Should Contain Element    xpath=//div[@id='signInModal']/div/div/div[2]/span

Navigate To Product Category
    [Arguments]    ${category}
    Click Element    xpath=//a[contains(text(),'${category}')]

Verify Category Page Displayed
    Page Should Contain Element    xpath=//h3[contains(text(),'${category}')]

Open Product Page
    [Arguments]    ${product}
    Click Element    xpath=//a[contains(text(),'${product}')]

Add Product To Cart
    Click Element    xpath=//a[contains(text(),'Add to cart')]

Verify Product Added To Cart
    Page Should Contain Element    xpath=//td[contains(text(),'${product}')]

Proceed To Checkout
    Click Element    xpath=//a[@class='nav-link'][contains(text(),'Cart')]
    Click Element    xpath=//button[contains(text(),'Place Order')]

Fill Checkout Form
    [Arguments]    ${name}    ${country}    ${city}    ${card}    ${month}    ${year}
    Input Text    id=name    ${name}
    Input Text    id=country    ${country}
    Input Text    id=city    ${city}
    Input Text    id=card    ${card}
    Input Text    id=month    ${month}
    Input Text    id=year    ${year}
    Click Element    xpath=//button[contains(text(),'Purchase')]

Verify Purchase Success
    Page Should Contain Element    xpath=//h2[contains(text(),'Thank you for your purchase!')]

Logout
    Click Element    xpath=//a[contains(text(),'Log out')]

Verify Logged Out
    Page Should Contain Element    xpath=//a[contains(text(),'Log in')]

*** Keywords ***
Get Login Credentials
    [Return]    ${LOGIN_CREDENTIALS}
    ${LOGIN_CREDENTIALS}=    Read CSV File    ${CURDIR}/TestData/login_credentials.csv
    [Return]    ${LOGIN_CREDENTIALS}

*** Keywords ***
Get Invalid Login Credentials
    [Return]    ${INVALID_LOGIN_CREDENTIALS}
    ${INVALID_LOGIN_CREDENTIALS}=    Create List    invaliduser1    invalidpass1    invaliduser2    invalidpass2
    [Return]    ${INVALID_LOGIN_CREDENTIALS}
