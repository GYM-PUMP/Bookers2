Rails.application.routes.draw do
  root :to => 'users#top'
  get "home/about", to: "users#about"
  get "/users/:id/edit",to:  "users#edit"
  devise_for :users
  resources :users, only:[:index,:show,:edit,:update]
  resources :books, only:[:index,:show,:edit,:update,:create,:destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
