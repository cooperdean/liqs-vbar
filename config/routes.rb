Rails.application.routes.draw do



root "drinks#index"

resources :drinks
resources :shelves
resources :ingredients, only: [:new, :create]

get '/shelves/:shelf_id/add_ingredient/:id' => 'shelves#add_ingredient', as: :add_ingredient
get '/shelves/:shelf_id/remove_ingredient/:id' => 'shelves#remove_ingredient', as: :remove_ingredient

get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
post '/logout' => 'sessions#destroy'

get '/signup' => 'users#new'
post '/users' => 'users#create'

end
