
*** Settings ***
Library   AppiumLibrary
Resource   ../../Resoures/Resourses.robot

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
    Input Text    //android.widget.EditText[@bounds='[91,927][989,1075]']    ${LinkOnApp}
    Sleep    2s
    Click Element    //android.view.ViewGroup[@bounds='[91,1108][989,1213]']
User successfully entered the link and successfully opened the Citizeen App
    Sleep    27s
User chooses the resolution for the cards that suits him
    Click Element      //android.view.ViewGroup[@bounds='[99,1412][981,1539]']
    Sleep    3s
    Click Element      //android.view.ViewGroup[@bounds='[981,600][1036,655]']
    Sleep    4s
User enters his account information
    Wait Until Page Contains Element    //android.widget.EditText[@bounds='[162,1315][918,1425]']
    Sleep    3s
    Input Text    //android.widget.EditText[@bounds='[162,1315][918,1425]']    ${email}
    Sleep    2s
    Wait Until Page Contains Element    //android.widget.EditText[@bounds='[162,1491][918,1601]']
    Sleep    3s
    Input Text    //android.widget.EditText[@bounds='[162,1491][918,1601]']    ${password}
    Click Element      //android.view.ViewGroup[@bounds='[300,1769][782,1913]']
    Sleep    12s
    Click Element      ${1}
    Sleep    6s
    Click Element      ${2}
    Sleep    6s
    Click Element      ${3}



User is successfully logged into the application
    Sleep    ${time1}
User clicks on "Noticais"
    Click Text      NOTÍCIAS
User successfully logged on "Noticais" page
    Sleep    ${time2}
User clicks on 'Opções'
    Click Text       
    Sleep    2s
User clicks on 'Denunciar Publicação'
    Click Element      //android.widget.TextView[@bounds='[209,1167][635,1226]']
    Sleep    2s
User clicks on 'Informação falsa'
    Click Text     Informação falsa
    Sleep    2s
Close
   Close All Applications
*** Test Cases ***
User clicks on card named “Opcoes2”
    The application Expo Go has successfully opened
    User enters the link to the application
    User successfully entered the link and successfully opened the Citizeen App
    User chooses the resolution for the cards that suits him
    User enters his account information
    User is successfully logged into the application
    User clicks on "Noticais"
    User successfully logged on "Noticais" page
    User clicks on 'Opções'
    User clicks on 'Denunciar Publicação'
    User clicks on 'Informação falsa'
    Close