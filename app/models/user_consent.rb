class UserConsent < ActiveRecord::Base
  belongs_to :site
  belongs_to :user
  has_one :site_consent_form_version
end
