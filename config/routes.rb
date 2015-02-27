Rails.application.routes.draw do

  get 'ingredients/new'

root "drinks#index"

resources :drinks
resources :shelves
resources :ingredients, only: [:new, :create]

end
