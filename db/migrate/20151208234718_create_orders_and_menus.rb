class CreateOrdersAndMenus < ActiveRecord::Migration
  def change
    create_table :orders_and_menus do |t|
      t.references :menu, index: true
      t.references :order, index: true
    end
  end
end
