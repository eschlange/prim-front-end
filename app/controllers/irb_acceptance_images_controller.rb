# Author::  Eric Schlange (mailto:eric.schlange@northwestern.edu)
# License:: GPLv2

# IrbAcceptanceImagesController handles requests to update or create new viewable images.
class IrbAcceptanceImagesController < ApplicationController
  before_action :set_site

  protect_from_forgery except: :create

  def show
  end

  def new
  end

  def create
    respond_to do |format|
      @irb_acceptance_image = IrbAcceptanceImage.new(irb_acceptance_image_params)
      @irb_acceptance_image.save
      format.html { redirect_to '/sites/' + @site.id.to_s + '/pages/home', notice: 'Image was successfully updated.' }
      format.js
      format.json { head :no_content }
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      @site_image = IrbAcceptanceImage.where(site_id: params[:irb_acceptance_id], position: params[:irb_acceptance_image][:position]).first
      @site_image.image = params[:irb_acceptance_image][:image]
      @site_image.save
      format.html { redirect_to '/sites/' + @site.id.to_s + '/pages/home', notice: 'Image was successfully updated.' }
      format.js
      format.json { head :no_content }
    end
  end

  private

  def irb_acceptance_image_params
    params.require(:irb_acceptance_image).permit(:image, :position, :site_id)
  end
end
