class SiteImagesController < ApplicationController
  before_action :set_site

  protect_from_forgery :except => :create

  def show
  end

  def new
  end

  def create
    respond_to do |format|
      @site_image = SiteImage.new (site_image_params)
      @site_image.save
      format.html { redirect_to '/sites/' + @site.id.to_s + '/pages/home', notice: 'Image was successfully updated.' }
      format.json { head :no_content }
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      @site_image = SiteImage.find_by site_id: params[:site_id], position: params[:position]
      @site_image.update(image: params[:site_image][:image])
      format.html { redirect_to '/sites/' + @site.id.to_s + '/pages/home', notice: 'Image was successfully updated.' }
      format.json { head :no_content }
    end
  end

  private

  def site_image_params
    params.require(:site_image).permit(:image, :position, :site_id, :id)
  end
end
