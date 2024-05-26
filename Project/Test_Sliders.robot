*** Settings ***
Resource        Resources/Commons.robot
Variables       Resources/Locators.py

#robot -d Results  Test_Alert.robot

*** Variables ***


*** Keywords ***
Ending the test
    close browser

*** Test Cases ***

Handling Sliders
    launching browser  https://jqueryui.com/resources/demos/slider/default.html   chrome
    drag and drop by offset     xpath://*[@id="slider"]/span        450       0