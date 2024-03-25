*** Settings ***
Documentation     Test cases for Layers
#-----------------------------------------------------------------------------------------------------------------------------
Library    SeleniumLibrary    run_on_failure=no_operation

Resource    ../common/Common.robot

Test Setup   Test Setup   
Test Teardown    Test Teardown

#-----------------------------------------------------------------------------------------------------------------------------
*** Test Cases ***
Open browser
    [Documentation]    Open a chrome web browser
    Sleep    2s    



#-----------------------------------------------------------------------------------------------------------------------------
*** Keywords ***



#-----------------------------------------------------------------------------------------------------------------------------
Test Setup
    ${SPEED}  Set Selenium Speed    0.5
    Open Chrome in language    EN
    Go To	${URL}
    Set Window Size    ${RESOLUTION_X}    ${RESOLUTION_Y}
    Maximize Browser Window
    Sleep    3s
        
Test Teardown
    Close All Browsers   