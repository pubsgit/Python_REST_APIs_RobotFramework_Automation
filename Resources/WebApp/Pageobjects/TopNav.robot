*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SEARCH_ITEM} =    Ferrari 458

*** Keywords ***
Search for products
    input text    id=twotabsearchtextbox     ${SEARCH_ITEM}
    click button    xpath=//*[@id="nav-search"]/form/div[2]/div/input

