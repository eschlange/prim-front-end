# Model for the site consent form version.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class SiteConsentFormVersion < ActiveRecord::Base
  belongs_to :site
  belongs_to :user_consent
end
