*** Settings ***
Documentation  Present some information about this test suite
Library  SeleniumLibrary

*** Variables ***
# ${BROWSER}  chrome
@{CAPABILITIES}
    ...  browserName: firefox,
    ...  platform: linux,
    ...  name: RobotFramework Test

${REMOTE_URL}  http://localhost:4444


*** Test Cases ***
User goes to the home page
    [Documentation]  This is some info about test
    [Tags]  Smoke
    open browser  url=https://formy-project.herokuapp.com/
#   ...  browser=${BROWSER}
    ...  remote_url=${REMOTE_URL}
    ...  desired_capabilities=${EMPTY.join(${CAPABILITIES})}
    wait for condition  return document.title == "Formy"
    click link  css=a[href="/form"]
    wait until element is visible  id=first-name
    input text  id=first-name  First Name
    input text  id=last-name  Last Name
    input text  id=job-title  Job Title
    Sleep  1s
    Close Browser