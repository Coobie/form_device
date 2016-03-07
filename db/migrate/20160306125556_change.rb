class Change < ActiveRecord::Migration
  def change
    change_column(:refreshes, :original_price, :decimal, :precision => 10, :scale => 2)
  end
end
