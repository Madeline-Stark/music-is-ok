Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/songs/oasis", to: "songs#oasis"
  get "/songs/:id", to: "songs#show", as: "song"
  get "/songs", to: "songs#index", as: "songs"
 
end
