require 'rails_helper'

feature  'User subits new card ' do
  scenario 'successfully' do
    pt_br = "Gato"
    en = "Cat"
    card = "Gato |> Cat"
    visit new_card_path
    fill_in 'portugues', with: pt_br
    fill_in 'ingles', with: en
    click_on 'Create Card'

    expect(page).to have_content card
  end
end
