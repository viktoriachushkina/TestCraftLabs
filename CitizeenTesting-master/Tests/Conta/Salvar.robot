
*** Settings ***
Library   AppiumLibrary
Resource   ../../Resoures/Resourses.robot

*** Keywords ***
The application Expo Go has successfully opened
    Close All Applications
    Open Application    http://localhost:4723/wd/hub   platformName=Android   deviceName=emulator-5554  appPackage=host.exp.exponent  appActivity=host.exp.exponent.LauncherActivity  automatoionName=UIAutomator2
    Sleep    ${Sleep1}
User enters the link to the application
    Click Element    //android.view.ViewGroup[@bounds='[47,789][1033,927]']
    Sleep    3s
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
    Sleep    5s
    Click Element      ${2}
    Sleep    4s
    Click Element      ${3}
    Sleep    6s


User is successfully logged into the application
    Sleep    ${time1}
User clicks on "Conta"
    Click Text      CONTA
    Sleep    ${time2}
User clicks on “alterar dados”
    Click Element      //android.widget.TextView[@bounds='[675,470][945,531]']
    Sleep    4s
When User clicks on “Salvar”
    Click Element      //android.view.ViewGroup[@bounds='[300,1451][782,1567]']
Then User should see text “Seus dados foram salvados com sucesso!”
#sucesso
    Sleep    1s
User should see text “Muito Obrigado”
    Sleep    1s
User should see card named “Voltar”
    Sleep    1s
Close
   Close All Applications
*** Test Cases ***
User clicks on “Salvar”:
    The application Expo Go has successfully opened
    User enters the link to the application
    User successfully entered the link and successfully opened the Citizeen App
    User chooses the resolution for the cards that suits him
    User enters his account information
    User is successfully logged into the application
    User clicks on "Conta"
    User clicks on “alterar dados”
    When User clicks on “Salvar”
    Then User should see text “Seus dados foram salvados com sucesso!”
    User should see text “Muito Obrigado”
    User should see card named “Voltar”
    Close