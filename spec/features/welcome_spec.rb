require 'rails_helper'

feature "Welcomes", type: :feature do
  scenario 'Mostra a mensagem de boas-vindas' do
    visit(root_path)
    expect(page).to have_content('Bem-Vindo')
  end

  scenario 'Verificar o link Cadastro de Clientes' do
    visit(root_path)
    #expect(page).to have_selector('ul li a')
    #expect(page).to have_link('Cadastro de Clientes')
    # em vez de usar as duas linhas acima, usar código abaixo (find >> capybara)
    expect(find('ul li')).to have_link('Cadastro de Clientes')
  end
end
