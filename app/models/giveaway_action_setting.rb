class GiveawayActionSetting < ApplicationRecord
  belongs_to :giveaway
  belongs_to :distribution_channel
  has_many :tickets
  has_many :users, through: :tickets
end
