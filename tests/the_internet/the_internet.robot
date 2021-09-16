*** Settings ***
Documentation  Present some information about this test suite
Library  SeleniumLibrary

*** Variables ***
# ${BROWSER}  chrome
@{CAPABILITIES}
    ...  browserName: chrome,
    ...  platform: linux,
    ...  name: RobotFramework Test

${REMOTE_URL}  http://localhost:4444


*** Test Cases ***
User goes to the home page
    [Documentation]  This is some info about test
    [Tags]  Smoke
    Open Browser  url=https://the-internet.herokuapp.com/
#   ...  browser=${BROWSER}
    ...  remote_url=${REMOTE_URL}
    ...  desired_capabilities=${EMPTY.join(${CAPABILITIES})}
    Sleep  3s
    Close Browser