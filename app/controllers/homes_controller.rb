# Handles CRUD functionality for the home page of a site.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class HomesController < ApplicationController
  before_action :set_homes, only: [:show, :edit, :update, :destroy]
  layout 'application'

  PAGE_NAME = 'home'

  def index
    current_page(PAGE_NAME)
  end

  def reload_header
    render partial: 'pages/' + @site.template_name + '/shared/header'
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
    @homes = Home.new(homes_params)

    if @homes.save
      redirect_to @homes, notice: 'Contact us was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /homes/1
  def update
    @home = Home.find params[:id]

    respond_to do |format|
      if @home.update_attributes(homes_params)
        format.html { redirect_to(@home, notice: 'home page was successfully updated.') }
        format.json { respond_with_bip @home }
      else
        format.html { render action: 'edit' }
        format.json { respond_with_bip @home }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_homes
    @homes = Home.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def homes_params
    params.require(:home).permit(:title, :content)
  end
end
