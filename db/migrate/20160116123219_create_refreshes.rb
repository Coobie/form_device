class CreateRefreshes < ActiveRecord::Migration
  def change
    create_table :refreshes do |t|
      t.string :device_name, default: 'Device Name'
      t.string :device_type, default: 'Device Type'
      t.string :device_model, default: 'Device Model'
      t.datetime :start_date
      t.datetime :expiry_date

      t.timestamps null: false
    end
  end
end
