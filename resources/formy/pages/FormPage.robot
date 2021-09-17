*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
fill form
    wait until element is visible  id=first-name
    input text  id=first-name  First Name
    input text  id=last-name  Last Name
    input text  id=job-title  Job Title
    scroll element into view  css=a[role="button"]
    click element  css=a[role="button"]
    wait until element is visible  css=div[role="alert"]
    element text should be  css=div[role="alert"]
        ...  expected=The form was successfully submitted!
        ...  message=The message does not match