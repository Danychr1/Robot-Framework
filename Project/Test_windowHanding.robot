*** Settings ***
Resource        Resources/Commons.robot
Variables       Resources/Locators.py

#robot -d Results  Registration_test.robot

*** Variables ***


*** Test Cases ***

Registration form test
    Filling Registration form
    click link    link:ENTER TO THE TESTING WEBSITE
    click element    xpath://*[@id="wrapper"]/div/div/div[5]/ul/li/a/figure
    @{windowHandles}=    get window handles
    log to console    ${windowHandles}
    switch window    ${windowHandles}[1]
    input text    name:name    Kalyah
    input text   xpath://*[@id="register_form"]/fieldset[1]/p[2]/input   Arielle
    click element    xpath://*[@id="register_form"]/fieldset[2]/div/label[1]/input
    select checkbox    name:hobby
    select from list by label   xpath://*[@id="register_form"]/fieldset[4]/select   India
    select from list by label   xpath://*[@id="register_form"]/fieldset[5]/div[1]/select  1
    select from list by label   xpath://*[@id="register_form"]/fieldset[5]/div[2]/select  1
    select from list by label   xpath://*[@id="register_form"]/fieldset[5]/div[3]/select  2014
    input text    name:phone    6703268976
    input text    name:username     kalyahA562!
    input text    name:email    kalyahA@way2automation.com
    #choose file    xpath://*[@id="register_form"]/fieldset[9]/input         My_Resume_2023.pdf
    #element text should be    xpath://*[@id="register_form"]/fieldset[10]/textarea     I like to practice sports
    input text    name:password     Quihgfdatg71!
    input text    name:password      Quihgfdatg71!
    click element   xpath://*[@id="register_form"]/fieldset[13]/input

    close window
    switch window    ${windowHandles}[0]
    close window

    Finish Test Case






