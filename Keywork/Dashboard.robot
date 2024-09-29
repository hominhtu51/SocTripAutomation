*** Settings ***
Library      SeleniumLibrary
Variables    ../PageObject/Dashboard.py

*** Keywords ***
ClickHeaderAvatar
    Wait Until Element Is Visible    ${elm_headeravatar}    5s
    Click Element    ${elm_headeravatar}
ClickXemTrangCaNhan
    Wait Until Element Is Visible    ${elm_xemtrangcanhan}      5s
    Click Element    ${elm_xemtrangcanhan}