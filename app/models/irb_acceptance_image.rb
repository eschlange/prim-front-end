# Model object for irb acceptance images. Utilizes Paperclip to store image files.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class IrbAcceptanceImage < ActiveRecord::Base
  belongs_to :consent
  belongs_to :user

  has_attached_file :image,
                    styles: { medium: '300x300>', thumb: '100x100>' },
                    default_url: ActionController::Base.helpers.asset_path(
                              'irb_placeholder_image.png', digest: false),
                    keep_old_files: true
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
