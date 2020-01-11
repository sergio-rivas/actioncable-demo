Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'attack/:id', to: 'pages#attack', as: 'attack'
  mount ActionCable.server => '/cable'
end
