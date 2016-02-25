class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :device_type
      t.string :device_model
      t.date :start_date
      t.date :expiry_date

      t.timestamps null: false
    end
  end
end
