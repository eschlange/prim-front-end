PrimFrontEnd::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  ## START Resources
  resources :interventions
  resources :sites do
    get "pages/home"
    resources :site_images, param: :position
    resources :irb_acceptance_images
  end
  resources :users, only: [:edit, :update]
  resources :about
  resources :homes
  resources :contact_us
  resources :eligibilities
  resources :fundings
  resources :resources
  resources :intervention
  resources :consent
  resources :point_of_contacts
  ## END Resources

  ## START Devise routes configuration
  devise_for :users,
             :path => "sites/:site_id/users",
             :controllers => { confirmations: "confirmations", registrations: "registrations"}

  devise_scope :user do
    put "/confirm" => "confirmations#confirm"
    post "/confirm" => "confirmations#create"
  end
  ## END Devise routes configuration

  ## START Single page or ajax routes
  root "pages#home"
  get "user_admin", to: "user_admin#index"
  get "homes/index"
  get "index/index"
  get "about", to: "about#index"
  get "sites/:site_id/participant_screenings", to: "participant_screenings#index"
  get '/sites/:sites_id/user/:user_id/toggle_screening', to: 'user_screening_flags#update', as: 'toggle_screening'
  post 'sites/:site_id/participant_screenings', to: 'participant_screenings#create'
  post '/statuses' => 'statuses#update'
  ## END Single page routes

  ## START Modal routes
  get "site_image/update" => 'pages#image_update', as: :site_image_update
  get "irb_acceptance_image/update" => 'pages#irb_acceptance_image_update', as: :irb_acceptance_image_update
  get "user_consent/show" => 'pages#user_consent_view', as: :user_consent_view
  get "phi/show" => 'pages#phi_view', as: :phi
  get "screenings/show" => 'pages#screening_view', as: :screening
  get "statuses/show" => 'pages#status_view', as: :status
  ## END Modal routes
end
