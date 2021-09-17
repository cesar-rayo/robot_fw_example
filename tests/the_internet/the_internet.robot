*** Settings ***
Documentation  Present some information about this test suite
Library  SeleniumLibrary

*** Variables ***
# ${BROWSER}  chrome
@{CAPABILITIES}
    ...  browserName: ${BROWSER},
    ...  platform: linux,
    ...  name: RobotFramework Test

${REMOTE_URL}  http://localhost:4444


*** Test Cases ***
User goes to the home page
    [Documentation]  This is some info about test
    [Tags]  Smoke
    open browser  url=https://the-internet.herokuapp.com/
#   ...  browser=${BROWSER}
    ...  remote_url=${REMOTE_URL}
    ...  desired_capabilities=${EMPTY.join(${CAPABILITIES})}
    wait for condition  return document.title == "The Internet"
    click link  css=a[href="/login"]
    wait until element is visible  id=username
    input text  id=username  tomsmith
    input password  id=password  SuperSecretPassword!
    click button  css=button[type="submit"]
    wait until element is visible  id=flash
    Sleep  2s
    Close Browser