# Author::  Eric Schlange (mailto:eric.schlange@northwestern.edu)
# License:: GPLv2

# UserAdminController handles requests to update users, should only be accessible to super user or admins.
class UserAdminController < ApplicationController
  before_action :set_site, :authenticate_user!
  # GET /sites
  def index
    authorize! :manage, current_user.role_identifier
    @users = User.all

    respond_to do |format|
      format.html
      format.csv
      filename = "participants-#{Time.now.strftime("%Y%m%d%H%M%S")}.csv"
      send_admin_csv(filename)
    end
  end

  private

  def send_admin_csv(filename)
    send_data(
      @users.to_csv(only: [:first_name, :last_name, :email, :phone, :created_at, :future_contact, :role_identifier]),
      type: 'text/csv; charset=utf-8; header=present',
      filename: filename)
  end
end
