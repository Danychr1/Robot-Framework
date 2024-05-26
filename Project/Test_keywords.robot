*** Settings ***
Resource        Resources/Commons.robot

#robot -d Results Test_keywords.robot


*** Keywords ***
launching browser
    [Arguments]      ${url}      ${browserName}
    open browser       ${url}    ${browserName}
    set selenium implicit wait    10 seconds
    log title

*** Variables ***


*** Test Cases ***


Basic Test Case
    launching browser       http://gmail.com       firefox
    input text    id:identifierId       trainer@way2automation.com
    click element    //*[@id="identifierNext"]/div/button/span

Second Test case

    launching browser       http://google.com       chrome
    # input text    id:identifierId       trainer@way2automation.com
    # click element    //*[@id="identifierNext"]/div/button/span