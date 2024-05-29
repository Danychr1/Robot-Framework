*** Settings ***
Resource        Resources/Commons.robot
Variables       Resources/Locators.py
#Test Teardown      Ending the test

#robot -d Results     Test_WebTables.robot

*** Variables ***


*** Keywords ***
Ending th test
    close browser

*** Test Cases ***

Handling Webtables
        launching browser       https://imsports.rediff.com/score/in_asa_1081672.html       edge

        @{rows}=        get webelements      //*[@id="bat-board"]//tr
        ${rowCount}=    get length          ${rows}
        @{cols}=        get webelements      //*[@id="bat-board"]//tr[1]/td
        ${colCount}=    get length           ${cols}


        log to console      Total rows are ${rowCount}  and Total cols are ${colCount}

#how the print the table data

        FOR    ${i}     IN    @{rows}
            ${text}=    get text    ${i}
            log to console    ${text}
        END
#How to validate the data
        table should contain    xpath://*[@id="bat-board"]      Suranga Lakmal
        table row should contain    //*[@id="bat-board"]//tr       8        b Bumrah
        table column should contain     //*[@id="bat-board"]//tr[1]/td      3       8







