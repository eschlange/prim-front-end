# Model for user roles.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class Role < ActiveRecord::Base
  belongs_to :user
end
