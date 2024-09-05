*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${rmpurl}  https://testpmt.azurewebsites.net/
${browser}  chrome
${username}     centeruser@gmail.com
${password}     12345

*** Test Cases ***
LoginTest
#    loginToRMPApplication
#    close browser
    open browser    ${rmpurl}   ${browser}
    maximize browser window
    click element  xpath://*[@id="LoginDiv"]/div/div/a
    input text  id:Email    ${username}
    input text  id:Password     ${password}
    click element   xpath:/html/body/div/div[2]/div/form/div[3]/button
    sleep   3

*** Keywords ***
#loginToRMPApplication
#    open browser    ${rmpurl}     ${browser}
#    maximize browser window
#    click element  xpath://*[@id="LoginDiv"]/div/div/a
#    input text  id:Email    ${username}
#    input text  id:Password     ${password}
#    click element   xpath:/html/body/div/div[2]/div/form/div[3]/button
#    sleep   3