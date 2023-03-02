*** Settings ***
Test Setup        Prepare Test
Test Teardown     Cleanup Test
Force Tags        smoke    daily
Library           OperatingSystem
Library           lib/VorpatestLibrary.py

*** Variables ***
${DATADIR}        %{VORPATEST_ROOT_DIR}${/}data${/}CDT2d

*** Test Cases ***
constraints_100_1.obj 
    [Tags]    daily_valgrind
    Run Test   

constraints_100_2.obj 
    [Tags]    daily_valgrind
    Run Test   

constraints_100_3.obj 
    [Tags]    daily_valgrind
    Run Test   

constraints_100_4.obj 
    [Tags]    daily_valgrind
    Run Test   

constraints_100_5.obj 
    [Tags]    daily_valgrind
    Run Test   

constraints_100_6.obj 
    [Tags]    daily_valgrind
    Run Test   

constraints_100_7.obj 
    [Tags]    daily_valgrind
    Run Test   

constraints_100_8.obj 
    [Tags]    daily_valgrind
    Run Test   

constraints_100_9.obj 
    [Tags]    daily_valgrind
    Run Test   

constraints_100_10.obj 
    [Tags]    daily_valgrind
    Run Test   

constraints_100_11.obj 
    [Tags]    daily_valgrind
    Run Test   

constraints_100K.obj 
    [Tags]    daily_valgrind
    Run Test   

constraints_100_1.obj (no Delaunay)
    [Tags]    daily_valgrind
    Run Test   delaunay=false

constraints_100_2.obj (no Delaunay)
    [Tags]    daily_valgrind
    Run Test   delaunay=false

constraints_100_3.obj (no Delaunay)
    [Tags]    daily_valgrind
    Run Test   delaunay=false

constraints_100_4.obj (no Delaunay)
    [Tags]    daily_valgrind
    Run Test   delaunay=false

constraints_100_5.obj (no Delaunay)
    [Tags]    daily_valgrind
    Run Test   delaunay=false

constraints_100_6.obj (no Delaunay)
    [Tags]    daily_valgrind
    Run Test   delaunay=false

constraints_100_7.obj (no Delaunay)
    [Tags]    daily_valgrind
    Run Test   delaunay=false

constraints_100_8.obj (no Delaunay)
    [Tags]    daily_valgrind
    Run Test   delaunay=false

constraints_100_9.obj (no Delaunay)
    [Tags]    daily_valgrind
    Run Test   delaunay=false

constraints_100_10.obj (no Delaunay)
    [Tags]    daily_valgrind
    Run Test   delaunay=false

constraints_100_11.obj (no Delaunay)
    [Tags]    daily_valgrind
    Run Test   delaunay=false

constraints_100K.obj (no Delaunay)
    [Tags]    daily_valgrind
    Run Test   delaunay=false

*** Keywords ***
Run Test
    [Arguments]    ${input_name}=${TEST NAME}    @{options}
    [Documentation]    Runs a vorpaline constrained Delaunay 2d test
    ...    The name of the input file is taken from the test name.
    ...    The name of the input file is taken from the test name.
    run command    test_CDT_2d    @{options}    ${DATADIR}${/}${input_name}
