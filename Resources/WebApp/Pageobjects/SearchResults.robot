*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${RESULT} =    results for "Ferrari 458"

*** Keywords ***
Verify search completed
    wait until page contains    ${RESULT}