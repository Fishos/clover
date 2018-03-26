class CreateWinners < ActiveRecord::Migration[5.1]
  def change
    create_table :winners do |t|
      t.references :winable_product, foreign_key: true
      t.references :ticket, foreign_key: true

      t.timestamps
    end
  end
end
