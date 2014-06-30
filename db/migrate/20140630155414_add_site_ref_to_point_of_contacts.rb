class AddSiteRefToPointOfContacts < ActiveRecord::Migration
  def change
    add_reference :point_of_contacts, :site, index: true
  end
end
