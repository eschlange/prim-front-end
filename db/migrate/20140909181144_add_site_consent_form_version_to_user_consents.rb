class AddSiteConsentFormVersionToUserConsents < ActiveRecord::Migration
  def change
    add_reference :user_consents, :site_consent_form_version, index: true
  end
end
