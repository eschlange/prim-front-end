# Model object for site images. Utilizes Paperclip to store image files.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class SitesUser < ActiveRecord::Base
  self.table_name = 'sites_users'
end