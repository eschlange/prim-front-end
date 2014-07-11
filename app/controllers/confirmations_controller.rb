# Handles altered confirmation controller logic for devise users.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class ConfirmationsController < Devise::ConfirmationsController
  before_action :set_site

  def show
    @original_token = params[:confirmation_token]
    digested_token = Devise.token_generator.digest(self, :confirmation_token, params[:confirmation_token])
    self.resource = resource_class.find_by_confirmation_token(digested_token) if params[:confirmation_token].present?
    super if resource.nil? || resource.confirmed?
  end

  def confirm
    digested_token = Devise.token_generator.digest(self, :confirmation_token, params[resource_name][:confirmation_token])
    self.resource = resource_class.find_by_confirmation_token(digested_token) if params[resource_name][:confirmation_token].present?
    if !resource.nil? && resource.update_attributes(params[resource_name].except(:confirmation_token).permit(:email, :password, :password_confirmation)) && resource.password_match?
      self.resource = resource_class.confirm_by_token(params[resource_name][:confirmation_token])
      set_flash_message :notice, :confirmed
      sign_in_and_redirect(resource_name, resource)
    else
      render action: 'show'
    end
  end

  protected

  def sign_in_and_redirect(resource_or_scope, *args)
    options  = args.extract_options!
    scope    = Devise::Mapping.find_scope!(resource_or_scope)
    resource = args.last || resource_or_scope
    sign_in(scope, resource, options)
    redirect_to '/sites/' + @site.id.to_s + '/pages/home'
  end

  def after_confirmation_path_for(resource)
    site_user = SitesUser.find_by(user_id: resource.id)
    '/sites/' + site_user.site_id.to_s + '/pages/home'
  end

  def after_resending_confirmation_instructions_path_for(resource)
    '/sites/' + @site.id.to_s + '/pages/home'
  end
end