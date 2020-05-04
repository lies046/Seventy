class AddTakeoutTimeToCarts < ActiveRecord::Migration[6.0]
  def change
    add_column :carts, :takeout_time, :time
  end
end
