class AddInitialConsents < ActiveRecord::Migration
  def change
    Site.all.each do |site|
      if !site.consent
        Consent.create(site_id: site.id, header: 'Consent Header', body: 'Consent body', footer: 'Consent footer')
      end
    end
  end
end
