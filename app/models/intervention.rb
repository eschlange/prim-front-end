# Model for the intervention pages.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class Intervention < ActiveRecord::Base
  belongs_to :site
end
