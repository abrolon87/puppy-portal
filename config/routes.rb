Rails.application.routes.draw do
  root "sessions#home"

  resources :cues
  resources :puppies
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
