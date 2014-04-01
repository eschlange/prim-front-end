class ContactUsController < ApplicationController
  before_action :set_contact_u, only: [:show, :edit, :update, :destroy]

  # GET /contact_us
  def index
    @contact_us = ContactU.all
  end

  # GET /contact_us/1
  def show
  end

  # GET /contact_us/new
  def new
    @contact_u = ContactU.new
  end

  # GET /contact_us/1/edit
  def edit
  end

  # POST /contact_us
  def create
    @contact_u = ContactU.new(contact_u_params)

    if @contact_u.save
      redirect_to @contact_u, notice: 'Contact u was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /contact_us/1
  def update
    if @contact_u.update(contact_u_params)
      redirect_to @contact_u, notice: 'Contact u was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /contact_us/1
  def destroy
    @contact_u.destroy
    redirect_to contact_us_url, notice: 'Contact u was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_u
      @contact_u = ContactU.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def contact_u_params
      params.require(:contact_u).permit(:title, :content)
    end
end
