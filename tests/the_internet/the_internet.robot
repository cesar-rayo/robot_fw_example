*** Settings ***
Documentation  Present some information about this test suite
Resource  ../../data/InputData.robot   # import inputdata
Resource  ../../resources/common.robot  # necessary for Setup & Teardown
Resource  ../../resources/DataManager.robot  # for reading the csv file
Resource  ../../resources/the_internet/pages/LandingPage.robot
Resource  ../../resources/the_internet/pages/LoginPage.robot
Resource  ../../resources/the_internet/InternetApp.robot
test setup  common.begin web test
test teardown  common.end web test

*** Variables ***
@{CAPABILITIES}
    ...  browserName: ${BROWSER},
    ...  platform: linux,
    ...  name: RobotFramework Test

${REMOTE_URL}  http://localhost:4444

*** Test Cases ***
User goes to the home page
    [Documentation]  This is some info about test
    [Tags]  Smoke
    LandingPage.load
    LandingPage.go to login page
    LoginPage.fill form credentials
    Sleep  2s

# Uses InputData.robot
Invalid login scenarios using template
    [Template]  InternetApp.Test Multiple Login Scenarios
    ${UNREGISTERED_USER}
    ${INVALID_PASSWORD_USER}
    ${BLANK_CREDENTIALS_USER}

Invalid login scenarios using CSV
    ${InvalidLoginScenarios} =  DataManager.Get CSV Data  ${INVALID_CREDENTIALS_PATH_CSV}
    InternetApp.Login with Many Invalid Credentials  ${InvalidLoginScenarios}

Invalid login scenarios using JSON
    ${InvalidLoginScenarios} =  DataManager.Get JSON Data  ${INVALID_CREDENTIALS_PATH_JSON}
    InternetApp.Login with Many Invalid Credentials from json  ${InvalidLoginScenarios["Users"]}
