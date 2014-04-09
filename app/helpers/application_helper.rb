# Helper methods for the application.
# @author Eric Schlange <eric.schlange@northwestern.edu>
module ApplicationHelper
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
