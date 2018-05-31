Rails.application.routes.draw do
  namespace :api do
    resources :recipes do
      resources :ingredients
      end
    end
  end
