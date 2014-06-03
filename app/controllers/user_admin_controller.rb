class UserAdminController < ApplicationController
  before_action :set_site

  # GET /sites
  def index
    @users = User.all
    @roles = Role.all

    respond_to do |format|
      format.html
      format.csv {
        filename = "participants-#{Time.now.strftime("%Y%m%d%H%M%S")}.csv"
        send_data(
          @users.to_csv(:only => [:first_name, :last_name, :email, :phone, :created_at, :future_contact, :role_id]),
          :type => "text/csv; charset=utf-8; header=present",
          :filename => filename)
      }
    end
  end

end
