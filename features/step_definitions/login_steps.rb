######### DADO #########
Dado(/^que estou na página de login da aplicação$/) do
  open_page = AbrirPagina.new
  open_page.load_page
end

Dado(/^que estou na tela de login$/) do
  login_page = MethodsPage.new
  conteudo = login_page.get_conteudo_pagina
  expect(conteudo).to include("Login Page")
end

######### QUANDO #########
Quando(/^preencho o campo Username com um "([^"]*)"$/) do |username|
  login_page = LoginPage.new
  login_page.preencher_login username
end

Quando(/^clico o botão Logout$/) do
  login_page = HomePage.new
  login_page.clicar_botao_logout
end

########### E ############
E(/^preencho o campo Password com uma "([^"]*)"$/) do |password|
  login_page = LoginPage.new
  login_page.preencher_senha password
end

E(/^clico o botão Login$/) do
  login_page = LoginPage.new
  login_page.clicar_botao_login
end

######### ENTãO #########
Então(/^devo ver uma mensagem de "([^"]*)" na tela$/) do |message|
  home_page = MethodsPage.new

  message = MESSAGES[message.gsub(' ', '_').to_sym]
  message = message[:message]

  conteudo = home_page.get_conteudo_pagina
  expect(conteudo).to include(message)
end
