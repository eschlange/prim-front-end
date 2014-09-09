class InitializeSiteConsentFormVerions < ActiveRecord::Migration
  def change
    Site.all.each do |site|
      SiteConsentFormVersion.create(site: site)
    end
  end
end
