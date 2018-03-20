*** Settings ***
Documentation    Checking elements on the main page
Resource  _resource.robot

Test Setup   Open Browser  http://cocosteaparty.com/  chrome
#Test Teardown     Close All Browsers

*** Test Cases ***
Checking Fashion dropdown on the main page
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${FASHION}
   Mouse Over   ${FASHION}
   Sleep  2
   Click Element  css=#menu-item-32831 > a

Checking ‘Style’ link in the Fashion dropdown
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${FASHION}
   Mouse Over  ${FASHION}
   Sleep  2
   Click Element  css=#menu-item-32837 > a


Checking ‘Shopping’ link in the Fashion dropdown
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${FASHION}
   Element Should Be Visible  ${FASHION}
   Mouse Over  ${FASHION}
   Sleep  2
   Click Element  css=#menu-item-32839 > a

Checking ‘View all fashion’ in the Fashion link
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${FASHION}
   Element Should Be Visible  ${FASHION}
   Mouse Over  ${FASHION}
   Sleep  2
   Click Element  css=#menu-item-32844

Checking Beauty dropdown on the main page
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${BEAUTY}
   Element Should Be Visible  ${BEAUTY}
   Mouse Over  ${BEAUTY}
   Click Element  ${BEAUTY}

Checking ‘Makeup’ link in the Beauty dropdown
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${BEAUTY}
   Element Should Be Visible  ${BEAUTY}
   Mouse Over  ${BEAUTY}
   Sleep  2
   Click Element  css=#menu-item-34917 > a

Checking ‘Skin care’ link in the Beauty dropdown
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${BEAUTY}
   Element Should Be Visible  ${BEAUTY}
   Mouse Over  ${BEAUTY}
   Sleep  2
   Click Element  css=#menu-item-34918 > a

Checking ‘View all beauty’ link in the Beauty dropdown
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${BEAUTY}
   Element Should Be Visible  ${BEAUTY}
   Mouse Over  ${BEAUTY}
   Sleep  2
   Click Element  css=#menu-item-32930 > a

Checking Living dropdown on the main page
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${LIVING}
   Element Should Be Visible  ${LIVING}
   Mouse Over  ${LIVING}
   Click Element  ${LIVING}

Checking ‘Wellbeing ‘link in the Living dropdown
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${LIVING}
   Element Should Be Visible  ${LIVING}
   Mouse Over  ${LIVING}
   Sleep  2
   Click Element  css=#menu-item-32856

Checking ‘Relationships‘ link in the Living dropdown
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${LIVING}
   Element Should Be Visible  ${LIVING}
   Mouse Over  ${LIVING}
   Sleep  2
   Click Element  css=#menu-item-35666 > a

Checking ‘View all living‘ link in the Living dropdown
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${LIVING}
   Element Should Be Visible  ${LIVING}
   Mouse Over  ${LIVING}
   Sleep  2
   Click Element  css=#menu-item-32932 > a

Checking Careers dropdown on the main page
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${CAREERS}
   Element Should Be Visible  ${CAREERS}
   Mouse Over  ${CAREERS}
   Click Element  ${CAREERS}

Checking ‘My 9 to 5’ link in the Careers dropdown
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${CAREERS}
   Element Should Be Visible  ${CAREERS}
   Mouse Over  ${CAREERS}
   Sleep  2
   Click Element  css=#menu-item-32862 > a

Checking ‘Social media tips’ link in the Careers dropdown
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${CAREERS}
   Element Should Be Visible  ${CAREERS}
   Mouse Over  ${CAREERS}
   Sleep  2
   Click Element  css=#menu-item-34824 > a

Checking ‘View all careers’ link in the Careers dropdown
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${CAREERS}
   Element Should Be Visible  ${CAREERS}
   Mouse Over  ${CAREERS}
   Sleep  2
   Click Element  css=#menu-item-32934 > a

Checking ‘E-booking’ dropdown on the main page
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${EBOOK}
   Element Should Be Visible  ${EBOOK}
   Mouse Over  ${EBOOK}
   Click Element  ${EBOOK}

Checking ‘The Ultimate Guide to Blogging E-Book’ link in the E-booking dropdown
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${EBOOK}
   Element Should Be Visible  ${EBOOK}
   Mouse Over  ${EBOOK}
   Sleep  2
   Click Element  css=#menu-item-37660 > a

Checking the Purshase link on the ‘The Ultimate Guide to Blogging E-Book’ page
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${EBOOK}
   Element Should Be Visible  ${EBOOK}
   Mouse Over  ${EBOOK}
   Sleep  2
   Click Element  css=#menu-item-37660 > a
   Click Element  css=div > a.edd-add-to-cart.button.white.edd-submit.edd-has-js

Checking ‘About’ dropdown on the main page
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${ABOUT}
   Element Should Be Visible  ${ABOUT}
   Mouse Over  ${ABOUT}
   Click Element  ${ABOUT}

Checking ‘About Ella’ link in the About dropdown
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${ABOUT}
   Element Should Be Visible  ${ABOUT}
   Mouse Over  ${ABOUT}
   Sleep   2
   Click Element  css=#menu-item-32865 > a

Checking ‘Contact’ link in the About dropdown
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${ABOUT}
   Element Should Be Visible  ${ABOUT}
   Mouse Over  ${ABOUT}
   Sleep  2
   Click Element  css=#menu-item-32870 > a

Checking the ‘Contact’ block with not checking Captcha box
   [Tags]  neg
   Wait Until Element Is Visible  ${CLOSE}
   Click Element  ${CLOSE}
   Sleep  2
   Page Should Contain Element  ${ABOUT}
   Element Should Be Visible  ${ABOUT}
   Mouse Over  ${ABOUT}
   Sleep  2
   Click Element  css=#menu-item-32870 > a
   Input Text  your-name  Ola
   Input Text  your-email  ikuz309@gmail.com
   Input Text  css=#contact-box  Testing
   Click Element  css=#form-submit

*** Keywords ***
Provided precondition
    Setup system under test