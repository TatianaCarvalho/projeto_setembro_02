Before do
    @site = PageObjects::Home::Acesso.new
    @cadastro = PageObjects::Home::Cadastro.new
end

Dado("que estou na home do site") do
    @site.acessar_site
end
  
Quando("clico no botão Sing in e crio um novo cadastro") do
  @cadastro.acessar_cadastro
  @cadastro.cadastrar_usuario
end
  
Então("tenho um cadastro no site e consigo realizar uma compra") do
  @cadastro.fazer_pedido
  expect(page).to have_content('Your order on My Store is complete.')
end