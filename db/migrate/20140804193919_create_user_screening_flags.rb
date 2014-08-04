class CreateUserScreeningFlags < ActiveRecord::Migration
  def change
    create_table :user_screening_flags do |t|
      t.references :user, index: true
      t.references :site, index: true
      t.boolean :active
    end
  end
end
