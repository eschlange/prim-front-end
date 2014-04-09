# Model for the contact us pages.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class ContactUs < ActiveRecord::Base
  belongs_to :site
end
