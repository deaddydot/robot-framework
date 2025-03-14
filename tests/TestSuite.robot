*** Settings ***
Library    OperatingSystem
Resource   ../resources/common.robot
Resource   ../resources/config.robot
Resource   ../pages/LoginPage.robot
Resource   ../pages/InventoryPage.robot
Resource   ../pages/CheckoutPage.robot

#Suite Setup    Prepare Report Directories

*** Test Cases ***
Login Test
    ${USERNAME}  Get Environment Variable  SAUCE_USERNAME
    ${PASSWORD}  Get Environment Variable  SAUCE_PASSWORD
    Open Login Page    ${BASE_URL}    ${BROWSER}
    Enter Credentials    ${USERNAME}    ${PASSWORD}
    Click Login

Inventory Test
    Verify Inventory Page
    Add All Items To Cart
    Go To Cart

Checkout Test
    Continue Shopping
    Go To Cart
    Proceed To Checkout
