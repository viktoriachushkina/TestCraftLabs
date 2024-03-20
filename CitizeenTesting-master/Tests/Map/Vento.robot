
*** Settings ***
Library   AppiumLibrary
Resource   ../../Resoures/Resourses.robot
*** Keywords ***
Given The application Expo Go has successfully opened
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
    Sleep    5s
    Click Element      ${2}
    Sleep    4s
    Click Element      ${3}


User is successfully logged into the application
    Sleep    10s

User clicks on pop up menu
    Click Element      //android.view.ViewGroup[@bounds='[87,1736][134,1784]']
    Sleep    3s
When User clicks on card named "Temp."
     Click Text      TEMP
    Sleep    4s
User clicks on card named "ver mais comfort termico"
    Click Element      //android.view.ViewGroup[@bounds='[28,1857][1053,1977]']
    Sleep    6s
When User clicks on card named "Vento"
    Click Element      //android.widget.TextView[@bounds='[499,1492][615,1545]']
    Sleep    5s
Then page title should be "conforto termico"
    Wait Until Page Contains    Conforto térmico
User should see "texttemp"
    Wait Until Page Contains   Este mapa mostra as zonas com as temperaturas mais baixas a azul e mais altas a vermelho. Escolha os espaços mais frescos nos dias de muito calor. Nos dias frios procure os espaços mais quentes.
User should see card named "Temperatura"
    Wait Until Page Contains    Temperatura
User should see card named "Chuva"
    Wait Until Page Contains    Chuva
User should see card named "Vento"
    Wait Until Page Contains    Vento
Close
   Close All Applications
*** Test Cases ***
User accesses the "Citizeen" app with Expo Go
    Given The application Expo Go has successfully opened
    User enters the link to the application
    User successfully entered the link and successfully opened the Citizeen App
    User chooses the resolution for the cards that suits him
    User enters his account information
    User is successfully logged into the application
    User clicks on pop up menu
    When User clicks on card named "Temp."
    User clicks on card named "ver mais comfort termico"
    When User clicks on card named "Vento"
    Then page title should be "conforto termico"
    User should see "texttemp"
    User should see card named "Temperatura"
    User should see card named "Chuva"
    User should see card named "Vento"
    Close