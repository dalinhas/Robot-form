*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${input_name}           //input[@id="name"]
${input_phone}          //input[@id="phone"]
${input_email}          //input[@id="email"]
${input_password}       //input[@id="password"]
${textarea_address}     //textarea[@id="address"]
${button_submit}        //button[@name="submit"]


*** Test Cases ***
cenario 1: Preencher formulário
    abrir navegador
    preencher campos
    clicar em submit
    fechar navegador


*** Keywords ***
abrir navegador
    Open Browser    https://itera-qa.azurewebsites.net/home/automation    chrome

preencher campos
    Input Text    ${input_name}    Rosália
    Sleep    2s
    Input Text    ${input_phone}    992742588
    Sleep    2s
    Input Text    ${input_email}    rosaliagoncalves915@gmail.com
    Sleep    2s
    Input Text    ${input_password}    123456
    Sleep    2s
    Input Text    ${textarea_address}    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

clicar em submit
    Click Element    ${button_submit}

 fechar navegador
    Close Browser
