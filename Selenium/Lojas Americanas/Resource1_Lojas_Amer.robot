*** Settings ***
Library  SeleniumLibrary

*** Variables ***       

#Variáveis de Teste 
${BROWSER}   edge 
${URL}       https://www.americanas.com.br/   
${PRODUTO_NAME}   Playstation 5

#Elementos da interface 
${OFERTA_BUTTON}            id:link-button-17477724917330                  # Variavel que armazena o elemento para ir a ofertas relampago
${INPUT_SEARCH_CSS}         css:input[data-testid="fs-input"]              # Variavel que armazena o Elemento para digitar o produto de pesquisa                                             

#Informações do usuário correto
${USUARIO}   testadorcindra@gmail.com
${SENHA}     Teste123   


*** Keywords ***
Acessar a pagina das Lojas Americanas
    Open Browser     url=${URL}     browser=${BROWSER}
    Maximize Browser Window

Testar Oferta Relampago
    Click Element   locator=${OFERTA_BUTTON}
    GO BACK        

Pesquisar por Produto 
        Input text   locator=${INPUT_SEARCH_CSS}    text=${PRODUTO_NAME}   
        Press Key    locator=${INPUT_SEARCH_CSS}    key=\n    
        Wait Until Element is visible      xpath=//span[contains(text(), 'grade')]  timeout=10s                     

Retornar ao homepage
    Go To   ${URL}       

Tentar Login com Usuário e Senha corretos
    Click Element    locator=css:a[href="/login"]

    Press Keys    xpath=//button[//span[contains(text(), 'Entrar com email e senha')]]   key=\n
    Wait Until Element Is Visible    css:input[placeholder="ex.: exemplo@mail.com"]    timeout=10s  # Espera o campo de email aparecer

    Input Text  css:input[placeholder="ex.: exemplo@mail.com"]  ${USUARIO} 
    Wait Until Element Is Visible  css:input[type="password"]  timeout=20s


    Input Text  css:input[type="password"]  ${SENHA}
    Press Keys  xpath=//span[contains(text(), 'Entrar')]  \n










