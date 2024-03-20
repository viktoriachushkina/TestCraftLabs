*** Settings ***
Library           AppiumLibrary
Resource   ../../Resoures/Resourses.robot

*** Test Cases ***
Example Test
    # Open the app and navigate to the screen where scrolling is needed
    Close All Applications
    Open Application    http://localhost:4723/wd/hub   platformName=Android   deviceName=emulator-5554  appPackage=host.exp.exponent  appActivity=host.exp.exponent.LauncherActivity  automatoionName=UIAutomator2
    Sleep    24s

    Click Element    //android.view.ViewGroup[@bounds='[47,789][1033,927]']
    Sleep    3s
    Wait Until Page Contains Element    //android.widget.EditText[@bounds='[91,927][989,1075]']
    Sleep    3s
    Input Text    //android.widget.EditText[@bounds='[91,927][989,1075]']      ${LinkOnApp}
    Sleep    2s
    Click Element    //android.view.ViewGroup[@bounds='[91,1108][989,1213]']
    Sleep    32s
    Click Element      //android.view.ViewGroup[@bounds='[99,1412][981,1539]']
    Sleep    3s
    Click Element      //android.view.ViewGroup[@bounds='[981,600][1036,655]']
    Sleep    4s
    Wait Until Page Contains Element    //android.widget.EditText[@bounds='[162,1425][918,1535]']
    Sleep    5s
    Input Text    //android.widget.EditText[@bounds='[162,1425][918,1535]']    ${email}
    Sleep    2s
    Wait Until Page Contains Element    //android.widget.EditText[@bounds='[162,1618][918,1728]']
    Sleep    3s
    Input Text    //android.widget.EditText[@bounds='[162,1618][918,1728]']    ${password}
    Click Element      //android.view.ViewGroup[@bounds='[324,1906][756,1977]']
    Sleep    12s
    Click Element      ${1}
    Sleep    5s
    Click Element      ${2}
    Sleep    4s
    Click Element      ${3}


    Sleep    ${time1}
    Click Text      NATUREZA
    Sleep    ${time2}

    Click Element    ${scrollable_element}

    # Scroll down
    Swipe    ${start_x}    ${start_y}    ${end_x}    ${end_y}    duration=${duration}

    # Scroll up
    Swipe    ${end_x}    ${end_y}    ${start_x}    ${start_y}    duration=${duration}

    # Close the app
    Close Application

*** Variables ***
${scrollable_element}   //android.view.ViewGroup[@bounds='[0,264][1080,1977]']
${start_x}              500
${start_y}              1500
${end_x}                500
${end_y}                1000
${duration}             1000