# Author::  Eric Schlange (mailto:eric.schlange@northwestern.edu)
# License:: GPLv2

# UserAdminController handles requests to update users, should only be accessible to super user or admins.
class UserAdminController < ApplicationController
  before_action :set_site, :authenticate_user!

  # GET /sites
  def index
    authorize! :manage, current_user.role_identifier
    # @users = User.all.order('created_at DESC')
    SitesUser.where("site_id: #{@site.id}")
    @users = User.joins(:sites_users).order(column_sort()).paginate(:page => params[:page], :per_page => 25)
    @users.each do |user|
      # BEGIN
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

    UserAdminAudit.create(user: current_user, site: @site, action: 'view user admin page')

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

  def column_sort
    @sort_column = params['sort']
    case params['sort']
      when 'id'
        'external_id ASC'
      when 'first_name'
        'first_name ASC'
      when 'phone'
        'phone ASC'
      when 'email'
        'email ASC'
      when 'last_name'
        'last_name ASC'
      else
        'created_at DESC'
    end
  end

  def send_phi_csv
    UserAdminAudit.create(user: current_user, site: @site, action: "PHI CSV export")

    send_data(
      @users.to_csv(only: [:first_name, :last_name, :email, :phone, :created_at, :future_contact, :role_identifier]),
      type: 'text/csv; charset=utf-8; header=present',
      filename: "participants-#{Time.now.strftime("%Y%m%d%H%M%S")}.csv")
  end

  def send_screening_csv
    UserAdminAudit.create(user: current_user, site: @site, action: "screening data CSV export")

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
    params.permit(:export_data, :page, :order, :sort)
  end
end
