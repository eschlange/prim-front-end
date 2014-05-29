class CreateInterventions < ActiveRecord::Migration
  def change
    create_table :interventions do |t|
      t.string :name
      t.text :description
      t.references :site, index: true

      t.timestamps
    end
  end
end
