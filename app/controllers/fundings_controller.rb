# Handles CRUD functionality for the funding page of a site.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class FundingsController < ApplicationController
  before_action :set_funding, only: [:show, :edit, :update, :destroy]

  # GET /fundings
  def index
    @fundings = Funding.all
  end

  # GET /fundings/1
  def show
  end

  # GET /fundings/new
  def new
    @funding = Funding.new
  end

  # GET /fundings/1/edit
  def edit
  end

  # POST /fundings
  def create
    @funding = Funding.new(funding_params)

    if @funding.save
      redirect_to @funding, notice: 'Funding was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /fundings/1
  def update
    @funding = Funding.find params[:id]

    respond_to do |format|
      if @funding.update_attributes(funding_params)
        format.html { redirect_to(@funding, notice: 'funding page was successfully updated.') }
        format.json { respond_with_bip @funding }
      else
        format.html { render action: 'edit' }
        format.json { respond_with_bip @funding }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_funding
    @funding = Funding.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def funding_params
    params.require(:funding).permit(:title, :content)
  end
end
