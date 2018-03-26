class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :give_away_action_setting
  has_one :winner
  has_one :winable_product, through: :winners
end
