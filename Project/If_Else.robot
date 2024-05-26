*** Variables ***
#robot -d Results     If_Else.robot
${NAME}=       Valentina
${NUM1}=       983
${NUM2}=       952

*** Test Cases ***
#If Block
#    IF    "${NAME}" == "Daniel"
#            log to console    Name is Dasniel

#    ELSE
#            log to console    Name is not Daniel

#    END

#Else block
#    IF    "${NAME}" == "Valentina"
#            log to console    Name is Valentina

#    ELSE IF     "${NAME}" == "Kalyah"
#            log to console    Name is Kalyah

#    ELSE
#            log to console    Name does not matches

#    END


Number Comparison
    IF    ${NUM1} ==  ${NUM2}
        log to console    Number Matches
    ELSE IF    ${NUM1} <  ${NUM2}
        log to console    ${NUM1} is less than ${NUM2}
    END

#OR AND Conditions

#    IF    ${NUM1} <  ${NUM2} or  ${NUM2}   < 1500
#        log to console     ${NUM1} is less than ${NUM2} or less than 1500
#    END