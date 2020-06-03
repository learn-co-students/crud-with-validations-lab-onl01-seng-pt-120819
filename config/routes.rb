Rails.application.routes.draw do
  resources :songs
  root to: 'songs#index'
  post '/songs/:id', to: 'songs#update'
  delete '/songs/:id', to: 'songs#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
