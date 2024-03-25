*** Settings ***
Documentation     Common keywords for JMap Admin and JMap NG
#----------------------------------------------------------------------------------------------------------------------------
Library    SeleniumLibrary		# Selenium framework

#-----------------------------------------------------------------------------------------------------------------------------
*** Variables ***
${URL}    https://translate.google.com
${RESOLUTION_X}    1920
${RESOLUTION_Y}    1080
${USERNAME}    administrator
${PASSWORD}    administartor

*** Keywords ***
Open Chrome in language     [Arguments]    ${pLanguage}
    ${options}=    Evaluate     sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${options}	add_argument    --lang\=${pLanguage}
    Call Method    ${options}	add_argument    ignore-certificate-errors
	Create WebDriver	Chrome    chrome_options=${options}