class User < ApplicationRecord
  has_many :giveaways
  has_many :tickets
  has_many :giveaway_action_settings, through: :tickets
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
