

*** Settings ***
Resource   Keywork/Login.robot
Resource   Keywork/Dashboard.robot
Library    SeleniumLibrary
*** Variables ***
${usr_email} =  Hothihoaithu1510@gmail.com
${usr_password} =  Soctrip@1234
*** Test Cases ***
CreatePost
    OpenMyBrowser
    ClickButtonSignIn
    InputEmail    ${usr_email}
    InputPassword    ${usr_password}
    ClickButtonSignIn2
    ClickHeaderAvatar
    ClickXemTrangCaNhan

