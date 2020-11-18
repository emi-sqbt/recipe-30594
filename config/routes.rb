Rails.application.routes.draw do
  root to: "recipes#index"
  resources :recipes
  get 'recipes/search'
end
