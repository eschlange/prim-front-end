class RenameDynamicImageToSiteImage < ActiveRecord::Migration
  def change
    rename_table :dynamic_images, :site_images
  end
end
