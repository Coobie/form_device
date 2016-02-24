class ChangeDateFormatInMyTable < ActiveRecord::Migration
  def change
  	change_column(:refreshes, :expiry_date, :date)
  	change_column(:refreshes, :start_date, :date)
  end
end
