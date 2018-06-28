Rails.application.routes.draw do
  
  namespace :api do
    resources :recipes do
      resources :ingredients
    end
  end

  get 'api/recipes/information/:name', to: 'api/recipes#information'
  get 'api/recipes/:name/ingredients', to: 'api/ingredients#index'
end
