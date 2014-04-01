module UserHelper
  class ParameterSanitizer < Devise::ParameterSanitizer

    private
    def account_update
      default_params.permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :role_id)
    end
    def sign_up
      default_params.permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :role_id)
    end

  end
end