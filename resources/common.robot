*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
begin web test
    open browser  url=about:blank
    ...  remote_url=${REMOTE_URL}
    ...  desired_capabilities=${EMPTY.join(${CAPABILITIES})}
    maximize browser window
    delete all cookies

end web test
    close browser

insert test data
    log  inserting test data

delete test data
    log  deleting test data