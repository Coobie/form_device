class Fixcolumn < ActiveRecord::Migration
  def change
    rename_column :refreshes, :device_id, :user_id
  end
end
