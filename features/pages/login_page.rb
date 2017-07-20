class LoginPage < SitePrism::Page

  def preencher_login credential
    username_credential = CREDENTIALS[credential.gsub(' ', '_').to_sym]
    username = username_credential[:username]

    fill_in('username', :with => username)
  end

  def preencher_senha credential
    senha_credential = CREDENTIALS[credential.gsub(' ', '_').to_sym]
    password = senha_credential[:password]

    fill_in('password', :with => password)
  end

  def clicar_botao_login
    find(:xpath, ".//*[@id='login']/button").click
  end

end
