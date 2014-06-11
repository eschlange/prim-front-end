# Model object for site images. Utilizes Paperclip to store image files.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class SiteImage < ActiveRecord::Base
  belongs_to :site
  belongs_to :user

  validates :position, presence: true
  validates_uniqueness_of :position, scope: :site_id

  has_attached_file :image,
                    styles: { medium: '300x300>', thumb: '100x100>' },
                    default_url: ActionController::Base.helpers.asset_path(
                              'meds.jpg', digest: false)
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
