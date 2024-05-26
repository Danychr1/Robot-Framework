*** Settings ***
Resource        Resources/Commons.robot
Variables       Resources/Locators.py

#robot -d Results  Registration_test.robot

*** Variables ***


*** Test Cases ***

Registration form test
    Filling Registration form
    Finish Test Case

