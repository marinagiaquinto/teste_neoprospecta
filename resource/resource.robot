***Settings***
Library   SeleniumLibrary

***Variables***
${BROWSER}   chrome
${URL}       https://prova-dot-bioview-neopct.appspot.com
${LOGIN}     teste.qa.1@neoprospecta.com
${SENHA}     teste.qa.1@neoprospecta.com

***KeyWords***

Fechar navegador
  Close Browser

#Caso de teste 1
Dado que estou na página de login do site
  Open Browser       https://prova-dot-bioview-neopct.appspot.com   ${BROWSER}

Quando colocar login e senha corretos
  Wait Until Element Is Visible  xpath=/html//div[2]//h1
  Input Text                     xpath=//*[@id="mat-input-0"]   ${LOGIN}
  Input Password                 xpath=//*[@id="mat-input-1"]   ${SENHA}

E apertar o botão "entrar"
  Mouse Over                    xpath=//button[@type="submit"]
  Click Button                  xpath=//button[@type="submit"]

Então devo ser direcionada à página Home do site
  Wait Until Element Is Visible    xpath=/html//mat-toolbar/div
  Page Should Contain              Neobiome

#Caso de teste 2
Dado que estou na pégina Home do site
  Sleep                            8s
  Wait Until Element Is Visible    xpath=/html//most-abundant-samples-all-time//mat-card-title
  Page Should Contain              Microrganismos mais frequentes

Quando quando clicar no ícone "Ferramentas"
  Mouse Over                    xpath=/html//div[1]/ul/li[3]/span/a

E "Filto Taxonômico"
  Mouse Over                   xpath=/html//ul/li[3]/span/div/a[2]
  Click Element                xpath=/html//ul/li[3]/span/div/a[2]

Então devo ser direcionada à página "Lista de Filtros Taxonômicos"
  Wait Until Element Is Visible   xpath=/html//mat-toolbar-row/span
  Page Should Contain             Ações
  Capture Page Screenshot
