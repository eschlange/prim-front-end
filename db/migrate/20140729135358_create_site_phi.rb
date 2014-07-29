class CreateSitePhi < ActiveRecord::Migration
  def change
    create_table :site_phis do |t|
      t.references :site, index: true
      t.string :type
      t.integer :position
      t.boolean :active
      t.boolean :required
    end
  end
end
