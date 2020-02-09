*** Settings ***
Documentation   These cases are for Logged in user who wants to do a checkout
Library    SeleniumLibrary


*** Variables ***
${BROWSER}     chrome

*** Test Cases ***
User must sign-in to checkout
    [Documentation]    This test is to verify user is signed-in if they would want to checkout
    [Tags]    Smoke
    Open browser    https://www.amazon.in/  ${BROWSER}
    sleep    3s
    Close browser

User must not be signed in to checkout
    [Documentation]    This test is to verify user is signed-in if they would want to checkout
    [Tags]    Regression
    Open browser    https://www.amazon.in/  ${BROWSER}
    sleep    3s
    Close browser

*** Keywords ***
