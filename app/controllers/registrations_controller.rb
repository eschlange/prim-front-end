require 'rubygems'
require 'active_resource'

# Author::  Eric Schlange (mailto:eric.schlange@northwestern.edu)
# License:: GPLv2

# Registrations controller overwrites default Devise registration methods.
class RegistrationsController < Devise::RegistrationsController
  def create
    build_resource(sign_up_params)
    if resource.save
      predefinedUserCreation(resource)
      createConsentRecord(resource)
      @status = save_prim_participant(sign_up_params)
    else
      clean_up_passwords resource
      respond_with resource
    end
  end

  protected

  def after_inactive_sign_up_path_for(resource)
    '/sites/1/pages/home'
  end

  private

  def createConsentRecord(resource)
    consent = Consent.where(site_id: params[:site_id]).first
    consentRecord = UserConsent.new(
        user_id: resource.id,
        site_id: consent.site.id,
        consent_header: consent.header,
        consent_body: consent.body,
        consent_footer: consent.footer,
        irb_acceptance_image_url: consent.irb_acceptance_images.nil? ? consent.irb_acceptance_images.first.image.url : 'no IRB image exists for this site.')
    consentRecord.save
  end

  def predefinedUserCreation(resource)
    yield resource if block_given?
    if resource.active_for_authentication?
      set_flash_message :notice, :signed_up if is_flashing_format?
      sign_up(resource_name, resource)
      respond_with resource, location: after_sign_up_path_for(resource)
    else
      set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_flashing_format?
      expire_data_after_sign_in!
      respond_with resource, location: after_inactive_sign_up_path_for(resource)
    end
  end

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

  def save_prim_participant(sign_up_params)
    PrimEngine::Api::V1::ApiParticipant.create(
      email: sign_up_params[:email],
      first_name: sign_up_params[:first_name],
      last_name: sign_up_params[:last_name],
      phone: sign_up_params[:phone],
      date_of_birth: sign_up_params[:date_of_birth]
    )
  end
end