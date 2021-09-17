*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
load
    go to  https://formy-project.herokuapp.com/
go to forms page
    click link  css=a[href="/form"]
    wait until element is visible  id=first-name