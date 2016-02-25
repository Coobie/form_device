class ChangeFieldsInTable < ActiveRecord::Migration
  def change
  	add_column(:searches, :expiry_date_min, :date)
  	add_column(:searches, :start_datae_min, :date)
  end
end
