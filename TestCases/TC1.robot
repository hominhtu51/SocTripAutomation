

*** Settings ***
Resource   Keywork/Login.robot
Resource   Keywork/Dashboard.robot
Library    SeleniumLibrary
*** Variables ***
${usr_email} =  Hothihoaithu1510@gmail.com
${usr_password} =  Soctrip@12345
*** Test Cases ***
CreatePost
    OpenMyBrowser
    SetupLanguage
    ClickButtonSignIn
    InputEmail    ${usr_email}
    InputPassword    ${usr_password}
    ClickButtonSignIn2
    sleep     5s
    ClickHeaderAvatar
    ClickXemTrangCaNhan

