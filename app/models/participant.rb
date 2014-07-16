require 'active_resource'

class Participant < ActiveResource::Base
  self.site = Rails.application.config.papi_url
end

