*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObject/PersonalProfile.py
*** Keywords ***
CreatePost
            [Arguments]      ${content}
            Wait until element is visible       ${btn_createPostFrame}      10s         Khong hien thi
            Click element         ${btn_createPostFrame}
            Wait until element is visible       ${txb_postContent}          10s
            Input text         ${txb_postContent}       ${content}
            Click element       ${btn_create}
VerifyPostCreateSuccessfully
            [Arguments]       ${content}
            Wait until element is visible   //post[.//div[text() = '${content}']]
            Scroll element into view        //post[.//div[text() = '${content}']]
            Element should be visible       //post[.//div[text() = '${content}']]
DeletePost
            [Arguments]       ${content}
            Click element    //div[div[post-content[*//div[text() = '${content}']]]]//post-header//span[@class = 'sctr-icon-dots-horizontal']
            Click element    ${btn_delete}
            Click element    ${btn_confirmDelete}

#            Element should not be visible    //post[.//div[text() = '${content}']]