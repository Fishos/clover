class AddUserRefToGiveaway < ActiveRecord::Migration[5.1]
  def change
    add_reference :giveaways, :user, foreign_key: true
  end
end
