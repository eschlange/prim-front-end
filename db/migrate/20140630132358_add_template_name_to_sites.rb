class AddTemplateNameToSites < ActiveRecord::Migration
  def change
    add_column :sites, :template_name, :string
  end
end
