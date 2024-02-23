require 'rails_helper'

describe 'Usuário cria conta' do
  it 'com sucesso' do
    visit root_path
    click_on 'Crie sua conta!'
    fill_in 'E-mail', with: 'zeca@email.com'
    fill_in 'Senha', with: '123456'
    fill_in 'Confirme sua senha', with: '123456'
    click_on 'Criar conta'

    expect(User.count).to eq 1
    expect(page).to have_content('Você realizou seu registro com sucesso')
    expect(page).to have_content('zeca@email.com')
    expect(page).to have_button('Sair')
  end
end
