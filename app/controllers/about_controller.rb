class AboutController < ApplicationController
  layout "application"

  PAGE_NAME = "about"

  def index
    current_page(PAGE_NAME)
  end

  def reload_header
    render :partial => "shared/header"
  end

  # GET /abouts/1
  def show
  end

  # GET /abouts/new
  def new
    @abouts = About.new
  end

  # GET /abouts/1/edit
  def edit
  end

  # POST /abouts
  def create
    @abouts = About.new(contact_u_params)

    if @aboutssave
      redirect_to @abouts, notice: 'Contact us was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /abouts/1
  def update
    if @abouts.update(abouts_params)
      redirect_to @abouts, notice: 'Contact us was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /abouts/1
  def destroy
    @abouts.destroy
    redirect_to abouts_url, notice: 'Contact us was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_abouts
    @site = Site.find(params[:id])
    if @site.nil?
      @abouts = About.find(params[:id])
    else
      @abouts = @site.about
    end
  end

  # Only allow a trusted parameter "white list" through.
  def abouts_params
    params.require(:abouts).permit(:title, :content)
  end
  
end
