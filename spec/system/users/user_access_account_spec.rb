require 'rails_helper'

describe 'Usuário acessa página de login' do
  it 'e faz login com sucesso' do
    create(:user, email: 'zelda@email.com', password: '123456')

    visit root_path
    click_on 'Faça login!'
    fill_in 'E-mail', with: 'zelda@email.com'
    fill_in 'Senha', with: '123456'
    click_on 'Entrar'

    expect(page).to have_content('Login efetuado com sucesso')
    expect(page).to have_content('zelda@email.com')
    expect(page).to have_button('Sair')
  end
end
