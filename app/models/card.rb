class Card < ApplicationRecord
  validates :frente, :verso, presence: true
  validates :frente, :verso, uniqueness: { case_sensitive: false }
end
