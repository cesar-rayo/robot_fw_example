*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${I_LP_LOGIN_LINK} =  css=a[href="/login"]
${I_LOGIN_USERNAME_INPUT} =  id=username

*** Keywords ***
load
    go to  https://the-internet.herokuapp.com/
    wait for condition  return document.title == "The Internet"
go to login page
    click element  ${I_LP_LOGIN_LINK}
    wait until element is visible  ${I_LOGIN_USERNAME_INPUT}