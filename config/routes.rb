Cobit::Application.routes.draw do

  resources :activities
  resources :procedures
  resources :domains
  root :to => 'welcome#index'
end