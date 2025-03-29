*** Settings ***
Resource   ./variables.robot

*** Keywords ***
Password-based Authentication
    Sleep                      ${TIME}
    Click Link                 ${BUTTON-PBA}
    Sleep                      ${TIME}

CRIAR-CONTA
    Input Text                 ${INPUT-LE}   ${EMAIL-NEW}
    Input Password             ${INPUT-LP}   ${PASSWORD-NEW}
    Click Button               ${BUTTON-SUBMIT}

CRIAR-CONTA-PASSWORD-ERRADA
    Input Text                 ${INPUT-LE}   ${EMAIL-V}
    Input Password             ${INPUT-LP}   ${PASSWORD-E}
    Click Button               ${BUTTON-SUBMIT}

CRIAR-CONTA-EMAIL-ERRADA
    Input Text                 ${INPUT-LE}   ${EMAIL-E}
    Input Password             ${INPUT-LP}   ${PASSWORD-v}
    Click Button               ${BUTTON-SUBMIT}

Validetion
    Sleep                      ${TIME}
    Element Should Be Visible  ${MSG-LOGIN-SUCCESSFUL-01}
    Element Should Be Visible  ${MSG-SIGNU}
    Element Should Be Visible  ${BACK-LOGIN}

Abrir navegador
    Open Browser               ${URL}  ${BROWSER}

Fechar navegador
    Close Browser

Click-Link 
    Click Link                  ${LINK-CREATE}
    Sleep                       ${TIME}

Click-Button
    Click Button                 ${BUTTON-SUBMIT}

Validar-Campos
    Sleep                        ${Time}
    Element Should Be Visible    ${INPUT-LE}
    Element Should Be Visible    ${INPUT-LP}
    Sleep                        ${Time}


Login-Passed
    Input Text                   ${INPUT-LE}   ${EMAIL-V}
    Input Password               ${INPUT-LP}   ${PASSWORD-v}
    Sleep                        ${TIME}
    Click Button                 ${BUTTON-SUBMIT}
    Sleep                        ${TIME}


Validar-Login
    Sleep                        ${TIME}
    Element Should Be Visible    ${MSG-LOGIN-SUCCESSFUL-01}
    Element Should Be Visible    ${MSG-LOGIN-SUCCESSFUL-02}

Login-failed
    Input Text                   ${INPUT-LE}   ${EMAIL-I}
    Input Password               ${INPUT-LP}   ${PASSWORD-E}
    Sleep                        ${TIME}
    Click Button                 ${BUTTON-SUBMIT}

Validar-Login-failed
    Sleep                        ${TIME}
    Element Should Be Visible    ${INVALID-LOGIN}

Login-nao-existente
    Input Text                   ${INPUT-LE}   ${EMAIL-I}
    Input Password               ${INPUT-LP}   ${PASSWORD-v}
    Sleep                        ${TIME}
    Click Button                 ${BUTTON-SUBMIT}
    Sleep                        ${TIME}


Teste-login-passed
    Input Text                   ${INPUT-LE}   ${EMAIL-V}
    Input Password               ${INPUT-LP}   ${PASSWORD-v}
    Sleep                        ${TIME}
    Click Button                 ${BUTTON-SUBMIT}
    Sleep                        ${TIME}
    Element Should Be Visible    ${MSG-LOGIN-SUCCESSFUL-01}
    Element Should Be Visible    ${MSG-LOGIN-SUCCESSFUL-02}
    Sleep                        ${TIME}
