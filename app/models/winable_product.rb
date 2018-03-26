class WinableProduct < ApplicationRecord
  belongs_to :giveaway
  has_one :winner
  has_one :ticket, through: :winners
end
