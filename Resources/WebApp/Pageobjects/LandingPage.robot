*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOAD_CONFIRMATION} =    Hello. Sign in

*** Keywords ***
Load
    [Arguments]    ${url}
    Go to     ${url}
    wait until page contains    ${LOAD_CONFIRMATION}
