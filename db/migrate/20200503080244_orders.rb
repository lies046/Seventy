class Orders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.time :takeout, null: false

      t.timestamps
    end
  end
end
