Rails.application.routes.draw do
  resources :accounts
  resources :simple_file_uploads
  root 'accounts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
