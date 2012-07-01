Nightqueen::Application.routes.draw do
	
  devise_for :users, :controllers => {:registrations => 'registrations'}

  resources :authentications
  
  root to: 'home#index'
  
  namespace :admin do
    resources :venues
    #resources :users
    #resources :categories
    #resources :transport_packages
    #resources :service_packages
    #resources :advertisements
    #resources :settings                 
  end
  
  match '/auth/:provider/callback' => 'authentications#create'
    
    
end
