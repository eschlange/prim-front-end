class PointOfContactsController < ApplicationController

  def index
  end

  def reload_header
    render partial: 'pages/' + @site.template_name + '/shared/header'
  end

  # GET /point_of_contacts/1
  def show
  end

  # GET /point_of_contacts/new
  def new
    @point_of_contact = PointOfContact.new
  end

  # GET /abouts/1/edit
  def edit
  end

  # POST /point_of_contacts
  def create
    @point_of_contact = PointOfContact.new(point_of_contact_params)

    if @point_of_contact.save
      redirect_to @point_of_contact, notice: 'Contact us was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /point_of_contacts/1
  def update
    @point_of_contact = PointOfContact.find params[:id]

    respond_to do |format|
      if @point_of_contact.update_attributes(point_of_contact_params)
        format.html { redirect_to(@point_of_contact, notice: 'Point of contact was successfully updated.') }
        format.json { respond_with_bip @point_of_contact }
      else
        format.html { render action: 'edit' }
        format.json { respond_with_bip @point_of_contact }
      end
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def point_of_contact_params
    params.require(:point_of_contact).permit(:title, :name, :site_id, :street_address, :city, :zip, :phone, :email)
  end

end
