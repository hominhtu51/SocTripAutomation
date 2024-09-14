*** Settings ***
Library      SeleniumLibrary
Variables    PageObject/LoginPage.py
*** Keywords ***
OpenMyBrowser
        Open Browser    https://app-np-bat.azurewebsites.net/Account/Login   chrome
        Maximize Browser Window

Enter User Name
        [Arguments]    ${usrName}
        Input Text    ${txt_userName}   ${usrName}

Enter Password
        [Arguments]    ${usrPwd}
        Input Text     ${txt_password}  ${usrPwd}

Click Button Login
        Click Button    ${btn_login}
        abc