*** Settings ***
Library      SeleniumLibrary
Variables    PageObject/Dashboard.py

*** Keywords ***
ClickHeaderAvatar
    Wait Until Element Is Visible    ${elm_headeravatar}    5000
    Click Element    ${elm_headeravatar}
ClickXemTrangCaNhan
    Click Element    ${elm_xemtrangcanhan}