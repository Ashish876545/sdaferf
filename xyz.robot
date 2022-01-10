*** Settings ***
Documentation      | =A= | =B= | = C = | \n | 1 | Hello | world! | \n  | 2 | Hii. | Ashish | \n | 3 | string | doc. |
Library            OperatingSystem
Library            String
Variables          xyz.py
Library            Collections

*** Variables ***
${PATH}  ${CURDIR}/rr.txt
${str}  apple mango apple  1   5  9  s d  f
${str2}


*** Test Cases ***
Test_String_Word_repetition
     [documentation]  this test perform basic functionality of checking repetitioon of words
     [tags]  sanity
     log to console  ${str}
     log to console  ${str2}
     @{words} =	Split String	 ${str}
     @{words2} =	Split String	 ${str2}
     log to console   ${words}
     log to console   ${words2}
     ${cnt}=            Get length                 ${words}
     log to console   ${cnt}
#     FOR   ${i}    IN   ${words}
#      FOR  ${i}   IN  ${words2}
#          Pass Execution    ${i}   IN  ${words2}
#       ELSE
#         Append To List	${words2}	${i}
#       END
#     END
#     log to console   ${words2}
#     ${cnt2}=            Get length                 ${words}
#     FOR   ${k}    IN   ${cnt2}
#           Log to console ${words}
#           log to console ${cnt2}
#     END

#Test_String_Word_repetitions
#     [documentation]  this test perform basic functionality of checking repetitioon of words
#     [tags]  occurence
#     log to console   ${str}
#     ${wordcount}=   Call Method   ${call}   word_count   ${str}
#     log to console  ${wordcount}

Test_Collection_library
    [documentation]  this test perform basic functionality of checking keywords of collection library
    [tags]  collection
    #Create a list variable
    @{x}=    Create List    b   g   f
    @{animals}=    Create List    dog    cat    bear
    log to console   ${animals}    # ['dog', 'cat', 'bear']
    log to console    ${animals}[0]    # dog
    log to console    ${animals}[-1]    # bear

    #Create a dictionary variable
    &{dictionary}=    Create Dictionary    key1=value1    key2=value2
    log to console    ${dictionary}    # {'key1': 'value1', 'key2': 'value2'}
    log to console    ${dictionary}[key1]    # value1
    log to console    ${dictionary.key2}    # value2

    Append To List	${animals}	x	y	z
    log to console  ${animals}

    log to console  ${x}
    ${y} =	Combine Lists	${animals}	${x}
    log to console  ${y}

    Convert To List	 &{dictionary}=
    log to console  ${dictionary}

    ${xa} =	Count Values In List	${y}	b
    log to console  ${xa}

    ${items} =	Get Dictionary Items	${dictionary}
    log to console  ${dictionary}
    ${keys} =	Get Dictionary Keys	${dictionary}
    log to console  ${keys}
    ${values} =	Get Dictionary Values	${dictionary}
    log to console  ${values}
    ${value} =	Get From Dictionary	${dictionary}	key2
    log to console  ${value}
    ${abc} =  Set To Dictionary	${dictionary}	key	value
    log to console  ${abc}

    @{L} =  Create List    b   g   f  2  1  a  c  b
    log to console  ${L}
    Sort List	   ${L}
    log to console   ${L}
    Insert Into List	${L}	0	xxx
    log to console   ${L}
    ${xrt} =	Get Slice From List	${L}	2	4



#  log to console   ${str}
#  @{words} =	Split String	${str}
#  log to console  ${words}
#    FOR   ${i}   IN   @{words}
#    FOR    ${i}    IN    @{words}
#        Continue For Loop If    $i == 'mango'
#        Log    ${i}
#    END
#
#    log to console   ${str}
#     ${wordcount}=   Call Method   ${call}   word_count   ${str}
#     log to console  ${wordcount}







