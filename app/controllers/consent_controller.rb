class ConsentController < ApplicationController
  before_action :set_consent, only: [:show, :edit, :update, :destroy]

  # GET /consent
  def index
    @consent = Consent.all
  end

  # GET /consent/1
  def show
  end

  # GET /consent/new
  def new
    @consent = Consent.new
  end

  # GET /consent/1/edit
  def edit
  end

  # POST /consent
  def create
    @consent = Consent.new(consent_params)

    if @consent.save
      redirect_to @consent,
                  notice: 'Contact us was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /consent/1
  def update
    @consent = Consent.find params[:id]

    respond_to do |format|
      if @consent.update_attributes(consent_params)
        format.html { redirect_to(@consent, notice: 'About page was successfully updated.') }
        format.json { respond_with_bip @consent }
      else
        format.html { render action: 'edit' }
        format.json { respond_with_bip @consent }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_consent
    @consent = Consent.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def consent_params
    params.require(:consent).permit(:header, :body, :footer)
  end
end
