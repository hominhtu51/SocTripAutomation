*** Settings ***
Library      SeleniumLibrary
Variables    PageObject/Login.py

*** Keywords ***
OpenMyBrowser
        Open Browser    https://soctrip.com   chrome
        Maximize Browser Window
ClickButtonSignIn
        Click Button    ${btn_signin}
InputEmail
        [Arguments]    ${usr_email}
        Input Text     ${txb_email}      ${usr_email}
InputPassword
        [Arguments]    ${usr_password}
        Input Text    ${txb_password}    ${usr_password}
ClickButtonSignIn2
        Click Button    ${btn_signin2}
