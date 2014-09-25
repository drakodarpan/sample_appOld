Rails.application.routes.draw do
  get 'sessions/new'

  root :to         => 'static_pages#home'
  get 'help'       => 'static_pages#help'
  get 'contact'    => 'static_pages#contact'
  get 'about'      => 'static_pages#about'
  get 'signup'     => 'users#new'
  get 'login'      => 'sessions#new'
  delete 'logout'  => 'sessions#destroy'
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
end
