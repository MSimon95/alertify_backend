Rails.application.routes.draw do
  resources :group_alerts
  resources :alerts
  resources :groups
  resources :users

  # get '/alerts/:id', to: 'alerts#show'
  # patch '/alerts/:id', to: 'alerts#update'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
