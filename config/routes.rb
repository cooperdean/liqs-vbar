Rails.application.routes.draw do

  get 'ingredients/new'

root "drinks#index"


resources :drinks
resources :shelves
resources :ingredients, only: [:new, :create]

get '/shelves/:shelf_id/add_ingredient/:id' => 'shelves#add_ingredient', as: :add_ingredient


end
