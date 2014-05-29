class CreateEligibilities < ActiveRecord::Migration
  def change
    create_table :eligibilities do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
