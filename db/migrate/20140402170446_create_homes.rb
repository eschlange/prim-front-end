class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :title
      t.text :content
      t.references :site, index: true

      t.timestamps
    end
  end
end
