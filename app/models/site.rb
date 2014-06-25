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
    Home.create(site_id: self.id, title: 'Home Title', content: 'Home tag line goes here.')
    Resource.create(site_id: self.id, title: 'Resources Title', content: 'Resources content goes here.')
    About.create(site_id: self.id, title: 'About Us Title', content: 'About us content goes here.')
    Consent.create(site_id: self.id, header: 'Consent Header Content', body: 'Consent body goes here.', footer: 'consent footer goes here.')
    ContactUs.create(site_id: self.id, title: 'Contact Us Title', content: 'Contact Us content goes here.')
    Eligibility.create(site_id: self.id, title: 'Eligibility Title', content: 'Eligibility content goes here.')
    Funding.create(site_id: self.id, title: 'Funding Title', content: 'Funding content goes here.')
    Intervention.create(site_id: self.id, name: 'Intervention Title', description: 'Intervention description goes here.')
  end
end
