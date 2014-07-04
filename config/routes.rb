Rails.application.routes.draw do
  resources :directives

  root to: 'visitors#index'
end
