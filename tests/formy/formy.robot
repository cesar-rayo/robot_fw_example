*** Settings ***
Library  ../../libraries/CustomLibrary.py
Documentation  Present some information about this test suite
Resource  ../../resources/common.robot  # necessary for Setup & Teardown
Resource  ../../resources/formy/pages/LandingPage.robot
Resource  ../../resources/formy/pages/FormPage.robot
test setup  common.begin web test
test teardown  common.end web test
suite setup  common.insert test data
suite teardown  common.delete test data

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
    LandingPage.go to forms page
    FormPage.fill form
    Sleep  1s
    do some custom action
