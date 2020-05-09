class ChangeRegularHolidayToAccounts < ActiveRecord::Migration[6.0]
  def change
    change_column_null :accounts, :regular_holiday, null: false
  end
end
