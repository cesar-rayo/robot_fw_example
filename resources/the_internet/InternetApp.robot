*** Settings ***
Resource  ../../resources/the_internet/pages/LandingPage.robot
Resource  ../../resources/the_internet/pages/LoginPage.robot

*** Keywords ***
Login with Many Invalid Credentials
    [Arguments]  ${CredentialsList}
    FOR  ${Credential}  IN  @{CredentialsList}
        run keyword and continue on failure  Navigate to Sign In Page
        run keyword and continue on failure  Attempt Login from csv  ${Credential}
    END


Test Multiple Login Scenarios
    [Arguments]  ${Credentials}
    Navigate to Sign In Page
    Attempt Login  ${Credentials}

Navigate to Sign In Page
    LandingPage.load
    LandingPage.go to login page

Attempt Login
    [Arguments]  ${Credentials}
    LoginPage.fill given credentials  ${Credentials}
    LoginPage.click submit
    ${alert} =  LoginPage.get alert message
    Log  ${alert}

Attempt Login from csv
    [Arguments]  ${Credentials}
    LoginPage.fill credentials from list  ${Credentials}
    LoginPage.click submit
    ${alert} =  LoginPage.get alert message
    Log  ${alert}
