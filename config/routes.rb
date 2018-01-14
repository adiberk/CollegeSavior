Rails.application.routes.draw do
  resources :moving_services
  root 'static_pages#home'
  get 'moving_service', to: 'moving_services#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
