class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.references :user, foreign_key: true
      t.references :giveaway_action_setting, foreign_key: true

      t.timestamps
    end
  end
end
