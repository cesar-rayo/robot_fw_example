*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
load
    go to  https://the-internet.herokuapp.com/
    wait for condition  return document.title == "The Internet"
go to login page
    click element  css=a[href="/login"]
    wait until element is visible  id=username