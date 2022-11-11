Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  resources :users do 
    resources :artworks, only: [:index]
    resources :comments, only: [:index]
  
  end 
  
  resources :artworks, except: [:index]
  resources :artwork_shares, only: [:create, :destroy]
  resources :comments, only: [:create, :destroy]


end
