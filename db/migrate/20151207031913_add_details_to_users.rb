class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :preference, :string
  end
end
