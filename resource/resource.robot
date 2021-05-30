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
  Maximize Browser Window

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
  Mouse Over                       xpath=/html//div[1]/ul/li[3]/span/a

E "Filto Taxonômico"
  Mouse Over                      xpath=/html//ul/li[3]/span/div/a[2]
  Click Element                   xpath=/html//ul/li[3]/span/div/a[2]

Então devo ser direcionada à página "Lista de Filtros Taxonômicos"
  Wait Until Element Is Visible   xpath=/html//mat-toolbar-row/span
  Page Should Contain             Ações


#Caso de teste 3
Dado que estou na página "Lista de Filtros Taxonômicos"
  Page Should Contain               Código
  Page Should Contain               Data de Criação

Quando clicar no botão "+"
  Mouse Over                      xpath=/html//div[2]/div[2]/button
  Click Button                    xpath=/html//div[2]/div[2]/button

Então devo ser direcionada à página "Criar Filtro Taxonômico"
  Wait Until Element Is Visible    xpath=/html//mat-toolbar-row/h3
  Page Should Contain              Sobre o Filtro


#Caso de Teste 4
Dado que estou na página "Criar Filtro Taxonônico"
  Page Should Contain             Lista de Microrganismos

Quando no item "Sobre o Filtro" clico no campo obrigatório "Nome do Filtro" mas não o preencho
  Click Element                   xpath=/html//mat-form-field[1]/div/div[1]/div

E passo para o campo "Descrição do Filto"
  Click Element                   xpath=/html//mat-form-field[2]/div/div[1]/div

Então deve-se abrir a mensagem de "Campo Obrigatório" para "Nome do Filtro"
  Page Should Contain             Campo obrigatório

E o botão de salvar deve ficar desabilitado
  Scroll Element Into View        xpath=/html//div[3]/div/button[2]
  Element Should Be Disabled      xpath=/html//div[3]/div/button[2]


#Caso de Teste 5
Dado que estou na página "Criar Filtro Taxonômico"
  Page Should Contain            Criar Filtro Taxonômico

Quando clico em "Adicionar Microrganismos"
  Mouse Over                     xpath=/html//div[2]/div[2]/a/mat-icon
  Click Element                  xpath=/html//div[2]/div[2]/a/mat-icon

Então deve-se abrir uma nova tela contendo "Buscador de Taxonomias" e "Taxonomias adicionadas"
  Wait Until Element Is Visible    xpath=//*[@id="mat-dialog-0"]//div[1]/h3
  Page Should Contain              Taxonomias adicionadas


#Caso de Teste 6
Dado que estou em "Buscador de Taxonomias"
  Page Should Contain             Buscador de Taxonomias

Quando clico em "Filtro por nome científico"
  Sleep                           10s
  Page Should Contain             Bacillus cereus
  Mouse Over                      xpath=//*[@id="mat-dialog-0"]//mat-form-field[2]//button
  Click Button                    xpath=//*[@id="mat-dialog-0"]//mat-form-field[2]//button
  Sleep                           2s

E coloco o nome "Trichosporonaceae"
  Input Text                      id=mat-input-5     Trichosporonaceae
  Sleep                           2s

Então deve ser aberta a opção do item selecionado
  Page Should Contain             175944

E deve ser possível adicioná-lo a partir do botão "+" e exibir a mensagem "Taxonomia adicionada ao filtro"
  Mouse Over                      xpath=//*[@id="mat-dialog-0"]//div/div/div[1]//mat-row[1]//button
  Click Button                    xpath=//*[@id="mat-dialog-0"]//div/div/div[1]//mat-row[1]//button
  Page Should Contain             Taxonomia adicionada ao filtro


#Caso de Teste 7
Dado que de novo estou em "Buscador de Taxonomias"
  Page Should Contain             Buscador de Taxonomias

Quando coloco de novo em "Filtro por nome científico"
  Mouse Over                      xpath=//*[@id="mat-dialog-0"]//mat-form-field[2]//button
  Click Button                    xpath=//*[@id="mat-dialog-0"]//mat-form-field[2]//button

E coloco o nome "Clostridium senegalense"
  Clear Element Text              id=mat-input-5
  Input Text                      id=mat-input-5     Clostridium senegalense
  Click Element                   id=mat-input-5
  Sleep                           1s

Então deve de novo ser aberta a opção do item selecionado
  Page Should Contain            1465809

E então deve ser possível adicioná-lo a partir do botão "+" e exibir a mensagem "Taxonomia adicionada ao filtro"
  Mouse Over                      xpath=//*[@id="mat-dialog-0"]//div/div/div[1]//mat-row[1]//button
  Click Button                    xpath=//*[@id="mat-dialog-0"]//div/div/div[1]//mat-row[1]//button
  Page Should Contain             Taxonomia adicionada ao filtro



#Caso de Teste 8
Dado que estou mais uma vez em "Buscador de Taxonomias"
  Page Should Contain             Buscador de Taxonomias

Quando clico em "Selecionar por"
  Clear Element Text               id=mat-input-5
  Mouse Over                       xpath=//*/div[1]/mat-dialog-content/taxonomies-table/div/div//mat-form-field[1]/div/div[1]/div
  Click Element                    xpath=//*/div[1]/mat-dialog-content/taxonomies-table/div/div//mat-form-field[1]/div/div[1]/div

E seleciono a opção "Reino"
    Mouse Over                      xpath=//*[@id="mat-option-8"]/span
    Click Element                   xpath=//*[@id="mat-option-8"]/span

Então devem ser abertas as opções do item "Reino"
    Sleep                           10s
    Page Should Contain             Eukaryota

E deve então ser possível adicioná-los a partir do botão "+" e exibir a mensagem "Taxonomia adicionada ao filtro"
    Mouse Over                      xpath=//*[@id="mat-dialog-0"]//div/div/div[1]//mat-row[1]//button
    Click Button                    xpath=//*[@id="mat-dialog-0"]//div/div/div[1]//mat-row[1]//button
    Page Should Contain             Taxonomia adicionada ao filtro


#Caso de Teste 9
Dado que estou de novo em "Buscador de Taxonomias"
  Page Should Contain             Buscador de Taxonomias

Quando clico de novo em "Selecionar por"
  Page Should Contain              Fungi
  Mouse Over                       xpath=//*/div[1]/mat-dialog-content/taxonomies-table/div/div//mat-form-field[1]/div/div[1]/div
  Click Element                    xpath=//*/div[1]/mat-dialog-content/taxonomies-table/div/div//mat-form-field[1]/div/div[1]/div

E seleciono a opção "Classe"
  Mouse Over                      xpath=//*[@id="mat-option-10"]/span
  Click Element                   xpath=//*[@id="mat-option-10"]/span

Então devem ser abertas as opções do item "Classe"
  Sleep                           10s
  Page Should Contain             Negativicutes

E de novo deve ser possível adicioná-los a partir do botão "+" e exibir a mensagem "Taxonomia adicionada ao filtro"
  Mouse Over                      xpath=//*[@id="mat-dialog-0"]//div/div/div[1]//mat-row[1]//button
  Click Button                    xpath=//*[@id="mat-dialog-0"]//div/div/div[1]//mat-row[1]//button
  Page Should Contain             Taxonomia adicionada ao filtro


#Caso de Teste 10
Dado que estou em "Taxonomias Adicionadas"
  Page Should Contain    Taxonomias adicionadas

Quando adicionada todas as opções desejadas
  Page Should Contain             Trichosporonaceae
  Page Should Contain             Clostridium senegalense
  Page Should Contain             Fungi
  Page Should Contain             Negativicutes

Então deve ser possível salvá-las exibindo as opções selecionadas na página "Criar Filtro Taxonômico"
  Mouse Over                     xpath=//mat-dialog-actions//button[2]
  Click Button                   xpath=//mat-dialog-actions//button[2]
  Page Should Contain            Criar Filtro Taxonômico
  Wait Until Element Is Visible  xpath=//mat-row[1]/mat-cell[2]
  Page Should Contain            Clostridium senegalense
  Page Should Contain            Negativicutes
  Page Should Contain            Fungi



#Caso de Teste 11
Dado que estou na página "Criar Filtro Taxonômico" com o filtro escolhido e o "Nome do Filtro" preenchidos
  Scroll Element Into View          xpath=//div/div/form/div[1]/div[1]//span
  Mouse Over                        xpath=/html//mat-form-field[1]/div/div[1]/div
  Input Text                        xpath=//mat-form-field[1]/div/div[1]/div/input     Teste Neoprostecta

Quando clico no botão "Salvar"
  Scroll Element Into View          xpath=//form/div[2]/div[2]/a
  Mouse Over                        xpath=//div[3]/div/button[2]
  Click Button                      xpath=//div[3]/div/button[2]

Então devo ser redirecionada a página "Lista de Filtros Taxonômicos"
  Wait Until Element Is Visible    xpath=//mat-toolbar-row/span
  Page Should Contain              Teste Neoprostecta


#Caso de Teste 12
Dado que estou na página Lista de Filtros Taxonômicos
  Page Should Contain          Lista de Filtros Taxonômicos

Quando seleciono "Filtro Padrão"
  Sleep                       2s
  Mouse Over                  xpath=//mat-cell[7]/a[1]/mat-icon
  Sleep                       2s
  Click Element               xpath=//mat-cell[7]/a[1]/mat-icon

Então ele deve habilitar com sucesso a opção de "Filtro Padrão"
   Sleep                      2s
   Page Should Contain        É PADRÃO

#Caso de Teste 13
Dado que estou na pagina Lista de Filtros Taxonômicos
  Page Should Contain          Lista de Filtros Taxonômicos

Quando desseleciono "Filtro Padrão"
  Sleep                       2s
  Mouse Over                  xpath=//mat-cell[7]/a[1]/mat-icon
  Sleep                       2s
  Click Element               xpath=//mat-cell[7]/a[1]/mat-icon

Então ele deve desabilitar com sucesso a opção de "Filtro Padrão"
  Sleep                        2s
  Page Should Contain          NÃO É PADRÃO


#Caso de Teste 14
Dado que ainda estou na página "Lista de Filtros Taxonômicos"
   Page Should Contain         Lista de Filtros Taxonômicos

Quando Clico em Editar
   Mouse Over                  xpath=//mat-cell[7]/a[2]
   Click Element               xpath=//mat-cell[7]/a[2]

Então devo ser levado a página "Editar Filtro Taxonômico"
  Sleep                        3s
  Page Should Contain         Editar Filtro Taxonômico


#Caso de Teste 15
Dado que estou em "Editar Filtro Taxonômico"
   Sleep                           3s
   Wait Until Element Is Visible   xpath=//form/div[1]/div[1]/div/span

Quando excluo um item
    Scroll Element Into View      xpath=//div[3]/div/button[2]
    Mouse Over                    xpath=//mat-row[1]/mat-cell[4]/button/span[1]/mat-icon
    Set Focus To Element          xpath=//mat-row[1]/mat-cell[4]/button
    Click Button                  xpath=//mat-row[1]/mat-cell[4]/button
    Sleep                         2s
    Wait Until Element Is Visible xpath=//*[@id="mat-dialog-title-0"]
    Mouse Over                    xpath=//span[2]/button/span[1]
    Click Button                  xpath=//span[2]/button/span[1]
#
# E salvo novamente a página
#    Mouse Over                    xpath=//div[3]/div/button[2]
#    Click Button                  xpath=//div[3]/div/button[2]
