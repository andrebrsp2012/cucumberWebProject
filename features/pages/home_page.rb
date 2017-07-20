class HomePage < SitePrism::Page

  def clicar_botao_logout
    find(:xpath, ".//*[@id='content']/div/a").click
  end
end
