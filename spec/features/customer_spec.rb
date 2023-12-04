require 'rails_helper'

RSpec.feature "Customers", type: :feature do
  scenario 'Verificar link Cadastro de Cliente' do
    visit(root_path)
    expect(page).to have_link('Cadastro de Clientes')
  end

  scenario 'Verificar link Novo Cliente' do
    visit(root_path)
    click_on('Cadastro de Clientes')
    expect(page).to have_content('Listando Clientes')
    expect(page).to have_content('Novo Cliente')
  end
end
