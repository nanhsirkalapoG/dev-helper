Rails.application.routes.draw do
  resources :version_controls
  resources :ides
  resources :tools
  resources :tool_types
  resources :programming_language_types
  resources :programming_languages
  resources :users

  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
