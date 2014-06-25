RailsAdmin.config do |config|

  config.authorize_with :cancan
  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  config.current_user_method { current_user }

  config.actions do
    dashboard # mandatory
    index # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.main_app_name = ['PRIM', 'Admin']

  config.excluded_models = [
    'UserConsent',
    'SiteImage',
    'IrbAcceptanceImage',
    'About',
    'Consent',
    'ContactUs',
    'Eligibility',
    'Funding',
    'Home',
    'Intervention',
    'Resource',
    'PrimEngine::Participant'
  ]

  config.model 'Site' do
    list do
      field :id
      field :name
      field :content do
        label 'Opening Line'
      end
    end
  end

  config.model 'User' do
    list do
      field :id
      field :email
      field :first_name
      field :last_name
      field :phone
      field :role_identifier, :enum do
    end
  end


end