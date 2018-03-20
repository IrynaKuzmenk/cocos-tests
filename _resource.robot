*** Settings ***
Documentation    Checking elements on the main page
Library  Selenium2Library  30  15

*** Variables ***
${SUBSCRIBE}  css=#mc-embedded-subscribe-form > p:nth-child(2) > button
${CLOSE}  css=.ig_close
${FASHION}  css=#menu-item-32831
${BEAUTY}  css=#menu-item-32832
${LIVING}  css=#menu-item-32852
${CAREERS}  css=#menu-item-32830
${EBOOK}  css=#menu-item-37631
${ABOUT}  css=#menu-item-32834
${SEARCH}  css=#search-button
${POST}  css=#post-45475 > div.entry-summary > div.post-excerpt > p > a
${INSLINK}  css=#sbi_1738333090919931087_17496110 > div > a
${DISCLOSURE}  css=#site-info > div > a:nth-child(1)
${PRESS}  css=#site-info > div > a:nth-child(2)
${CHLOE}  css=#site-info > copyright > a
${SIDEBAR}  css=#third
${SIGNUP}  css=#text-46 > div > div
${SUBBUTTON}  css=#mc-embedded-subscribe-form > p:nth-child(3) > button
