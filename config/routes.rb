Rails.application.routes.draw do
  resources :creatures
  get 'creatures' => 'creatures#index'
  post 'creatures' => 'creatures#create'
  delete 'creatures/:id' => 'creatures#destroy'

end
