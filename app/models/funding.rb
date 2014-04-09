# Model for the funding us pages.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class Funding < ActiveRecord::Base
  belongs_to :site
end
