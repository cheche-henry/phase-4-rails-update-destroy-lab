Rails.application.routes.draw do
  # Other routes...

  resources :plants, only: [:index, :show, :create, :update, :destroy]
  # Add the above line if you haven't already defined the resource route for plants.

  patch '/plants/:id', to: 'plants#update' # Route for updating a specific plant
  delete '/plants/:id', to: 'plants#destroy' # Route for deleting a specific plant
end
