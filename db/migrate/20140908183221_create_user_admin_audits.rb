class CreateUserAdminAudits < ActiveRecord::Migration
  def change
    create_table :user_admin_audits do |t|
      t.references :user, index: true
      t.references :site, index: true
      t.string :action

      t.timestamps
    end
  end
end
