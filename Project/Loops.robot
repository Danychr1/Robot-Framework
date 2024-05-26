*** Variables ***
# robot -d Results     Loops.robot
@{city}=        Paris       Madrid       London
*** Test Cases ***
For loop
        FOR    ${i}    IN RANGE    30
            log to console    ${i}
        END

For loop in range
        FOR    ${i}     IN RANGE    1    20    2
            log to console    ${i}
        END

For loop in range and exit
        FOR    ${i}     IN RANGE    1    20
            log to console    ${i}
            exit for loop if    ${i} == 10
        END

For loop in list of elememts
        FOR     ${i}    IN   @{city}
            log to console    ${i}
            exit for loop if    '${i}'  ==  'Paris'
        END