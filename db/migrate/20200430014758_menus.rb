class Menus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.references :account
      t.string :product_name, null: false
      t.integer :price, null: false
      t.string :image
    end
  end
end
