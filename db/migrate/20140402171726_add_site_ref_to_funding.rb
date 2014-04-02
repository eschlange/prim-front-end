class AddSiteRefToFunding < ActiveRecord::Migration
  def change
    add_reference :fundings, :site, index: true
  end
end
