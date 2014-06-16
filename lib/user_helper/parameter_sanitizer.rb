module UserHelper
  # Helper used to permit several strong parameters that were
  # added to the default devise user model.
  # @author Eric Schlange <eric.schlange@northwestern.edu>
  class ParameterSanitizer < Devise::ParameterSanitizer
    private

    def account_update
      default_params.permit(:first_name,
                            :last_name,
                            :email,
                            :phone,
                            :password,
                            :password_confirmation,
                            :current_password,
                            :role_identifier,
                            :future_contact)
    end

    def sign_up
      default_params.permit(:first_name,
                            :last_name,
                            :email,
                            :phone,
                            :password,
                            :password_confirmation,
                            :current_password,
                            :role_identifier,
                            :future_contact)
    end
  end
end