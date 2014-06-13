# Handles CRUD functionality for the 'contact us' page of a site.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class ContactUsController < ApplicationController
  before_action :set_contact_us, only: [:show, :edit, :update, :destroy]

  # GET /contact_us
  def index
    @contact_us = ContactUs.all
  end

  # GET /contact_us/1
  def show
  end

  # GET /contact_us/new
  def new
    @contact_us = ContactUs.new
  end

  # GET /contact_us/1/edit
  def edit
  end

  # POST /contact_us
  def create
    @contact_us = ContactUs.new(contact_us_params)

    if @contact_us.save
      redirect_to @contact_us,
                  notice: 'Contact us was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /contact_us/1
  def update
    @contact_us = ContactUs.find params[:id]

    respond_to do |format|
      if @contact_us.update_attributes(contact_us_params)
        format.html { redirect_to(@contact_us, notice: 'About page was successfully updated.') }
        format.json { respond_with_bip @contact_us }
      else
        format.html { render action: 'edit' }
        format.json { respond_with_bip @contact_us }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_contact_us
    @contact_us = ContactUs.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def contact_us_params
    params.require(:contact_us).permit(:title, :content)
  end
end
