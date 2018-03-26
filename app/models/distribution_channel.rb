class DistributionChannel < ApplicationRecord
  has_many :giveaway_action_settings
  has_many :giveaways, through: :giveaway_action_settings
end
