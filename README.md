## Getting Started ##

### Instalando o rbenv ###
Para instalar o rbenv execute a linha de comando:

  brew install rbenv

Adicionar no ~/.bash_profile a linha abaixo:

  eval "$(rbenv init -)"

Listar todas as versões disponíveis para instalação conforme linha de comando abaixo:

  rbenv install -l

Instalar a versão ruby:

  rbenv install 2.4.1

Setar a versão ruby 2.3.1:

  rbenv local 2.3.1


### Instalando o bundler ###

Para instalar o bundler executar a linha de comando:

  gem install bundler


##### Preparing Internet Explorer #####

1. Check zoom level. It must be configured to 100%:

     ![Step 1](readme_img/step_1.png?raw=true "Check zoom level")

2. Disable 'Protected Mode' for all zones on Internet Options > Security:

    ![Step 2](readme_img/step_2.png?raw=true "Disable 'Protected Mode'")

##### Instalação do FFI #####

Para instalar o FFI executar a linha de comando

  bundle install ffi --platform ruby

### Instalando as gems ###

Para instalar as gems executar a linha de comando:

  bundle install

### Drivers browsers ###

Baixar os drivers dos browsers abaixo e incluir o path dos arquivos

- [chromedriver](https://sites.google.com/a/chromium.org/chromedriver/)
- [phantomjs](http://phantomjs.org/)
- [internetExplorerDriver](http://www.seleniumhq.org/download/)
- [Firefox Geckodriver](https://developer.mozilla.org/en-US/docs/Mozilla/QA/Marionette/WebDriver)

Instalar [Webdriver Safari extension](http://selenium-release.storage.googleapis.com/2.48/SafariDriver.safariextz).



#### Variações de linhas de comando para execução dos testes ####

### Rodando testes com DEV e Chrome ###

  bundle exec cucumber URL=https://the-internet.herokuapp.com/login


### Rodando testes em ambiente DEV com Firefox ###

  bundle exec cucumber -p firefox -p dev URL=https://the-internet.herokuapp.com/login


### Rodando testes em ambiente DEV com Safari ###

  bundle exec cucumber -p safari -p dev URL=https://the-internet.herokuapp.com/login


### Rodando testes em ambiente DEV com Poltergeist ###

  bundle exec cucumber -p poltergeist -p dev URL=https://the-internet.herokuapp.com/login

### Rodando testes em ambiente HML com Chrome###

  bundle exec cucumber -p chrome -p hmg URL=https://the-internet.herokuapp.com/login

### Rodando testes em ambiente HML com Firefox ###

  bundle exec cucumber -p firefox -p hmg URL=https://the-internet.herokuapp.com/login

### Rodando testes em ambiente HML com Safari ###

  bundle exec cucumber -p safari -p hmg URL=https://the-internet.herokuapp.com/login

### Rodando testes em ambiente HML com Poltergeist ###

  bundle exec cucumber -p poltergeist -p hmg URL=https://the-internet.herokuapp.com/login

### Gerando relatórios HTML ###

  bundle exec cucumber URL=https://the-internet.herokuapp.com/login -p html_report

### Rodando testes com TAGS ###

  bundle exec cucumber -p chrome -p dev URL=https://the-internet.herokuapp.com/login --tags @funcional

### Lista de TAGS ###

@funcional - Roda todos os cenários contendo a tag
@positivo  - Roda todos os cenários contendo a tag
@negativo  - Roda todos os cenários contendo a tag
