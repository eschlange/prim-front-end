# Model for the resource pages.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class Resource < ActiveRecord::Base
  belongs_to :site
end
