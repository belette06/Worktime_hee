Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root 'pages#home'
 
  devise_for :users 
   
 
  resources :weektimes do
  resources :worktimes 
  end
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
