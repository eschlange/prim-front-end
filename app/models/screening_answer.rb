# Model for the screening questions.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class ScreeningAnswer < ActiveRecord::Base
  belongs_to :screening_question
end
