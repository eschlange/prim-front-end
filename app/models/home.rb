# Model for the home pages.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class Home < ActiveRecord::Base
  belongs_to :site
end
