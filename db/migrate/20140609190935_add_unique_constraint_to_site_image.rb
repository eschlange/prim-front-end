class AddUniqueConstraintToSiteImage < ActiveRecord::Migration
  def change
    add_index :site_images, [:site_id, :position], :unique => true
  end
end
