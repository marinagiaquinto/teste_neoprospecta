***Settings***
Resource   ../resource/resource.robot
Suite Teardown  Fechar navegador

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

# Caso de Teste 3: Acessar a página "Criar Filtro Taxonômico"
#   Dado que estou na página "Lista de Filtros Taxonômicos"
#   Quando clicar no botão "+"
#   Então devo ser direcionada à página "Criar Filtro Taxonômico"
#
# Caso de Teste 4: Sobre o Filtro
#   Dado que estou na página "Criar Filtro Taxonônico"
#   Quando no item "Sobre o Filtro" clico no campo obrigatório "Nome do Filtro" mas não o preencho
#   E passo para o item "Descrição do Filtro"
#   Então deve-se abrir a mensagem de "Campo Obrigatório" para "Nome do Filtro"
#   E o botão de salvar deve ficar desabilitado
#
# Caso de Teste 5: Lista de Microrganismos
#   Dado que estou na página "Criar Filtro Taxonômico"
#   Quando clico em "Adicionar Microrganismos"
#   Então deve-se abrir uma nova tela contendo "Buscador de Taxonomias" e "Taxonomias adicionadas"
#
# Caso de Teste 6: Buscador de Taxonomias - Selecionar por
#     Dado que estou em "Buscador de Taxonomias"
#     Quando clico em "Selecionar por"
#     Então devem ser abertas as opções do item selecionado
#     E deve ser possível adicioná-los a partir do botão "+"
#
# Caso de Teste 7: Buscador de Taxonomias - Filtrar por nome científico
#   Dado que estou em "Buscador de Taxonomias"
#   Quando coloco em "Filtro por nome científico"
#   E coloco o nome "Bacillus cereus sp. group"
#   Então deve ser aberta a opçãos do item selecionado
#   E deve ser possível adicioná-lo a partir do botão "+"
#
# Caso de Teste 8: Taxonomias adicionadas
#   Dado que estou em "Buscador de Taxonomias"
#   Quando adicionadas as opções requeridas
#   Então elas devem ser transferidas para "Taxonomias Adicionadas" exibindo a mensagem "Taxonomia Adicionada ao Filtro"
#   E deve ser possível salvá-las exibindo as opções selecionadas na página "Criar Filtro Taxonômico"
#
# Caso de Teste 9: Salvar Filtro
#   Dado que estou na página "Criar Filtro Taxonômico" com o filtro escolhido e o "Nome do Filtro" preenchidos
#   Quando clico no botão "Salvar"
#   Então devo ser redirecionada a página "Lista de Filtros Taxonômicos"
#   E nela deve conter o "Nome do Filtro" com os ícones "Tornar Filtro Padrão", "Editar Filtro" e "Remover Filtro"
