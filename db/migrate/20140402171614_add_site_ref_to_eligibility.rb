class AddSiteRefToEligibility < ActiveRecord::Migration
  def change
    add_reference :eligibilities, :site, index: true
  end
end
