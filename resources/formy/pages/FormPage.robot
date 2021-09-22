*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${FP_FIRST_NAME_INPUT} =  id=first-name
${FP_LAST_NAME_INPUT} =  id=last-name
${FP_JOB_INPUT} =  id=job-title
${FP_SUBMIT_BTN} =  css=a[role="button"]
${FP_ALERT} =  css=div[role="alert"]

*** Keywords ***
fill form
    wait until element is visible  ${FP_FIRST_NAME_INPUT}
    input text  ${FP_FIRST_NAME_INPUT}  First Name
    input text  ${FP_LAST_NAME_INPUT}  Last Name
    input text  ${FP_JOB_INPUT}  Job Title
    click element  ${FP_SUBMIT_BTN}
    wait until element is visible  ${FP_ALERT}
    element text should be  ${FP_ALERT}
        ...  expected=The form was successfully submitted!
        ...  message=The message does not match