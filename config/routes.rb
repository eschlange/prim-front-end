Macs::Application.routes.draw do
  resources :interventions
  resources :sites do
    get "pages/about"
    get "pages/home"
    get "pages/contact_us"
    get "pages/eligibility"
    get "pages/funding"
    get "pages/resources"
  end

  devise_for :users,
             :path => "sites/:site_id/users",
             :controllers => {:confirmations => "confirmations", :registrations => "registrations"}

  devise_scope :user do
    put "/confirm" => "confirmations#confirm"
  end

  root "pages#home"
  get "homes/index"
  get "index/index"
  get "about", to: "about#index"

end
