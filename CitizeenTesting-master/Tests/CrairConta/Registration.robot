
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
User is successfully logged into the application
    Sleep    4s
User clicks on card named “Criar conta”
    Click Text     Criar Conta
Page title should be “Conta Pessoal”
    Wait Until Page Contains   Conta Pessoal
User should see textbox “Nome”
    Wait Until Page Contains    Nome
User should see textbox “E-mail”
    Wait Until Page Contains    E-mail
User should see textbox “Género”
    Wait Until Page Contains   Select Genre
User should see textbox “Data de nascimento”
    Wait Until Page Contains     Dia
    Wait Until Page Contains     Mês
    Wait Until Page Contains     Ano
User should see textbox “Senha”
    Wait Until Page Contains    Senha
User should see textbox “Confirmar Senha”
    Wait Until Page Contains    Confirmar Senha
User should see card named “Criar conta”
    Wait Until Page Contains    Criar conta
User should see text “Já tenho uma conta.”
    Wait Until Page Contains    Já tenho conta. Fazer Login
User should see card named “Fazer login”
    Sleep     5s
Close
   Close All Applications

*** Test Cases ***

User clicks on “Criar conta”
    Given The application Expo Go has successfully opened
    User enters the link to the application
    User successfully entered the link and successfully opened the Citizeen App
    User chooses the resolution for the cards that suits him
    User is successfully logged into the application
    When User clicks on card named “Criar conta”
    Then Page title should be “Conta Pessoal”
    User should see textbox “Nome”
    User should see textbox “E-mail”
    User should see textbox “Género”
    User should see textbox “Data de nascimento”
    User should see textbox “Senha”
    User should see textbox “Confirmar Senha”
    User should see card named “Criar conta”
    User should see text “Já tenho uma conta.”
    User should see card named “Fazer login”
    Close

