*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CONTINUE_SHOPPING}    id:continue-shopping
${CHECKOUT_BUTTON}      id:checkout
${FIRST_NAME}           id:first-name
${LAST_NAME}            id:last-name
${POSTAL_CODE}         id:postal-code
${CONTINUE}            id:continue
${FINISH}              id:finish
${BACK_TO_PRODUCTS}     id:back-to-products

*** Keywords ***
Continue Shopping
    Click Element    ${CONTINUE_SHOPPING}

Proceed To Checkout
    Click Element    ${CHECKOUT_BUTTON}
    Input Text    ${FIRST_NAME}    Drew
    Input Text    ${LAST_NAME}    Nguyen
    Input Text    ${POSTAL_CODE}    810000
    Click Element    ${CONTINUE}
    Click Element    ${FINISH}
    Click Element    ${BACK_TO_PRODUCTS}
