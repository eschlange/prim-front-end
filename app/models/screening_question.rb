# Model for the screening questions.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class ScreeningQuestion < ActiveRecord::Base
  belongs_to :site
  has_many :screening_answers

  def question_type_enum
    [
      ['Text Field',    'TEXT_FIELD'],
      ['Text Area',     'TEXT_AREA'],
      ['Radio Button',  'RADIO_BUTTON'],
      ['Check Box',     'CHECK_BOX']
    ]
  end
end
