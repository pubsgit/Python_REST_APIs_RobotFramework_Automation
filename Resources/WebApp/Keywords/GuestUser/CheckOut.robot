*** Settings ***
Library    SeleniumLibrary
Resource    ..\\..\\Pageobjects\\LandingPage.robot
Resource    ..\\..\\Pageobjects\\TopNav.robot
Resource    ..\\..\\Pageobjects\\SearchResults.robot

*** Variables ***
${landingpageurl} =    https://www.amazon.in/
${backsearchresults} =    Back to results
${searchbox} =    xpath=//*[@id="search"]/div[1]/div[2]/div/span[4]/div[1]/div[1]/div/span/div/div/div[2]/div/span/a
${producttoadd} =    xpath=//*[@id="add-to-cart-button"]
${productaddconfirmation} =    Added to Cart
${checkoutbutton} =    xpath=//*[@id="hlb-ptc-btn-native"]
${loginpageemailphoneno} =    Email or mobile phone number

*** Keywords ***

Search For Products
    LandingPage.Load    ${landingpageurl}
    TopNav.Search for products
    SearchResults.Verify search completed

Select Prodtct From Search Results
    click link    ${searchbox}
    switch window    NEW
    wait until page contains    ${backsearchresults}

Add Product To Cart
    click button    ${producttoadd}
    wait until page contains    ${productaddconfirmation}

Begin Checkout
    click link    ${checkoutbutton}
    wait until page contains    ${loginpageemailphoneno}

