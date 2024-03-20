
*** Settings ***
Library   AppiumLibrary
Resource   ../../Resoures/Resourses.robot

*** Keywords ***
The application Expo Go has successfully opened
    Close All Applications
    Open Application    http://localhost:4723/wd/hub   platformName=Android   deviceName=emulator-5554  appPackage=host.exp.exponent  appActivity=host.exp.exponent.LauncherActivity  automatoionName=UIAutomator2
    Sleep    ${Sleep1}
    Click Element    //android.view.ViewGroup[@bounds='[47,789][1033,927]']
    Sleep    3s
User enters the link to the application
    Wait Until Page Contains Element    //android.widget.EditText[@bounds='[91,927][989,1075]']
    Sleep    3s
    Input Text    //android.widget.EditText[@bounds='[91,927][989,1075]']    ${LinkOnApp}
    Sleep    2s
    Click Element    //android.view.ViewGroup[@bounds='[91,1108][989,1213]']
User successfully entered the link and successfully opened the Citizeen App
    Sleep    ${Sleep2}
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
    Sleep    8s
    Click Element      ${3}
    Sleep    6s

User is successfully logged into the application
    Sleep    ${time1}
User clicks on the “Account” button
    Click Text      CONTA
    Sleep    ${time2}
User clicks on card named “Os meus locais”
    Click Element      //android.widget.TextView[@bounds='[354,1110][727,1242]']
    Sleep    4s
User clicks on card name “comentar”
    Click Text      COMENTAR
    Sleep    3s
the page title should be “Comentários”
    Wait Until Page Contains    Comentários
User should see text box
    Sleep    1s
User should see card named “cancelar”
    Wait Until Page Contains    Cancelar X
User should see text “escreva um comentário”
    Wait Until Page Contains    Escreva um comentário...
User should see publisher name and text
    Sleep    1s
User should see card “send”
    Sleep    1s
Close
   Close All Applications
*** Test Cases ***
User clicks on “Apagar Publicação”
    Given The application Expo Go has successfully opened
    User enters the link to the application
    User successfully entered the link and successfully opened the Citizeen App
    User chooses the resolution for the cards that suits him
    User enters his account information
    User is successfully logged into the application
    User clicks on the “Account” button
    User clicks on card named “Os meus locais”
    When User clicks on card name “comentar”
    Then the page title should be “Comentários”
    User should see text box
    User should see card named “cancelar”
    User should see text “escreva um comentário”
    User should see publisher name and text
    User should see card “send”
    Close