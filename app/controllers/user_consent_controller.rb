# Author::  Eric Schlange (mailto:eric.schlange@northwestern.edu)
# License:: GPLv2

# UserConsentController handles requests to create and view user consent records.
class UserConsentController < ApplicationController
  before_action :set_site

  def show
    @user_consent = UserConsent.where(user_id: user_id, site_id: site_id)
    respond_to do |format|
      format.js
    end
  end

end
