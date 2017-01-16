require 'rails_helper'
  feature 'User sees cards list' do
    scenario 'successfully' do
      Card.create(frente: 'Gato', verso: 'Cat')
      Card.create(frente: 'Cachorro', verso: 'Dog')

      visit cards_path

      expect(page).to have_content "Gato |> Cat"
      expect(page).to have_content "Cachorro |> Dog"

    end
  end
