class CreatePointOfContacts < ActiveRecord::Migration
  def change
    create_table :point_of_contacts do |t|
      t.string :title
      t.string :name
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
