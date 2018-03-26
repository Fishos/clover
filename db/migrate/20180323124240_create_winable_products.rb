class CreateWinableProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :winable_products do |t|
      t.references :giveaway, foreign_key: true
      t.integer :photo
      t.decimal :value
      t.string :description

      t.timestamps
    end
  end
end
