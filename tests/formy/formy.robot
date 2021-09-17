*** Settings ***
Documentation  Present some information about this test suite
Resource  ../../resources/common.robot  # necessary for Setup & Teardown
Resource  ../../resources/formy/pages/LandingPage.robot
Resource  ../../resources/formy/pages/FormPage.robot
test setup  common.begin web test
test teardown  common.end web test

*** Test Cases ***
User goes to the home page
    [Documentation]  This is some info about test
    [Tags]  Smoke
    LandingPage.load
    LandingPage.go to forms page
    FormPage.fill form
    Sleep  1s