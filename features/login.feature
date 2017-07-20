# language: pt

Funcionalidade: Login
  Na página https://the-internet.herokuapp.com/login
  Os usuários fazem login com sucesso preenchendo os campos Username e Password.
  -	Validar a mensagem "You logged into a secure área!" na tela;
  Os usuários fazem o Logout
  - Validar a mensagem "You logged out of the secure área!" na tela.
  Os usuários informam usuário inexistente
  - Validar a mensagem "Your username is invalid!" na tela
  Os usuários informa senha incorreta para um usuário existente
  - Validar a mensagem "Your password is invalid!" na tela

  Contexto:
    Dado que estou na página de login da aplicação

  @funcional @positivo
  Cenário: Posso realizar login com sucesso no site Herokuapp
    Quando preencho o campo Username com um "usuario valido"
    E preencho o campo Password com uma "senha valida"
    E clico o botão Login
    Então devo ver uma mensagem de "login com sucesso" na tela

  @funcional @positivo
  Cenário: Posso realizar login com sucesso no site Herokuapp
    Quando preencho o campo Username com um "usuario valido"
    E preencho o campo Password com uma "senha valida"
    E clico o botão Login
    Então devo ver uma mensagem de "logout com sucesso" na tela

  @funcional @negativo
  Cenário: Posso ver a mensagem de usuário inválido ao informar usuário incorreto
    Quando preencho o campo Username com um "usuario invalido"
    E preencho o campo Password com uma "senha valida"
    E clico o botão Login
    Então devo ver uma mensagem de "usuario invalido" na tela

  @funcional @negativo
  Cenário: Posso ver a mensagem de senha inválida ao informar senha incorreta
    Quando preencho o campo Username com um "usuario valido"
    E preencho o campo Password com uma "senha invalida"
    E clico o botão Login
    Então devo ver uma mensagem de "senha invalida" na tela
