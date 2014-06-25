# Model for sites.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class Site < ActiveRecord::Base
  after_create  :create_default_site_content
  
  has_one :about
  has_one :home
  has_one :contact_us
  has_one :eligibility
  has_one :funding
  has_one :resource
  has_one :intervention
  has_one :consent
  has_many :site_images
  has_many :user_consents
  
  def create_default_site_content
    Home.create(site_id: self.id)
    Resource.create(site_id: self.id)
    About.create(site_id: self.id)
    Consent.create(site_id: self.id)
    ContactUs.create(site_id: self.id)
    Eligibility.create(site_id: self.id)
    Funding.create(site_id: self.id)
    Intervention.create(site_id: self.id)
  end
end
