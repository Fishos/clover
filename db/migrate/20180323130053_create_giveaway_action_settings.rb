class CreateGiveawayActionSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :giveaway_action_settings do |t|
      t.references :giveaway, foreign_key: true
      t.references :distribution_channel, foreign_key: true
      t.integer :ticket_q
      t.string :like_url
      t.string :share_url
      t.string :video_url

      t.timestamps
    end
  end
end
