require 'rails_helper'

feature 'User cant submit invalid card' do
  scenario 'successfully' do
    visit new_card_path
    fill_in 'portugues', with: ' '
    fill_in 'ingles', with: ' '
    click_on 'Create Card'

    expect(page).to have_content "Card inválido!"

    visit new_card_path
    click_on 'Create Card'

    expect(page).to have_content "Card inválido!"

    visit new_card_path
    fill_in 'portugues', with: 'Cachorro'
    click_on 'Create Card'

    expect(page).to have_content "Card inválido!"


  end
end
