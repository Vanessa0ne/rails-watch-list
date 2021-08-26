Rails.application.routes.draw do
  root to: "lists#index"
  resources :lists do
  resources :movies
  resources :bookmarks, only: %i[new create]

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 end
 resources :bookmarks, only: :destroy
end
