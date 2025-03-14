*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${NAVBAR}    id:react-burger-menu-btn
${CART}      class:shopping_cart_link
${SORT}      class:product_sort_container
${ADD_TO_CART_BUTTONS}    xpath=//button[contains(text(), "Add to cart")]

*** Keywords ***
Verify Inventory Page
    Wait Until Element Is Visible    ${NAVBAR}    timeout=10s
    Element Should Be Visible    ${NAVBAR}
    Element Should Be Visible    ${CART}
    Element Should Be Visible    ${SORT}

Add All Items To Cart
    ${elements}  Get WebElements    ${ADD_TO_CART_BUTTONS}
    ${count}  Get Length    ${elements}
    Should Be Equal As Numbers    ${count}    6

    FOR    ${element}    IN    @{elements}
        Log  Clicking on element: ${element}
        Click Element    ${element}
    END

Go To Cart
    Click Element    ${CART}
