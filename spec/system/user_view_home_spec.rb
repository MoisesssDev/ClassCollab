require 'rails_helper'

describe 'Usuario visualiza a home' do
  it 'com sucesso' do
    visit root_path

    expect(page).to have_content('Bem-vindo a home!')
  end
end
