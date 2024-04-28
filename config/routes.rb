Rails.application.routes.draw do
  resources :albums do
    resources :songs, only: [:index, :show]
  end
  resources :songs, only: [:index]  # This allows a top-level 'songs' route
  root "home#index"
end
