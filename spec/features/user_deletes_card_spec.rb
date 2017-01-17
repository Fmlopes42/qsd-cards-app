require 'rails_helper'

feature 'User deletes card' do
  scenario 'successfully' do
    card = Card.create(frente: "Café", verso: "Coffee")

    visit card_path(card)

    expect(page).to have_content "Café |> Coffee"

    click_on "EXCLUIR CARD"

    expect(page).not_to have_content "Café |> Coffee"
  end
end
