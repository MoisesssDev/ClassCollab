require 'rails_helper'

describe 'Usuario visualiza a home' do
  it 'com sucesso' do
    visit root_path

    expect(page).to have_css('img[src*="logo.png"]')
    expect(page).to have_css('img[src*="image-header.png"]')
    expect(page).to have_content('Seja bem-vindo(a) ao ClassCollab')
    expect(page).to have_content('Rede Social Acadêmica:')
    expect(page).to have_css('img[src*="chapeu-formatura.png"]')
    expect(page).to have_content('Organizador de Tarefas:')
    expect(page).to have_css('img[src*="calendario.png"]')
    expect(page).to have_content('Conexões Inteligentes:')
    expect(page).to have_css('img[src*="conexoes.png"]')
    expect(page).to have_content('Personalização Total:')
    expect(page).to have_css('img[src*="personalizar.png"]')
    expect(page).to have_link('Crie sua conta!')
    expect(page).to have_link('Faça login!')
  end
end
