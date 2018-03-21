*** Settings ***
Documentation    Checking elements on the main page
Resource  _resource.robot

Test Setup   Open Browser  http://cocosteaparty.com/  chrome
Test Teardown     Close All Browsers

*** Test Cases ***
Checking blog’s name on the main page
   Page Should Contain Image  css=#branding > a > img

Checking returning to the main page from other site pages
   Click Element  ${CLOSE}
   Sleep  2
   Click Element  css=#menu-item-32852
   Click Element  css=#branding > a

Checking Newsletter icon on the main page
   Page Should Contain Element  css=.header-left > a:nth-child(3) > i

Checking pop-up window “You’ve got mail” on the main page
   Input Text  css=#subscribe-form  ikuz309@gmail.com
   Click Button  ${SUBSCRIBE}

Check the Newsletter email field with no entered email
    [Tags]  Neg
    Click Button  ${SUBSCRIBE}

Check the Newsletter email field with no domain portion
   [Tags]  Neg
   Input Text  css=#subscribe-form  111@asd
   Click Button  ${SUBSCRIBE}

Check the Newsletter email field with invalid data
   [Tags]  neg
   Input Text  css=#subscribe-form  111
   Click Button  ${SUBSCRIBE}

Checking Search icon on the main page
       Click Element  ${CLOSE}
       Sleep  2
       Page Should Contain Element  ${SEARCH}
       Click Element  ${SEARCH}
       Sleep  2
       Input Text  css=#s  hermes
       Press Key   css=#s  \\13

Checking Twitter/Instagram/ Pinterest/Facebook link on the main page
    Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  css=.header-right > div > a:nth-child(1)
   Click Element  css=.header-right > div > a:nth-child(1)
   Select Window  Main
   Page Should Contain Element  css=.header-right > div > a:nth-child(2) > i
   Click Element  css=.header-right > div > a:nth-child(2)
   Select Window  Main
   Page Should Contain Element  css=.header-right > div > a:nth-child(3) > i
   Click Element  css=.header-right > div > a:nth-child(3)
   Select Window  Main
   Page Should Contain Element  css=.header-right > div > a:nth-child(4) > i
   Click Element  css=.header-right > div > a:nth-child(4)

Checking ‘Read more’ button under the posts
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${POST}
   Element Should Be Visible  ${POST}
   Click Element  ${POST}

Checking ‘Facebook’ sharing link under the post
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  css=#post-45475 > div.entry-summary > div.share > a:nth-child(1) > i
   Element Should Be Visible  css=#post-45475 > div.entry-summary > div.share > a:nth-child(1) > i
   Click Element  css=#post-45475 > div.entry-summary > div.share > a:nth-child(1)

Checking ‘Twitter’ sharing link under the post
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  css=#post-45475 > div.entry-summary > div.share > a:nth-child(2) > i
   Element Should Be Visible  css=#post-45475 > div.entry-summary > div.share > a:nth-child(2) > i
   Click Element  css=#post-45475 > div.entry-summary > div.share > a:nth-child(2)

Checking ‘Pinterest’ sharing link under the post
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  css=#post-45475 > div.entry-summary > div.share > a:nth-child(3) > i
   Element Should Be Visible  css=#post-45475 > div.entry-summary > div.share > a:nth-child(3) > i
   Click Element  css=#post-45475 > div.entry-summary > div.share > a:nth-child(3)

Checking ‘Pinterest’ link on the post page
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  css=#post-45475 > div.entry-summary > h1 > a
   Element Should Be Visible  css=#post-45475 > div.entry-summary > h1 > a
   Click Element  css=#post-45475 > div.entry-summary > h1 > a
   Mouse Over  css=#post-45475 > div.entry-content.jpibfi_container > p:nth-child(2) > img
   Click Element  css=#post-45475 > div.entry-content.jpibfi_container > p:nth-child(2) > img

Checking Instagram links on the footer
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${INSLINK}
   Element Should Be Visible  ${INSLINK}
   Click Element  ${INSLINK}

Checking the ‘Disclosure’ link on the footer
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${DISCLOSURE}
   Element Should Be Visible  ${DISCLOSURE}
   Click Element  ${DISCLOSURE}

Checking the ‘Press’ link on the footer
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${PRESS}
   Element Should Be Visible  ${PRESS}
   Click Element  ${PRESS}

Checking the ‘Chloedigital’ link on the footer
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${CHLOE}
   Element Should Be Visible  ${CHLOE}
   Click Element  ${CHLOE}

Checking the sidebar on the main page
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Page Should Contain Element  ${SIDEBAR}

Checking the ‘Meet Ella’ block in the right sidebar
   Maximize Browser Window
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${SIDEBAR}
   Element Should Be Visible  css=#text-48 > div > div
   Click Element  css=#text-48 > div > div > a

Checking the ‘Let’s Discuss Podcast’ block in the right sidebar
   Maximize Browser Window
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${SIDEBAR}
   Element Should Be Visible  css=#text-49 > div > div
   Click Element  css=#text-49 > div > div > p > a

Checking the slider in the right sidebar
   Maximize Browser Window
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${SIDEBAR}
   Element Should Be Visible  css=#easingslider_widget-2

Checking the ‘Popular posts’ block in the right sidebar
   Maximize Browser Window
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${SIDEBAR}
   Element Should Be visible  css=#mostreadpostswidget-3
   Click Element  css=#mostreadpostswidget-3 > ul > li:nth-child(2) > a

Checking ‘Sign up’ block in the right sidebar
   Maximize Browser Window
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${SIGNUP}
   Element Should Be visible  ${SIGNUP}
   Input Text  css=#subscribe-form  ikuz309@gmail.com
   Click Button  ${SUBBUTTON}

Checking email field on the ‘Sign up’ block in the right sidebar
   Maximize Browser Window
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${SIGNUP}
   Element Should Be visible  ${SIGNUP}
   Select Checkbox  group[14953][1]
   Select Checkbox  group[14953][2]
   Click Button  ${SUBBUTTON}

*** Keywords ***
Provided precondition
    Setup system under test
