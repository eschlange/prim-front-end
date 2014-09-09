class InitializeSiteConsentFormVersionFieldOnUserConsent < ActiveRecord::Migration
  def change
    UserConsent.all.each do |consent|
      version = SiteConsentFormVersion.find_by(site_id: consent.site_id)
      consent.site_consent_form_version_id = version.id
      consent.save
    end
  end
end