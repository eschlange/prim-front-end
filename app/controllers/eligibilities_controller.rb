# Handles CRUD functionality for the eligibility page of a site.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class EligibilitiesController < ApplicationController
  before_action :set_eligibility, only: [:show, :edit, :update, :destroy]

  # GET /eligibilities
  def index
    @eligibilities = Eligibility.all
  end

  # GET /eligibilities/1
  def show
  end

  # GET /eligibilities/new
  def new
    @eligibility = Eligibility.new
  end

  # GET /eligibilities/1/edit
  def edit
  end

  # POST /eligibilities
  def create
    @eligibility = Eligibility.new(eligibility_params)

    if @eligibility.save
      redirect_to @eligibility, notice: 'Eligibility was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /eligibilities/1
  def update
    if @eligibility.update(eligibility_params)
      redirect_to @eligibility, notice: 'Eligibility was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /eligibilities/1
  def destroy
    @eligibility.destroy
    redirect_to eligibilities_url, notice: 'Eligibility was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eligibility
      @eligibility = Eligibility.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def eligibility_params
      params.require(:eligibility).permit(:title, :content)
    end
end
