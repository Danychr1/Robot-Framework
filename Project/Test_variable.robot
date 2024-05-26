*** Settings ***
Library         SeleniumLibrary

#robot -d Results Test_variable.robot

*** Variables ***

# Scalar variable - simple variable - global scope:
${value}        250
${name}         Daniel
${floatvalue}   10.91
${browser}      chrome
${url}=         http://google.com
${env}=         uat
&{url_dict}=    qa=http://way2automation.com     uat=http://google.com


@{city}=    Madrid      Paris       Munich
*** Test Cases ***
Chrome Test Case
    log    ${value}
    log    ${name}
    log    ${floatvalue}
    log    ${browser}
    log    ${url}
    log    ${url_dict.uat}

