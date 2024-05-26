*** Settings ***
Resource        Resources/Commons.robot
Variables       Resources/Locators.py

#robot -d Results  Test_Alert.robot

*** Variables ***


*** Keywords ***
Ending the test
    close browser

*** Test Cases ***

Handling Mouse over menus
    launching browser  https://way2automation.com/    chrome
     mouse over     xpath://*[@id="menu-item-27580"]/a/span[2]
     click link     Lifetime Membership