class CreateEligibilities < ActiveRecord::Migration
  def change
    create_table :eligibilities do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
