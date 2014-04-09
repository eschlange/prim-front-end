# Model for sites.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class Site < ActiveRecord::Base
  has_one :about
  has_one :home
  has_one :contact_us
  has_one :eligibility
  has_one :funding
  has_one :resource
end
