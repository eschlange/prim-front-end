class ChangeRoleIdToRoleIdentifierOnUsers < ActiveRecord::Migration
  def change
    remove_column :users, :role_id
    add_column :users, :role_identifier, :integer, default: 4
  end
end
