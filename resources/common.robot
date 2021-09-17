*** Settings ***
Library  SeleniumLibrary

*** Variables ***
@{CAPABILITIES}
    ...  browserName: ${BROWSER},
    ...  platform: linux,
    ...  name: RobotFramework Test

${REMOTE_URL}  http://localhost:4444

*** Keywords ***
begin web test
    open browser  url=about:blank
    ...  remote_url=${REMOTE_URL}
    ...  desired_capabilities=${EMPTY.join(${CAPABILITIES})}
    maximize browser window
    delete all cookies

end web test
    close browser