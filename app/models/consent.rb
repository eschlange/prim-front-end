class Consent < ActiveRecord::Base
  belongs_to :site
  has_many :irb_acceptance_images
end
