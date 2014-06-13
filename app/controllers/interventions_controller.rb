# Handles CRUD functionality for the interventions page of a site. This page
# will likely be used only by content managers or admins.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class InterventionsController < ApplicationController
  before_action :set_intervention, only: [:show, :edit, :update, :destroy]

  # GET /interventions
  def index
    @interventions = Intervention.all
  end

  # GET /interventions/1
  def show
  end

  # GET /interventions/new
  def new
    @intervention = Intervention.new
  end

  # GET /interventions/1/edit
  def edit
  end

  # POST /interventions
  def create
    @intervention = Intervention.new(intervention_params)

    if @intervention.save
      redirect_to @intervention,
                  notice: 'Intervention was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /interventions/1
  def update
    @intervention = Intervention.find params[:id]

    respond_to do |format|
      if @intervention.update_attributes(intervention_params)
        format.html { redirect_to(@intervention, notice: 'Intervention page was successfully updated.') }
        format.json { respond_with_bip @intervention }
      else
        format.html { render action: 'edit' }
        format.json { respond_with_bip @intervention }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_intervention
    @intervention = Intervention.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def intervention_params
    params.require(:intervention).permit(:name, :description, :site_id)
  end
end
