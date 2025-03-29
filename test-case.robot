*** Settings ***
Resource    ./keywords.robot
Library    String

*** Test Cases ***      

Cenario 1 (Cadastro)- Cadastro bem-sucedido
    [tags]   Event
    Abrir navegador
    Password-based Authentication
    Click-Link
    CRIAR-CONTA
    Validetion
    Fechar navegador

Cenário 2 (Cadastro) - Campos obrigatórios
    [tags]   Event
    Abrir navegador
    Password-based Authentication
    Click-Link
    Click-Button
    Validar-Campos
    Fechar navegador

Cenário 3 (Cadastro) - Validação do formato do E-mail:
    [tags]   Event
    Abrir navegador
    Password-based Authentication
    Click-Link
    CRIAR-CONTA-EMAIL-ERRADA
    Validar-Campos
    Fechar navegador

Cenário 4 (Login) - Login bem-sucedido:
    [tags]   Event
    Abrir navegador
    Password-based Authentication
    Login-Passed
    Validar-Login
    Fechar navegador

Cenário 5 (Login) - Login com credenciais erradas:
    [tags]   Event
    Abrir navegador
    Password-based Authentication
    Login-failed
    Validar-Login-failed
    Fechar navegador

Cenário 6 (Login) - Login com conta inexistente:
    [Tags]   Event
    Abrir navegador
    Password-based Authentication
    Login-nao-existente
    Validar-Login-failed
    Fechar navegador