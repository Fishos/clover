class CreateGiveaways < ActiveRecord::Migration[5.1]
  def change
    create_table :giveaways do |t|
      t.string :title
      t.string :description
      t.string :status
      t.datetime :begin_giveaway
      t.datetime :end_giveaway

      t.timestamps
    end
  end
end
