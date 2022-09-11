Rails.application.routes.draw do
  resources :sightings
  resources :creatures
  get 'creatures' => 'creatures#index'
  post 'creatures' => 'creatures#create'
  delete 'creatures/:id' => 'creatures#destroy'
  post 'sightings/' => 'sightings#create'
  patch 'sightings/:id' => 'sightings#update'
  delete 'sightings/:id' => 'sightings#destroy'
 


end
