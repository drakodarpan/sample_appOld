Rails.application.routes.draw do
  root :to => 'static_pages#home'
  get 'help' => 'static_pages#help'
  get 'contact' => 'static_pages#contact'
  get 'about' => 'static_pages#about'
  get 'signup' => 'users#new'
end
