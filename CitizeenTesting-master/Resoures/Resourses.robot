
*** Settings ***
Library   AppiumLibrary

*** Variables ***

${LinkOnApp}           exp://50os6h8.anonymous.19000.exp.direct
${Sleep1}    25s
${Sleep2}    40s
#user data
${email}            nikolskayvika@gmail.com
${password}          W1234567890
${nome}     viktoria
${Género}    Feminino
${element}       //android.view.ViewGroup[@bounds='[55,1040][1025,1928]']

#User chooses the resolution for the cards that suits him
${1}     //android.widget.Button[@bounds='[72,1103][1008,1257]']
${2}     //android.widget.Button[@bounds='[72,1103][1008,1257]']
${3}     //android.widget.Button[@bounds='[72,1182][1008,1336]']


#user data for registr
${user_nome}     user
${user_date}    01
${valid_email}     viktoriia.chushkina@nure.ua
${valid_password}    A1234567890
# время первое загрузка после разрешения второе после открытия страницы

${time1}   7s
${time2}    20s

