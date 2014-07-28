# Handles view functionality for the views of the participants and guests.
# These views are primarily for static, persisted content.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class StatusesController < ApplicationController
  before_action :set_status, only: [:edit, :update, :destroy]

  # GET /statuses/1
  def show
    respond_to do |format|
      format.js
    end
  end

  # GET /statuses/new
  def new
    @status = Status.new
  end

  # GET /statuses/1/edit
  def edit
  end

  # POST /statuses
  def create
    @status = Status.new(status_params)

    if @status.save
      redirect_to @status, notice: 'Status was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /statuses/1
  def update
    statuses = Status.find(:all, params => { id: params[:id] })
    @status = statuses[0]

    respond_to do |format|
      if @status.update_attributes(status_params)
        format.json { respond_with_bip @status }
      else
        format.json { respond_with_bip @status }
      end
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def status_params
    params.require(:status).permit(:id, :name, :description, :site_id, :participant_id)
  end

  def set_status
    user = User.find(params[:user_id])
    participants = Participant.find(:all, :params => {:external_id => user.external_id})
    participant = participants[0]
    statuses = Status.find(:all, :params => { :participant_id => participant.id })
    @status = statuses[0]
  end
end
