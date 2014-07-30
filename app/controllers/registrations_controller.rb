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
      site_id = createConsentRecord(resource)
      save_prim_participant(sign_up_params, resource, site_id)
      associate_site_with_user(resource, site_id)
      SitesUser.create(site_id: site_id, user_id: resource.id)
    else
      clean_up_passwords resource
      respond_with resource
    end
  end

  protected

  def after_inactive_sign_up_path_for(resource)
    site_user = SitesUser.find_by(user_id: resource.id)
    '/sites/' + params[:site_id] + '/pages/home'
  end

  private

  def associate_site_with_user(resource, site_id)
    SitesUser.create(user_id: resource.id, site_id: site_id)
  end

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
    consent.site.id
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

  def save_prim_participant(sign_up_params, resource, site_id)
    @participant = Participant.create
    Email.create(email: sign_up_params[:email], primary: true, participant_id: @participant.id)
    Phone.create(name: '', number: sign_up_params[:phone] , primary: true, participant_id: @participant.id)
    resource.external_id = @participant.external_id
    resource.save
    Status.create(name: 'Screening in Progress', description: '', participant_id: @participant.id, final: false, site_id: site_id)
    save_prim_participant_phi(sign_up_params, @participant.id)
  end

  def save_prim_participant_phi(sign_up_params, participant_id)
    puts params.inspect
    Address.create(
      street_1: params[:address][:street_1],
      city: params[:address][:city],
      state: params[:address][:state],
      zip: params[:address][:zip],
      primary: true,
      participant_id: participant_id)
  end

end