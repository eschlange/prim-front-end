# Model for the about pages.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class About < ActiveRecord::Base
  belongs_to :site

  rails_admin do
    configure :site do
      label 'Belongs to: '
    end
  end
end
