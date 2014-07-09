# Model for sites.
# @author Eric Schlange <eric.schlange@northwestern.edu>
require 'yaml'

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
  has_one :point_of_contact
  has_many :site_images
  has_many :user_consents
  
  def create_default_site_content
    default_hash = YAML.load(File.read(File.expand_path('../../../lib/template_structured_content/' + self.template_name + '_default_content.yml',__FILE__)))

    Home.create(site_id: self.id, title: 'Home Title', content: default_hash['home'])
    Resource.create(site_id: self.id, title: 'Resources', content: default_hash['resource'])
    About.create(site_id: self.id, title: 'About Us', content: default_hash['about'])
    Consent.create(site_id: self.id, header: default_hash['consent']['header'], body: default_hash['consent']['body'], footer: default_hash['consent']['footer'])
    ContactUs.create(site_id: self.id, title: 'Contact Us', content: default_hash['contact_us'])
    Eligibility.create(site_id: self.id, title: 'Eligibility', content: default_hash['eligibility'])
    Funding.create(site_id: self.id, title: 'Funding', content: default_hash['funding'])
    Intervention.create(site_id: self.id, name: 'Intervention', description: default_hash['intervention'])
    PointOfContact.create(site_id: self.id, title: 'title', name: 'name', street_address: 'street address', city: 'city', state: 'state', zip: 'zip', email: 'email')
  end

  def template_name_enum
    [ ['SimpleMap', 'simplemap'], ['Bootstagram', 'bootstagram'], ['Tempus', 'tempus'] ]
  end
end
