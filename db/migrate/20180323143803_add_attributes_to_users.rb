class AddAttributesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :string
    add_column :users, :birth_date, :date
    add_column :users, :username, :string
    add_column :users, :activity_description, :text
    add_column :users, :followers_q, :integer
  end
end
