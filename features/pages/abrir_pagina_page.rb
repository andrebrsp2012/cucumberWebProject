class AbrirPagina < SitePrism::Page
  def load_page
    visit(URL)
  end
end
