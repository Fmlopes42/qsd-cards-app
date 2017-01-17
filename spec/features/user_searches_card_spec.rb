require 'rails_helper'

feature 'User searches card' do
  scenario 'successfully' do
    card = Card.create(frente: "Café", verso: "Coffee")

    visit root_path

    fill_in 'PESQUISAR CARD', with: 'Café'
    click_on 'Pesquisar'

    #expect(page).to redirect_to card_path(card)
    expect(page).to have_content 'Café |> Coffee'
  end
end
