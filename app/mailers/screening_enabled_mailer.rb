# Author::  Eric Schlange (mailto:eric.schlange@northwestern.edu)
# License:: GPLv2

# Description goes here.
class ScreeningEnabledMailer < ActionMailer::Base
  default from: 'prim@northwestern.edu'

  def screening_enabled_email(user, site, request)
    @user = user
    @site = site
    @url_screener = "#{request.protocol}#{request.host_with_port}/sites/#{site.id}/participant_screenings"
    @url_confirmation_email = "#{request.protocol}#{request.host_with_port}/sites/#{site.id}/users/confirmation/new"
    mail(to: @user.email, subject: 'Screening is now available.')
  end
end