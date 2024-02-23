require 'rails_helper'

describe 'Usuário acessa página de login' do
  it 'e faz login com sucesso' do
    create(:user, email: 'zelda@email.com', password: '123456')

    visit root_path
    click_on 'Faça login!'
    fill_in 'Email', with: 'zelda@email.com'
    fill_in 'Password', with: '123456'
    click_on 'Log in'

    expect(page).to have_content('Signed in successfully')
    expect(page).to have_content('zelda@email.com')
    expect(page).to have_button('Sair')
  end
end
