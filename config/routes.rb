# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    resources :messages, only: [] do
      collection do
        get 'random', to: 'messages#random_greeting'
      end
    end
  end
  # config/routes.rb

  root 'root#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
