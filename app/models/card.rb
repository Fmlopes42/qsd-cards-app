class Card < ApplicationRecord
  validates :frente, :verso, presence: true
  validates :frente, :verso, uniqueness: true
end
