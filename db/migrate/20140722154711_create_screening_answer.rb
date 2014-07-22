class CreateScreeningAnswer < ActiveRecord::Migration
  def change
    create_table :screening_answers do |t|
      t.references :screening_question, index: true
      t.string :value
      t.integer :position
      t.boolean :active
    end
  end
end
