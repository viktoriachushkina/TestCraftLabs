
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
    Input Text    //android.widget.EditText[@bounds='[91,927][989,1075]']   ${LinkOnApp}
    Sleep    2s
    Click Element    //android.view.ViewGroup[@bounds='[91,1108][989,1213]']
User successfully entered the link and successfully opened the Citizeen App
    Sleep    ${Sleep2}
User chooses the resolution for the cards that suits him
    Click Element      //android.view.ViewGroup[@bounds='[99,1412][981,1539]']
    Sleep    3s
    Click Element      //android.view.ViewGroup[@bounds='[981,600][1036,655]']
    Sleep    5s
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
    Sleep    6s



User is successfully logged into the application
    Sleep    ${time1}
User clicks on "Conta"
    Click Text      CONTA
    Sleep    ${time2}
When User clicks on “alterar dados”
    Click Element      //android.widget.TextView[@bounds='[675,470][945,531]']
    Sleep    4s
Then the page title should be “Conta pessoal | alterar dados”
    Wait Until Page Contains    Editar
User should see text box named “Nome”
    Wait Until Page Contains    ${nome}
User should see text box named “E-mail”
    Wait Until Page Contains    ${email}
User should see text box named “Género”
    Wait Until Page Contains    ${Género}
User should see text box named “Data de nascimento”
    Wait Until Page Contains Element    //android.widget.EditText[@bounds='[182,1294][360,1404]']
    Wait Until Page Contains Element    //android.widget.EditText[@bounds='[391,1294][569,1404]']
    Wait Until Page Contains Element    //android.widget.EditText[@bounds='[599,1294][899,1404]']
User should see text box named “Senha”
    Sleep    1s
User should see text box named “Confirmar senha”
    Sleep    1s
User should see card named “Salvar”
    Wait Until Page Contains    Salvar
User should see card named “Voltar”
    Wait Until Page Contains    Voltar
User should see card named “Quero apagar a minha conta”
    Wait Until Page Contains    Quero apagar a minha conta
    Sleep    3s
Close
   Close All Applications
*** Test Cases ***
User clicks on “alterar dados”:
    The application Expo Go has successfully opened
    User enters the link to the application
    User successfully entered the link and successfully opened the Citizeen App
    User chooses the resolution for the cards that suits him
    User enters his account information
    User is successfully logged into the application
    User clicks on "Conta"
    When User clicks on “alterar dados”
    Then the page title should be “Conta pessoal | alterar dados”
    User should see text box named “Nome”
    User should see text box named “E-mail”
    User should see text box named “Género”
    User should see text box named “Data de nascimento”
    User should see text box named “Senha”
    User should see text box named “Confirmar senha”
    User should see card named “Salvar”
    User should see card named “Voltar”
    User should see card named “Quero apagar a minha conta”
    Close
