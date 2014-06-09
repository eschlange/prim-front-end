class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :site_images, :name, :position
  end
end
