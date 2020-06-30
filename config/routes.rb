Rails.application.routes.draw do
  root 'home#index'
  resources :articles do
    resources :likes
  end

  devise_for :users, :controllers => {
    sessions: 'users/sessions'
  }

  devise_scope :user do
    get "user/:id", :to => "users/registrations#detail"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end

  resources :users, only: [:show]
end
