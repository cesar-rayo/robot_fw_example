*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${I_LOGIN_USERNAME_INPUT} =  id=username
${I_LOGIN_PASSWORD_INPUT} =  id=password
${I_LOGIN_BTN} =  css=button[type="submit"]
${I_LOGIN_ALERT} =  id=flash

*** Keywords ***
log my list
    [Arguments]  ${MyList}
    Log Many   @{MyList}

fill form credentials
    input text  ${I_LOGIN_USERNAME_INPUT}  tomsmith
    input password  ${I_LOGIN_PASSWORD_INPUT}  SuperSecretPassword!
    click button  ${I_LOGIN_BTN}
    wait until element is visible  ${I_LOGIN_ALERT}
    ${my_var} =  set variable  here goes the value
    log  ${my_var}
    @{my_list} =  create list  value 1  value 2  value 3
    log my list  ${my_list}
    log  ${my_list}[0]
    &{dictionary} =  create dictionary  key1=value1  key2=value2
    log  ${dictionary}[key1]

