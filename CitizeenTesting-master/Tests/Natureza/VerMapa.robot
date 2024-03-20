
*** Settings ***
Library   AppiumLibrary
Resource   ../../Resoures/Resourses.robot
*** Variables ***
${scrollable_element}   //android.view.ViewGroup[@bounds='[0,264][1080,1977]']
${start_x}              500
${start_y}              1500
${end_x}                500
${end_y}                1000
${duration}             1000
*** Keywords ***
The application Expo Go has successfully opened
    Close All Applications
    Open Application    http://localhost:4723/wd/hub   platformName=Android   deviceName=emulator-5554  appPackage=host.exp.exponent  appActivity=host.exp.exponent.LauncherActivity  automatoionName=UIAutomator2
    Sleep    24s
User enters the link to the application
    Click Element    //android.view.ViewGroup[@bounds='[47,789][1033,927]']
    Sleep    3s
    Wait Until Page Contains Element    //android.widget.EditText[@bounds='[91,927][989,1075]']
    Sleep    3s
    Input Text    //android.widget.EditText[@bounds='[91,927][989,1075]']      ${LinkOnApp}
    Sleep    2s
    Click Element    //android.view.ViewGroup[@bounds='[91,1108][989,1213]']
User successfully entered the link and successfully opened the Citizeen App
    Sleep    32s
User chooses the resolution for the cards that suits him
    Click Element      //android.view.ViewGroup[@bounds='[99,1412][981,1539]']
    Sleep    3s
    Click Element      //android.view.ViewGroup[@bounds='[981,600][1036,655]']
    Sleep    4s
User enters his account information
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
    Sleep    6s
    Click Element      ${2}
    Sleep    6s
    Click Element      ${3}




User is successfully logged into the application
    Sleep    ${time1}
User clicks on the “Nature” button
    Click Text      NATUREZA
    Sleep    ${time2}
User clicks on card named “Espaços Verdes e Azuis”
    Click Element      //android.widget.TextView[@bounds='[249,705][832,837]']
    Sleep    6s
User clicks on card named “Mata Nacional do Choupal”
    Click Element      //android.widget.TextView[@bounds='[218,705][864,837]']
    Sleep    6s
user checks vermapa
    Sleep    1s
Scroll down the page
    # Scroll down
    Swipe    ${start_x}    ${start_y}    ${end_x}    ${end_y}    duration=${duration}
    Swipe    ${start_x}    ${start_y}    ${end_x}    ${end_y}    duration=${duration}
    Swipe    ${start_x}    ${start_y}    ${end_x}    ${end_y}    duration=${duration}
    Swipe    ${start_x}    ${start_y}    ${end_x}    ${end_y}    duration=${duration}
    # Scroll up
    Swipe    ${end_x}    ${end_y}    ${start_x}    ${start_y}    duration=${duration}

    # Close the app
    Close Application

*** Test Cases ***
User clicks on card named “Espaços Verdes e Azuis”
    The application Expo Go has successfully opened
    User enters the link to the application
    User successfully entered the link and successfully opened the Citizeen App
    User chooses the resolution for the cards that suits him
    User enters his account information
    User is successfully logged into the application
    User clicks on the “Nature” button
    User clicks on card named “Espaços Verdes e Azuis”
    User clicks on card named “Mata Nacional do Choupal”
    user checks vermapa
    Scroll down the page
