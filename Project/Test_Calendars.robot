*** Settings ***
Resource        Resources/Commons.robot
Variables       Resources/Locators.py
Library         Built_In/CustomLib.py

#Test Teardown      Ending the test

#robot -d Results     Test_Calendars.robot

*** Variables ***


*** Keywords ***
Ending th test
    close browser

*** Test Cases ***

Handling Calendars
        launching browser       https://www.way2automation.com/way2auto_jquery/datepicker.php#load_bo       edge
        select frame            xpath://*[@id="example-1-tab-1"]/div/iframe
        click element           id:datepicker
#for selecting the current date you have to use the CSS starting wtih "." example below
        #click element           css:.ui-state-default.ui-state-highlight
#how to integrate custom python library
        print console
        print title
        select month            xpath://[@id="ui-datepicker-div"]/div/div/span[1]    January    21

#selecting any date of the calendar
         #click element          xpath://*[@id="ui-datepicker-div"]/div/a[2]
         #click element          css:.ui-state-default