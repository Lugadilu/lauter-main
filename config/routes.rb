Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index", as: "home"
  #root "projects#index", as: "projects"
   
   

   namespace :dashboard do
    get '/projects', to: 'projects#index', as: 'projects'
    resources :projects, param: :slug
    root :to => 'dashboard#index', as: 'root'
   end
end
