class AddRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
  end
end


class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :integer
  end
end



