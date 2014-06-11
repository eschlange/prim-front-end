# Handles CRUD functionality for the resources pages.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class ResourcesController < ApplicationController
  before_action :set_resource, only: [:show, :edit, :update, :destroy]

  # GET /resources
  def index
    @resources = Resource.all
  end

  # GET /resources/1
  def show
  end

  # GET /resources/new
  def new
    @resource = Resource.new
  end

  # GET /resources/1/edit
  def edit
  end

  # POST /resources
  def create
    @resource = Resource.new(resource_params)

    if @resource.save
      redirect_to @resource, notice: 'Resource was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /resources/1
  def update
    @resource = Resource.find params[:id]

    respond_to do |format|
      if @resource.update_attributes(resource_params)
        format.html { redirect_to(@resource, notice: 'Resource page was successfully updated.') }
        format.json { respond_with_bip @resource }
      else
        format.html { render action: 'edit' }
        format.json { respond_with_bip @resource }
      end
    end
  end

  # DELETE /resources/1
  def destroy
    @resource.destroy
    redirect_to resources_url, notice: 'Resource was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_resource
    @resource = Resource.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def resource_params
    params.require(:resource).permit(:title, :content)
  end
end
