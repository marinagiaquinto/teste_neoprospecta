***Settings***
Resource   ../resource/resource.robot
#Suite Teardown  Fechar navegador

***Test Case***
Caso de Teste 1: Login
  Dado que estou na página de login do site
  Quando colocar login e senha corretos
  E apertar o botão "entrar"
  Então devo ser direcionada à página Home do site

Caso de Teste 2: Acessar a página "Lista de Filtros Taxonômicos"
   Dado que estou na pégina Home do site
   Quando quando clicar no ícone "Ferramentas"
   E "Filto Taxonômico"
   Então devo ser direcionada à página "Lista de Filtros Taxonômicos"

Caso de Teste 3: Acessar a página "Criar Filtro Taxonômico"
   Dado que estou na página "Lista de Filtros Taxonômicos"
   Quando clicar no botão "+"
   Então devo ser direcionada à página "Criar Filtro Taxonômico"

Caso de Teste 4: Sobre o Filtro
   Dado que estou na página "Criar Filtro Taxonônico"
   Quando no item "Sobre o Filtro" clico no campo obrigatório "Nome do Filtro" mas não o preencho
   E passo para o campo "Descrição do Filto"
   Então deve-se abrir a mensagem de "Campo Obrigatório" para "Nome do Filtro"
   E o botão de salvar deve ficar desabilitado

Caso de Teste 5: Lista de Microrganismos
   Dado que estou na página "Criar Filtro Taxonômico"
   Quando clico em "Adicionar Microrganismos"
   Então deve-se abrir uma nova tela contendo "Buscador de Taxonomias" e "Taxonomias adicionadas"

Caso de Teste 6: Filtrar por nome científico "Trichosporonaceae"
    Dado que estou em "Buscador de Taxonomias"
    Quando clico em "Filtro por nome científico"
    E coloco o nome "Trichosporonaceae"
    Então deve ser aberta a opção do item selecionado
    E deve ser possível adicioná-lo a partir do botão "+" e exibir a mensagem "Taxonomia adicionada ao filtro"

Caso de Teste 7: Filtrar por nome científico "Clostridium senegalense"
    Dado que de novo estou em "Buscador de Taxonomias"
    Quando coloco de novo em "Filtro por nome científico"
    E coloco o nome "Clostridium senegalense"
    Então deve de novo ser aberta a opção do item selecionado
    E então deve ser possível adicioná-lo a partir do botão "+" e exibir a mensagem "Taxonomia adicionada ao filtro"

Caso de Teste 8: Selecionar por Reino
    Dado que estou mais uma vez em "Buscador de Taxonomias"
    Quando clico em "Selecionar por"
    E seleciono a opção "Reino"
    Então devem ser abertas as opções do item "Reino"
    E deve então ser possível adicioná-los a partir do botão "+" e exibir a mensagem "Taxonomia adicionada ao filtro"

Caso de Teste 9: Selecionar por Classe
    Dado que estou de novo em "Buscador de Taxonomias"
    Quando clico de novo em "Selecionar por"
    E seleciono a opção "Classe"
    Então devem ser abertas as opções do item "Classe"
    E de novo deve ser possível adicioná-los a partir do botão "+" e exibir a mensagem "Taxonomia adicionada ao filtro"

Caso de Teste 10: Taxonomias Adicionadas
    Dado que estou em "Taxonomias Adicionadas"
    Quando adicionada todas as opções desejadas
    Então deve ser possível salvá-las exibindo as opções selecionadas na página "Criar Filtro Taxonômico"
#
# Caso de Teste 11: Salvar Filtro
#   Dado que estou na página "Criar Filtro Taxonômico" com o filtro escolhido e o "Nome do Filtro" preenchidos
#   Quando clico no botão "Salvar"
#   Então devo ser redirecionada a página "Lista de Filtros Taxonômicos"
#   E nela deve conter o "Nome do Filtro" com os ícones "Tornar Filtro Padrão", "Editar Filtro" e "Remover Filtro"
