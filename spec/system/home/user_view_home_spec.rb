require 'rails_helper'

describe 'Usuario visualiza a home' do
  it 'com sucesso' do
    visit root_path

    expect(page).to have_link('Crie sua conta!')
    expect(page).to have_link('Faça login!')
  end
end
