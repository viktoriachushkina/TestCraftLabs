
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
    Sleep    3s
User e-mail is valid
#nome
     Input Text    //android.widget.EditText[@bounds='[162,730][918,840]']    ${user_nome}
     Sleep    2s
#email
     Input Text    //android.widget.EditText[@bounds='[162,881][918,991]']    ${valid_email}
     Sleep    2s
#Select Genre
    Click Element      //android.view.ViewGroup[@bounds='[162,1033][918,1143]']
    Sleep    2s
    Click Element      //android.view.ViewGroup[@bounds='[162,1458][918,1595]']
    Sleep    3s
#date
     Input Text    //android.widget.EditText[@bounds='[162,1184][349,1294]']    ${user_date}
     Sleep    2s
     Input Text    //android.widget.EditText[@bounds='[380,1184][568,1294]']    ${user_date}
     Sleep    2s
     Input Text    //android.widget.EditText[@bounds='[599,1184][918,1294]']    ${user_date}
     Sleep    2s
Confirmar senha and senha are equal
     Input Text    //android.widget.EditText[@bounds='[162,1335][918,1445]']    ${valid_password}
     Input Text    //android.widget.EditText[@bounds='[162,1486][918,1596]']    ${valid_password}
User clicks on card named “Criar conta”1
    Click Element      //android.view.ViewGroup[@bounds='[324,1807][756,1923]']
    Sleep    5s
When User clicks on card named “Voltar”
    Click Text     Voltar
    Sleep    4s
Then Page title should be “Conta Pessoal”
    Wait Until Page Contains   Conta Pessoal
User should see textbox “Nome”
    Wait Until Page Contains    Nome
User should see textbox “E-mail”
    Wait Until Page Contains    E-mail
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
    Sleep    3s
Close
   Close All Applications

*** Test Cases ***

User clicks on “Voltar”
    The application Expo Go has successfully opened
    User enters the link to the application
    User successfully entered the link and successfully opened the Citizeen App
    User chooses the resolution for the cards that suits him
    User is successfully logged into the application
    User clicks on card named “Criar conta”
    User e-mail is valid
    Confirmar senha and senha are equal
    User clicks on card named “Criar conta”1
    When User clicks on card named “Voltar”
    Then Page title should be “Conta Pessoal”
    User should see textbox “Nome”
    User should see textbox “E-mail”
    User should see textbox “Data de nascimento”
    User should see textbox “Senha”
    User should see textbox “Confirmar Senha”
    User should see card named “Criar conta”
    User should see text “Já tenho uma conta.”
    User should see card named “Fazer login”
    Close

