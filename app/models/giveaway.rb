class Giveaway < ApplicationRecord
  has_many :giveaway_action_settings
  has_many :winable_products
  has_many :distribution_channels, through: :giveaway_action_settings
  has_many :winners, through: :winable_products
  belongs_to :user

  def tickets
    tickets = []
    self.giveaway_action_settings.each do |gas|
      tickets << gas.tickets
    end
    return tickets.flatten
  end
end
