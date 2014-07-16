require 'active_resource'

# Author::  Eric Schlange (mailto:eric.schlange@northwestern.edu)
# License:: GPLv2

# Description goes here.
class HealthInsuranceBeneficiaryNumber < ActiveResource::Base
  self.site = Rails.application.config.papi_url
  self.prefix = '/participant/:external_id'
end