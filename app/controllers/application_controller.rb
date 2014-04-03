class ApplicationController < ActionController::Base
  include UserHelper

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_site, :configure_permitted_parameters, if: :devise_controller?

  def current_page(page_name)
    @current_page = page_name
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_site
    @site = Site.find(params[:site_id])
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
    devise_parameter_sanitizer.for(:sign_up) << :id
  end

end
