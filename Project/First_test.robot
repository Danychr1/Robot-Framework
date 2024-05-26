*** Settings ***
#robot First_test.robot


Library     SeleniumLibrary

*** Keywords ***



*** Variables ***

*** Test Cases ***
#Basic Test Case
    #log      Basic Test case
    #open browser         https://google.com       chrome
    #click element       //*[@id="gb"]/div/div[2]/a
    #set selenium implicit wait          10 seconds
    #log title
    #input text          id:identifierId           christel093@gmail.com
    #click element      //*[@id="identifierNext"]/div/button/span
    #sleep               3
    #input text         //*[@id="password"]/div[1]/div/div[1]/input       sardinas98321
    #click element      //*[@id="passwordNext"]/div/button/div[3]
    #${text}=        get text     //*[@id="view_container"]/div/div/div[2]/div/div[1]/div/form/span/section/div/div/div[1]/div[2]/div[2]/span
    #close browser
Basic Test Case2
    log     Basic Test case
    open browser    https://gmail.com     firefox
    set selenium implicit wait    10 seconds
    log title
    input text    id:identifierId       trainer@way2automation.com
    click element    //*[@id="identifierNext"]/div/button/span
   # sleep     3
   wait until element is visible    //*[@id="password"]/div[1]/div/div[1]/input    5 seconds
    input text      //*[@id="password"]/div[1]/div/div[1]/input     asldkfsdfs
    wait until keyword succeeds    5x    2s    click element    //*[@id="passwordNext"]/div/button/span
    wait until element is visible    //*[@id="passwordNext"]/div/button/span


    ${text}=    get text    //*[@id="view_container"]/div/div/div[2]/div/div[1]/div/form/span/section/div/div/div[1]/div[2]/div[2]/span
Second Test Case
    log      This is my second test case