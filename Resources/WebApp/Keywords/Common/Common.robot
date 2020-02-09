*** Settings ***
Library    SeleniumLibrary
Resource    ..\\..\\Environment\\AmazonIndia.robot
*** Variables ***
#${BROWSER}     chrome


*** Keywords ***
Begin Web Test
    Open browser    about:blank  ${BROWSER}

End Web Test
    close browser

Creating dummy user
    log    Dummy user created


Deleting dummy user
    log    Dummy user deleted