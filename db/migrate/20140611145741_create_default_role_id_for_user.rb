class CreateDefaultRoleIdForUser < ActiveRecord::Migration
  def change
    change_column :users, :role_id, :integer, :default => 4
  end
end
