# Author::  Eric Schlange (mailto:eric.schlange@northwestern.edu)
# License:: GPLv2

# UserAdminController handles requests to update users, should only be accessible to super user or admins.
class UserAdminController < ApplicationController
  before_action :set_site, :authenticate_user!
  # GET /sites
  def index
    authorize! :manage, current_user.role_identifier
    @users = User.all.order('created_at DESC')
    @users.each do |user|
      # begin
      if user.external_id
        begin
          participants = Participant.find(:all, :params => {:external_id => user.external_id})
          user.participant = participants[0]
          statuses = Status.find(:all, :params => { :participant_id => user.participant.id })
          user.status = statuses[0]
        rescue
          logger.info 'No status or participant could be associated with user id: ' + user.id.to_s
        end
      end
    end

    respond_to do |format|
      format.html
      format.csv do
        if user_admin_params[:export_data] == 'phi'
          send_phi_csv
        elsif user_admin_params[:export_data] == 'screening'
          send_screening_csv
        end
      end

    end
  end

  private

  def send_phi_csv
    send_data(
      @users.to_csv(only: [:first_name, :last_name, :email, :phone, :created_at, :future_contact, :role_identifier]),
      type: 'text/csv; charset=utf-8; header=present',
      filename: "participants-#{Time.now.strftime("%Y%m%d%H%M%S")}.csv")
  end

  def send_screening_csv
    screenings = Screening.all
    column_names = ["site_id", "question", "answer", "external_id"]

    send_data(CSV.generate do |csv|
      csv << [column_names]
      screenings.each do |screening|
        if screening.participant_id && !screening.participant_id.blank?
          participant = Participant.find(:all, :params => {:participant_id => screening.participant_id})
          screening_answer_map = screening.attributes.values_at(*column_names)
          screening_answer_map[3] = participant[0].external_id
          csv << screening_answer_map
        end
      end
    end)
  end

  def user_admin_params
    params.permit(:export_data)
  end
end
