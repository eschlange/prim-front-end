# Handles toggling of user screening status.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class UserScreeningFlagsController < ApplicationController
  before_action :set_user_screening_flag

  # GET /statuses/new
  def new
    @user_screening_flag = UserScreeningFlag.new
  end

  # GET /statuses/1/edit
  def edit
  end

  # POST /statuses
  def create
    @user_screening_flag = UserScreeningFlag.new(user_screening_flag_params)
    if @user_screening_flag.save
      redirect_to @status, notice: 'Status was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /statuses/1
  def update
    @user_screening_flag = UserScreeningFlag.find_or_create_by(user_id: params[:user_id], site_id: params[:sites_id])
    @user_screening_flag.active = !@user_screening_flag.active
    @user_screening_flag.save

    if @user_screening_flag
      ScreeningEnabledMailer.screening_enabled_email(User.find(params[:user_id]), Site.find(params[:sites_id]), request).deliver
    end

    render nothing: true
  end

  private

  # Only allow a trusted parameter "white list" through.
  def user_screening_flag_params
    params.permit(:sites_id, :user_id)
  end

  def set_user_screening_flag
    flag = UserScreeningFlag.where(user_id: params[:user_id], site_id: params[:site_id])
  end
end
