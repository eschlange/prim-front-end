class AddDynamicImageAttachmentFields < ActiveRecord::Migration
  def change
    add_attachment :dynamic_images, :image
  end
end