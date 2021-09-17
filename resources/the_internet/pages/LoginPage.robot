*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
fill form credentials
    input text  id=username  tomsmith
    input password  id=password  SuperSecretPassword!
    click button  css=button[type="submit"]
    wait until element is visible  id=flash