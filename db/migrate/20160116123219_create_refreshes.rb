class CreateRefreshes < ActiveRecord::Migration
  def change
    create_table :refreshes do |t|
      t.string :device_name
      t.string :device_type
      t.string :device_model
      t.datetime :start_date
      t.datetime :expiry_date

      t.timestamps null: false
    end
  end
end
