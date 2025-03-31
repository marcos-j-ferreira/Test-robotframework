*** Settings ***
Resource   ./variables.robot

*** Keywords ***

# Realiza a autenticação, clicando no link correspondente e aguardando o tempo definido.

Password-based Authentication
    Sleep                      ${TIME}
    Click Link                 ${BUTTON-PBA}
    Sleep                      ${TIME}

# Realiza o cadastro de uma nova conta inserindo e-mail e senha e clicando no botão de envio.

CRIAR-CONTA
    Input Text                 ${INPUT-LE}   ${EMAIL-NEW}
    Input Password             ${INPUT-LP}   ${PASSWORD-NEW}
    Click Button               ${BUTTON-SUBMIT}

# Tenta criar uma conta utilizando uma senha incorreta.

CRIAR-CONTA-PASSWORD-ERRADA
    Input Text                 ${INPUT-LE}   ${EMAIL-V}
    Input Password             ${INPUT-LP}   ${PASSWORD-E}
    Click Button               ${BUTTON-SUBMIT}

# Tenta criar uma conta utilizando um e-mail incorreto.

CRIAR-CONTA-EMAIL-ERRADA
    Input Text                 ${INPUT-LE}   ${EMAIL-E}
    Input Password             ${INPUT-LP}   ${PASSWORD-v}
    Click Button               ${BUTTON-SUBMIT}

# Valida o sucesso da criação de conta verificando mensagens e links esperados.

Validetion
    Sleep                      ${TIME}
    Element Should Be Visible  ${MSG-LOGIN-SUCCESSFUL-01}
    Element Should Be Visible  ${MSG-SIGNUP}
    Element Should Be Visible  ${BACK-LOGIN}

# Abre o navegador com a URL e navegador especificado.

Abrir navegador
    Open Browser               ${URL}  ${BROWSER}

# Fecha o navegador.

Fechar navegador
    Close Browser


# Clica no link de criação de conta e aguarda.

Click-Link 
    Click Link                  ${LINK-CREATE}
    Sleep                       ${TIME}

# Clica no botão de envio do formulário.

Click-Button
    Click Button                 ${BUTTON-SUBMIT}

# Verifica a visibilidade dos campos de e-mail e senha após uma ação.

Validar-Campos
    Sleep                        ${Time}
    Element Should Be Visible    ${INPUT-LE}
    Element Should Be Visible    ${INPUT-LP}
    Sleep                        ${Time}

# Realiza login com credenciais válidas e clica no botão de envio.

Login-Passed
    Input Text                   ${INPUT-LE}   ${EMAIL-V}
    Input Password               ${INPUT-LP}   ${PASSWORD-v}
    Sleep                        ${TIME}
    Click Button                 ${BUTTON-SUBMIT}
    Sleep                        ${TIME}

# Valida o sucesso do login verificando mensagens de confirmação.

Validar-Login
    Sleep                        ${TIME}
    Element Should Be Visible    ${MSG-LOGIN-SUCCESSFUL-01}
    Element Should Be Visible    ${MSG-LOGIN-SUCCESSFUL-02}

# Realiza uma tentativa de login com credenciais inválidas.

Login-failed
    Input Text                   ${INPUT-LE}   ${EMAIL-I}
    Input Password               ${INPUT-LP}   ${PASSWORD-E}
    Sleep                        ${TIME}
    Click Button                 ${BUTTON-SUBMIT}

# Valida o erro de login, verificando a mensagem de erro.

Validar-Login-failed
    Sleep                        ${TIME}
    Element Should Be Visible    ${INVALID-LOGIN}

# Tenta fazer login com uma conta inexistente.

Login-nao-existente
    Input Text                   ${INPUT-LE}   ${EMAIL-I}
    Input Password               ${INPUT-LP}   ${PASSWORD-v}
    Sleep                        ${TIME}
    Click Button                 ${BUTTON-SUBMIT}
    Sleep                        ${TIME}

# Realiza um teste completo de login com credenciais válidas e valida o sucesso.

Teste-login-passed
    Input Text                   ${INPUT-LE}   ${EMAIL-V}
    Input Password               ${INPUT-LP}   ${PASSWORD-v}
    Sleep                        ${TIME}
    Click Button                 ${BUTTON-SUBMIT}
    Sleep                        ${TIME}
    Element Should Be Visible    ${MSG-LOGIN-SUCCESSFUL-01}
    Element Should Be Visible    ${MSG-LOGIN-SUCCESSFUL-02}
    Sleep                        ${TIME}
    