class AddSiteReferenceToConsents < ActiveRecord::Migration
  def change
    add_reference :consents, :site, index: true
  end
end
