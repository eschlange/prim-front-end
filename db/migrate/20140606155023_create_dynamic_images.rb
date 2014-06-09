class CreateDynamicImages < ActiveRecord::Migration
  def change
    create_table :dynamic_images do |t|
      t.references :site, index: true
      t.references :user, index: true

      t.string :name

      t.timestamps
    end
  end
end
