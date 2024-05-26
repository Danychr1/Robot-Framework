*** Settings ***
Resource        Resources/Commons.robot
Variables       Resources/Locators.py

#robot -d Results  Test_Resizable.robot

*** Variables ***


*** Keywords ***
Ending the test
    close browser

*** Test Cases ***

Handling Resizable
    launching browser  https://jqueryui.com/resources/demos/resizable/default.html    chrome
    drag and drop by offset    xpath://*[@id="resizable"]/div[3]    400    400