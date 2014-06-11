# Author::  Eric Schlange (mailto:eric.schlange@northwestern.edu)
# License:: GPLv2

# SiteImagesController handles requests to update or create new viewable images.
class SiteImagesController < ApplicationController
  before_action :set_site

  protect_from_forgery except: :create

  def show
  end

  def new
  end

  def create
    respond_to do |format|
      @site_image = SiteImage.new(site_image_params)
      @site_image.save
      format.html { redirect_to '/sites/' + @site.id.to_s + '/pages/home', notice: 'Image was successfully updated.' }
      format.js
      format.json { head :no_content }
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      @site_image = SiteImage.where(site_id: params[:site_id], position: params[:site_image][:position]).first
      @site_image.image = params[:site_image][:image]
      @site_image.save
      format.html { redirect_to '/sites/' + @site.id.to_s + '/pages/home', notice: 'Image was successfully updated.' }
      format.js
      format.json { head :no_content }
    end
  end

  private

  def site_image_params
    params.require(:site_image).permit(:image, :position, :site_id)
  end
end
