*** Settings ***
Library      SeleniumLibrary
Variables    PageObject/Login.py
Variables    PageObject/Dashboard.py
*** Keywords ***
OpenMyBrowser
        Open Browser    https://soctrip.com   chrome
        Maximize Browser Window
ClickButtonSignIn
        Wait until element is visible    ${btn_signin}
        Click Button    ${btn_signin}
InputEmail
        [Arguments]    ${usr_email}
        Input Text     ${txb_email}      ${usr_email}
InputPassword
        [Arguments]    ${usr_password}
        Input Text    ${txb_password}    ${usr_password}
ClickButtonSignIn2
        Click Button    ${btn_signin2}
SetupLanguage
        Click Element    ${elm_buttonmegamenu}
        sleep       2s
        ${passed}         Run Keyword And Return Status     Element should be visible          //lib-mega-menu//span[text() = 'Tiếng Việt']
        Run Keyword If            ${passed}        No Operation
        ...     ELSE             ChangeLanguage
ChangeLanguage
    Log To Console    Ngon ngu la Tieng Anh
    Wait Until Element Is Visible            ${elm_buttonLanguage}        5s            button language khong hien thi
    Click Element    ${elm_buttonLanguage}
    Click Element    ${elm_dropdownLanguage}
    Click Element    ${elm_tiengViet}
    Click Element    ${btn_apply}