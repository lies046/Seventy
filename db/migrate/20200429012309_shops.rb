class Shops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.references :account
      t.string :address
      t.string :business_day
      t.string :regular_holiday
      t.integer :opening_hours
      t.integer :closing_time
      t.string :image

      t.timestamps
    end
  end
end
