class AddRoleToDoctors < ActiveRecord::Migration
  def change
    add_column :doctors, :role, :integer, default: 0
  end
end
