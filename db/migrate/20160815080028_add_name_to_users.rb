class AddNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :date_of_birth, :datetime
    add_column :users, :location, :string
  end
end
