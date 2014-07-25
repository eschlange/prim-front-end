# Handles view functionality for the views of the participants and guests.
# These views are primarily for static, persisted content.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class ScreeningsController < ApplicationController
  before_action :set_screening, only: [:show, :edit, :update, :destroy]

  # GET /screenings/1
  def show
    respond_to do |format|
      format.js
    end
  end

  # GET /screenings/new
  def new
    @screening = Screening.new
  end

  # GET /screenings/1/edit
  def edit
  end

  # POST /screenings
  def create
    @screening = Screening.new(screening_params)

    if @screening.save
      redirect_to @screening, notice: 'Screening was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /screenings/1
  def update
    @screening = Screening.find params[:id]

    respond_to do |format|
      if @screening.update_attributes(screening_params)
        format.html { redirect_to(@screening, notice: 'screening page was successfully updated.') }
        format.json { respond_with_bip @screening }
      else
        format.html { render action: 'edit' }
        format.json { respond_with_bip @screening }
      end
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def screening_params
    params.require(:screening).permit(:name, :content, :about_id,
                                 :home_id, :contact_us_id, :eligibility_id,
                                 :funding_id, :resource_id, :intervention_id)
  end
end
