Rails.application.routes.draw do
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :songs, except: [:edit, :update]
  resources :genres, only: :show
  resources :artists do 
    resources :songs, only: [:index, :show, :new, :create]
  end

 
end
