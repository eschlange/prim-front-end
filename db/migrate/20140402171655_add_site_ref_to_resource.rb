class AddSiteRefToResource < ActiveRecord::Migration
  def change
    add_reference :resources, :site, index: true
  end
end
