*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
fill form
    wait until element is visible  id=first-name
    input text  id=first-name  First Name
    input text  id=last-name  Last Name
    input text  id=job-title  Job Title