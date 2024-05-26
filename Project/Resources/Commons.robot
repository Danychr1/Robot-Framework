*** Settings ***

Library    SeleniumLibrary
Variables       Resources/Locators.py

*** Keywords ***
launching browser
    [Arguments]      ${url}      ${browserName}
    open browser       ${url}    ${browserName}
    set selenium implicit wait    10 seconds
    log title
Filling Registration form
    launching browser           https://www.way2automation.com/way2auto_jquery/index.php     chrome
    input text    ${name}        Kalyah Arielle
    input text    ${phone}       8903217650

#Creating a random emails
     ${random}=    evaluate    random.randint(5000,999999)
    ${emailnew}=    catenate    ${random}    __2_ @way2automation.com
    ${email_id}=    evaluate    '${emailnew}'.replace(' ','_')

    input text    ${email}    ${email_id}

Registration form test
    Filling Registration form

    select from list by label    ${country}      United States
    input text    ${city}        New York
    input text    ${username}    Carlson9822
    input text    ${password}    advbndsb8712!
    click button  ${submitBtn}

Finish Test Case
    log     Ending the test case
    close browser

