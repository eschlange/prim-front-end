class CreateJoinTableForUsersAndSites < ActiveRecord::Migration
  def change
    create_join_table :users, :sites
  end
end
