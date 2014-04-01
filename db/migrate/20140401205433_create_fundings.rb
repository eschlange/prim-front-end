class CreateFundings < ActiveRecord::Migration
  def change
    create_table :fundings do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
