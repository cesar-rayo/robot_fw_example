*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LP_FORM_LINK} =  css=a[href="/form"]
${FP_FIRST_NAME_INPUT} =  id=first-name

*** Keywords ***
load
    go to  https://formy-project.herokuapp.com/
go to forms page
    click link  ${LP_FORM_LINK}
    wait until element is visible  ${FP_FIRST_NAME_INPUT}