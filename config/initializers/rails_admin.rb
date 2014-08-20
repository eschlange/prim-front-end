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
    'PointOfContact',
    'PrimEngine::Participant',
    'SitesUser',
    'UserScreeningFlag'
  ]

  config.model 'Site' do
    list do
      field :id
      field :name
      field :content do
        label 'Opening Line'
      end
      field :template_name do
        label 'Template'
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
      field :role_identifier
    end
  end

  config.model 'ScreeningQuestion' do
    edit do
      field :question_type do
        label 'Question Type'
      end
      field :question_value
      field :position
      field :active
    end
  end


end
