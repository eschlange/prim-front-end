class AddSiteConsentVersionFormToUserConsents < ActiveRecord::Migration
  def change
    add_reference :user_consents, :site_consent_version_form, index: true
  end
end
