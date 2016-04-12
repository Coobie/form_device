class Addnew < ActiveRecord::Migration
  def change
    add_column :refreshes, :device_id, :integer
  end
end
