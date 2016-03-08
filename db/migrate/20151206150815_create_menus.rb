class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :category

      t.timestamps
    end
  end
end
