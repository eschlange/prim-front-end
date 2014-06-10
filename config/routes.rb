Macs::Application.routes.draw do
  resources :interventions
  resources :sites do
    get "pages/about"
    get "pages/home"
    get "pages/contact_us"
    get "pages/eligibility"
    get "pages/funding"
    get "pages/resources"
    resources :site_images, param: :position
  end
  resources :users, only: [:edit, :update]
  resources :about
  resources :homes
  resources :contact_us
  resources :eligibilities
  resources :fundings
  resources :resources
  resources :intervention

  devise_for :users,
             :path => "sites/:site_id/users",
             :controllers => {:confirmations => "confirmations", :registrations => "registrations"}

  devise_scope :user do
    put "/confirm" => "confirmations#confirm"
  end

  root "pages#home"
  get "user_admin", to: "user_admin#index"
  get "homes/index"
  get "index/index"
  get "about", to: "about#index"
  get "site_image/update" => 'pages#image_update', :as => :site_image_update
end
