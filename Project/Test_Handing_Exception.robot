*** Settings ***
Documentation     Learning Try and Except - Exception Handing in Robot Framework
Library           SeleniumLibrary


#robot -d Results  Test_Handing_Exception.robot

*** Test Cases ***

Try / Except - Basic Syntax
    TRY
        log to console    Hello Kalyah
        #fail
        log to console    I am doing something important
    EXCEPT
        log to console    Inside Except block
    END

TRY / Except - with Message to be reported
    TRY
        log to console    Hello Daniela
        fail        ERROR OCCURRED
        log to console    I am doing something important
    EXCEPT
        log to console    Inside Except block
    END



TRY / Except / ELSE - with Message to be reported
    TRY
        log to console    Hello Daniela
        fail        ERROR OCCURRED
        log to console    I am doing something important
    EXCEPT
        log to console    Inside Except block
    ELSE
        log to console    No errors in the test case
    END


TRY / Except / ELSE / FINALLY - with Message to be reported
    TRY
        log to console    Hello Daniela
        fail        ERROR OCCURRED
        log to console    I am doing something important
    EXCEPT
        log to console    Inside Except block
    ELSE
        log to console    No errors in the test case
    FINALLY
        log to console    finally - This block is always executed
    END

Selenium Integration Test
     TRY
        open browser    http://google.com       edge
        input text      xpath://*[@id="APjFqb"]      What is the best vehicle at the moment?
        close browser
     EXCEPT
        close browser
     END
