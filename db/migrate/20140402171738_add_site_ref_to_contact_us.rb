class AddSiteRefToContactUs < ActiveRecord::Migration
  def change
    add_reference :contact_us, :site, index: true
  end
end
