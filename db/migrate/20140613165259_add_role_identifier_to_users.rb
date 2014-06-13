class AddRoleIdentifierToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role_identifier, :integer, default: 4
  end
end
