*** Settings ***
#robot -d Results     Test_JavaScript.robot
Resource        Resources/Commons.robot
Variables       Resources/Locators.py
#Test Teardown      Ending the test

*** Variables ***


*** Keywords ***
Ending the test
    close browser

*** Test Cases ***

Handling Dropdown list
       launching browser  https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_submit_get     chrome
    select frame    xpath://*[@id="iframeResult"]
    #click button    xpath:/html/body/button
    #execute javascript    myFunction()

#how to do it from scratch without knowing javascript
    ${element}=    get webelement    xpath:/html/body/button
    execute javascript    arguments[0].style.border='3px solid blue'    ARGUMENTS    ${element}
    execute javascript    arguments[0].click();    ARGUMENTS    ${element}
    #capture element screenshot    ${element}    selenium-element-screenshot-{index}.png
    capture element screenshot    ${element}    EMBED
    unselect frame
#how to capture a screenshot
    capture page screenshot    fullpage.png
    capture page screenshot    EMBED

