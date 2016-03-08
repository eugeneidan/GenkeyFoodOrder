Rails.application.routes.draw do
 
  resources :orders

  get 'admin-dashboard', to: "dashboard#admin", as: "admin_dashboard"

  get 'dashboard', to: "dashboard#normal", as: "dashboard"

  get 'welcome', to: "dashboard#welcome", as: "welcome"

  devise_for :users, controllers: { registrations: "registrations" }

  resources :menus

  
  root 'dashboard#welcome'

 
end
