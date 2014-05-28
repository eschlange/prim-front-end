# Handles view functionality for the views of the participants and guests.
# These views are primarily for static, persisted content.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class PagesController < ApplicationController
  before_action :set_site, :set_current_page
  def about
    @about = @site.about
  end

  def home
    @home = @site.home
    @about = @site.about
    @eligibility = @site.eligibility
  end

  def contact_us
    @contact_us = @site.contact_us
  end

  def eligibility
    @eligibility = @site.eligibility
  end

  def funding
    @funding = @site.funding
  end

  def resources
    @resources = @site.resource
  end

  private

  def set_current_page
    current_page("home")
  end
end
