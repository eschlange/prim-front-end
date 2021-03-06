# Handles general controller logic and functions that
# are used by all child controllers.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class ApplicationController < ActionController::Base
  include UserHelper
  layout :template_layout

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_site

  before_filter :set_cache_buster

  def set_cache_buster
    response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
    response.headers["Pragma"] = "no-cache"
    response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_site
    if params[:site_id]
      @site = Site.find(params[:site_id])
    else
      @site = Site.find(1)
    end
  end

  #rescue_from CanCan::AccessDenied do |exception|
  #  render file: "#{Rails.root}/public/403.html", status: 403, layout: true, exception: exception
  #end

  # Use to redirect to the correct site after login.
  def after_sign_in_path_for(resource)
    puts resource.inspect
    site_user = SitesUser.find_by(user_id: resource.id)
    '/sites/' + site_user.site_id.to_s + '/pages/home'
  end

  # Use to redirect to the correct site after logout.
  def after_sign_out_path_for(resource)
    '/sites/' + params[:site_id] + '/pages/home'
  end

  protected

  def devise_parameter_sanitizer
    if resource_class == User
      ParameterSanitizer.new(User, :user, params)
    else
      super
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up).push(:id, :address, :dob, :street_1, :city, :state, :zip)
  end

  private

  def template_layout
    @site.template_name
  end
end