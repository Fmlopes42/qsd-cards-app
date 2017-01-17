class Card < ApplicationRecord
  validates :frente, :verso, presence: true
end
