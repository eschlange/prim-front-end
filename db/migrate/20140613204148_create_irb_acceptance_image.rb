class CreateIrbAcceptanceImage < ActiveRecord::Migration
  def change
    create_table :irb_acceptance_images do |t|
      t.references :consent, index: true
      t.timestamps
    end
    add_attachment :irb_acceptance_images, :image
  end
end
