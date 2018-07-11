Rails.application.routes.draw do
  namespace :api do
    resources :recipes do
      resources :ingredients
    end

    get 'recipes/information', to: 'recipes#information'
  end
end
