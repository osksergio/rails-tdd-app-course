Rails.application.routes.draw do
  resources :customers
  root 'welcome#index'
end
