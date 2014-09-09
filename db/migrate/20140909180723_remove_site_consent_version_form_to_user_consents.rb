class RemoveSiteConsentVersionFormToUserConsents < ActiveRecord::Migration
  def change
    remove_reference :user_consents, :site_consent_version_form, index: true
  end
end
