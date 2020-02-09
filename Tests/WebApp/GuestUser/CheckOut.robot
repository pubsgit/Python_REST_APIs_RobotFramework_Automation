*** Settings ***
Documentation   These cases are for Logged in user who wants to do a checkout
Library    SeleniumLibrary
Resource    ..\\..\\..\\Resources\\WebApp\\Keywords\\GuestUser\\CheckOut.robot
Resource    ..\\..\\..\\Resources\\WebApp\\Keywords\\Common\\Common.robot
Suite Setup    Creating dummy user
Test Setup    Begin Web Test
Test Teardown    End Web Test
Suite Teardown    Deleting dummy user

*** Test Cases ***
Guest user should be able to search
    [Documentation]    This test is to verify Guest user should be able to search
    [Tags]    Smoke
    CheckOut.Search For Products


Guest user should be able to search and add items to cart
    [Documentation]    This test is to verify Guest user should be able to search and add items to cart
    [Tags]    Regression
    CheckOut.Search For Products
    CheckOut.Select Prodtct From Search Results
    CheckOut.Add Product To Cart
    CheckOut.Begin Checkout




