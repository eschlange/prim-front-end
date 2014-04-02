# Author::  Eric Schlange (mailto:eric.schlange at northwestern.edu)
# License:: GPLv2

# Controller used for the homes splash.

class HomesController < ApplicationController
  before_action :set_homes, only: [:show, :edit, :update, :destroy]
  layout "application"

  PAGE_NAME = "home"

  def index
    current_page(PAGE_NAME)
  end

  def reload_header
    render :partial => "shared/header"
  end

  # GET /homes/1
  def show
  end

  # GET /homes/new
  def new
    @homes = Home.new
  end

  # GET /homes/1/edit
  def edit
  end

  # POST /homes
  def create
    @homes = Home.new(contact_u_params)

    if @homessave
      redirect_to @homes, notice: 'Contact us was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /homes/1
  def update
    if @homes.update(homes_params)
      redirect_to @homes, notice: 'Contact us was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /homes/1
  def destroy
    @homes.destroy
    redirect_to homes_url, notice: 'Contact us was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_homes
    @homes = Home.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def homes_params
    params.require(:homes).permit(:title, :content)
  end

end
