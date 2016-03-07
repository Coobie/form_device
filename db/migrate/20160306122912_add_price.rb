class AddPrice < ActiveRecord::Migration
  def change
    add_column(:refreshes, :original_price, :decimal)
  end
end
