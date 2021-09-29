*** Settings ***
Library  SeleniumLibrary

*** Variables ***
# Takes the value provided in the command with flag -v
# Command > Scripts > Keywords

${BROWSER}  test override


*** Keywords ***
begin web test
    open browser  url=about:blank
    ...  remote_url=${REMOTE_URL}
    ...  desired_capabilities=${EMPTY.join(${CAPABILITIES})}
    maximize browser window
    delete all cookies

end web test
    # Cleans up everything (temp files and sessions)
    close all browsers

insert test data
    log  inserting test data

delete test data
    log  deleting test data