class CreateSiteConsentFormVersion < ActiveRecord::Migration
  def change
    create_table :site_consent_form_versions do |t|
      t.references :site, index: true

      t.timestamps
    end
  end
end
