Rails.application.routes.draw do
  root to: "recipes#index"
  resources :recipes do
    collection do
      get 'search'
    end
  end
end
