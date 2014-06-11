# Author::  Eric Schlange (mailto:eric.schlange@northwestern.edu)
# License:: GPLv2

# Registrations controller overwrites default Devise registration methods.
class RegistrationsController < Devise::RegistrationsController
  protected

  def after_inactive_sign_up_path_for(resource)
    '/sites/1/pages/home'
  end

  private

  # Helper for use in before_filters where no authentication is required.
  #
  # Example:
  #   before_filter :require_no_authentication, only: :new
  def require_no_authentication
    assert_is_devise_resource!
    return unless is_navigational_format?
    no_input = devise_mapping.no_input_strategies

    authenticated = if no_input.present?
                      args = no_input.dup.push scope: resource_name
                      warden.authenticate?(*args)
                    else
                      warden.authenticated?(resource_name)
                    end

    redirect_if_already_signed_in_and_not_content_manager(authenticated)
  end

  def redirect_if_already_signed_in_and_not_content_manager(authenticated)
    if authenticated && (current_user.nil? || !current_user.at_least_a_content_manager?)
      render file: "#{Rails.root}/public/403.html", status: 403, layout: true
    end
  end
end