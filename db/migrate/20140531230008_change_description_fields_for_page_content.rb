class ChangeDescriptionFieldsForPageContent < ActiveRecord::Migration
  def change
    change_column :contact_us, :content, :text
    change_column :fundings, :content, :text
    change_column :resources, :content, :text
    change_column :eligibilities, :content, :text
    change_column :sites, :content, :text
    change_column :interventions, :description, :text
    change_column :abouts, :content, :text
    change_column :homes, :content, :text
  end
end
