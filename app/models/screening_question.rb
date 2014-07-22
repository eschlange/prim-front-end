# Model for the screening questions.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class ScreeningQuestion < ActiveRecord::Base
  belongs_to :site
end
