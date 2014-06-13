# Handles CRUD functionality for sites management.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class SitesController < ApplicationController
  before_action :set_site, only: [:show, :edit, :update, :destroy]

  # GET /sites
  def index
    @sites = Site.all
  end

  # GET /sites/1
  def show
  end

  # GET /sites/new
  def new
    @site = Site.new
  end

  # GET /sites/1/edit
  def edit
  end

  # POST /sites
  def create
    @site = Site.new(site_params)

    if @site.save
      redirect_to @site, notice: 'Site was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /sites/1
  def update
    @site = Site.find params[:id]

    respond_to do |format|
      if @site.update_attributes(site_params)
        format.html { redirect_to(@site, notice: 'site page was successfully updated.') }
        format.json { respond_with_bip @site }
      else
        format.html { render action: 'edit' }
        format.json { respond_with_bip @site }
      end
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def site_params
    params.require(:site).permit(:name, :content, :about_id,
                                 :home_id, :contact_us_id, :eligibility_id,
                                 :funding_id, :resource_id, :intervention_id)
  end
end
