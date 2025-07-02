
*** Settings ***
Library  SeleniumLibrary
Resource   Resource1_Lojas_Amer.robot

*** Test Cases ***
Caso de Teste - Lojas americanas
    Acessar a pagina das Lojas Americanas
    Testar Oferta Relampago
    Pesquisar por Produto
    Retornar ao homepage 
    Tentar Login com Usuário e Senha Corretos 


