class CreateScreeningQuestion < ActiveRecord::Migration
  def change
    create_table :screening_questions do |t|
      t.references :site, index: true
      t.string :type
      t.string :value
      t.integer :position
      t.boolean :active
    end
  end
end
